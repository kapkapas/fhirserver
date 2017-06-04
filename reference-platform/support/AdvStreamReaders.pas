unit AdvStreamReaders;

{
Copyright (c) 2001-2013, Kestral Computing Pty Ltd (http://www.kestral.com.au)
All rights reserved.

Redistribution and use in source and binary forms, with or without modification, 
are permitted provided that the following conditions are met:

 * Redistributions of source code must retain the above copyright notice, this 
   list of conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice, 
   this list of conditions and the following disclaimer in the documentation 
   and/or other materials provided with the distribution.
 * Neither the name of HL7 nor the names of its contributors may be used to 
   endorse or promote products derived from this software without specific 
   prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND 
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED 
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. 
IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, 
INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT 
NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR 
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, 
WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
POSSIBILITY OF SUCH DAMAGE.
}

interface

uses
  Sysutils, RTLConsts, AdvObjects, AdvStreams, MathSupport;

Type
  TAdvTextReader = class (TAdvObject)
  public
    procedure Close; virtual; abstract;
    function Peek: Integer; virtual; abstract;
    function Read: Integer; overload; virtual; abstract;
    function Read(const Buffer: TCharArray; Index, Count: Integer): Integer; overload; virtual; abstract;
    function ReadBlock(const Buffer: TCharArray; Index, Count: Integer): Integer; virtual; abstract;
    function ReadLine: string; virtual; abstract;
    function ReadToEnd: string; virtual; abstract;

    Function ReadString(Var s : String; iLength : Integer) : Integer;
  end;

  TAdvStreamReader = class(TAdvTextReader)
  private
    FBufferedData: TStringBuilder;
    FBufferOffset : Integer;
    FBufferSize: Integer;
    FDetectBOM: Boolean;
    FNoDataInStream: Boolean;
    FSkipPreamble: Boolean;
    FStream: TAdvStream;
    FCursor : Integer;
    FEncoding: TEncoding;
    FCheckEncoding : boolean;
    function DetectBOM(var Encoding: TEncoding; Buffer: TBytes): Integer;
    function SkipPreamble(Encoding: TEncoding; Buffer: TBytes): Integer;
    procedure FillBuffer(var Encoding: TEncoding);
    function GetEndOfStream: Boolean;
  protected
    Property Stream : TAdvStream read FStream;
  public
    constructor Create(aStream: TAdvStream); overload;
    constructor Create(aStream: TAdvStream; DetectBOM: Boolean); overload;
    constructor Create(const Filename: string); overload;
    constructor Create(const Filename: string; DetectBOM: Boolean); overload;
    constructor Create(aStream: TAdvStream; Encoding: TEncoding; DetectBOM: Boolean = False; BufferSize: Integer = 1024); overload;
    constructor Create(const Filename: string; Encoding: TEncoding; DetectBOM: Boolean = False; BufferSize: Integer = 1024); overload;
    destructor Destroy; override;
    procedure Close; override;
    procedure DiscardBufferedData;
//    procedure OwnStream; inline;
    function Peek: Integer; override;
    function Read: Integer; overload; override;
    function Read(const Buffer: TCharArray; Index, Count: Integer): Integer; overload; override;
    function ReadBlock(const Buffer: TCharArray; Index, Count: Integer): Integer; override;
    function ReadLine: string; override;
    function ReadToEnd: string; override;
    property BaseStream: TAdvStream read FStream;
    property CurrentEncoding: TEncoding read FEncoding;
    property EndOfStream: Boolean read GetEndOfStream;
  end;

implementation

Uses
  AdvFiles;

{ TAdvStreamReader }

constructor TAdvStreamReader.Create(aStream: TAdvStream);
begin
  Create(aStream, TEncoding.UTF8, True);
end;

constructor TAdvStreamReader.Create(aStream: TAdvStream; DetectBOM: Boolean);
begin
  Create(aStream, TEncoding.UTF8, DetectBOM);
end;

constructor TAdvStreamReader.Create(aStream: TAdvStream; Encoding: TEncoding; DetectBOM: Boolean = False; BufferSize: Integer = 1024);
begin
  Create;

  if not Assigned(aStream) then
    raise EArgumentException.CreateResFmt(@SParamIsNil, ['Stream']); // DO NOT LOCALIZE
  if not Assigned(Encoding) then
    raise EArgumentException.CreateResFmt(@SParamIsNil, ['Encoding']); // DO NOT LOCALIZE

  FBufferedData := TStringBuilder.Create;
  FBufferOffset := 0;
  FEncoding := Encoding;
  FBufferSize := BufferSize;
  if FBufferSize < 128 then
    FBufferSize := 128;
  FNoDataInStream := False;
  FStream := aStream;
  FDetectBOM := DetectBOM;
  FSkipPreamble := not FDetectBOM;
  FCursor := 0;
end;

constructor TAdvStreamReader.Create(const Filename: string; Encoding: TEncoding; DetectBOM: Boolean = False; BufferSize: Integer = 1024);
var
  oFile : TAdvFile;
begin
  oFile := TAdvFile.Create;
  Try
    oFile.OpenRead;
    Create(oFile.Link, Encoding, DetectBOM, BufferSize);
  Finally
    oFile.Free;
  End;
end;

constructor TAdvStreamReader.Create(const Filename: string; DetectBOM: Boolean);
begin
  Create(Filename, TEncoding.UTF8, DetectBOM);
end;

constructor TAdvStreamReader.Create(const Filename: string);
begin
  Create(Filename, TEncoding.UTF8, true);
end;

destructor TAdvStreamReader.Destroy;
begin
  Close;
  inherited;
end;

procedure TAdvStreamReader.Close;
begin
  FStream.Free;
  FStream := nil;

  if FBufferedData <> nil then
  begin
    FBufferedData.Free;
    FBufferedData := nil;
    FBufferOffset := 0;
  end;
end;

procedure TAdvStreamReader.DiscardBufferedData;
begin
  if FBufferedData <> nil then
  begin
    FBufferedData.Clear;
    FBufferOffset := 0;
    FNoDataInStream := False;
  end;
end;

function TAdvStreamReader.DetectBOM(var Encoding: TEncoding; Buffer: TBytes): Integer;
var
  LEncoding: TEncoding;
begin
  // try to automatically detect the buffer encoding
  LEncoding := nil;
  Result := TEncoding.GetBufferEncoding(Buffer, LEncoding);

  // detected encoding points to Default and param Encoding requests some other
  // type of Encoding; set the Encoding param to UTF8 as it can also read ANSI (Default)
  if (LEncoding = TEncoding.Default) and (Encoding <> TEncoding.Default) then
    Encoding := TEncoding.UTF8
  else
    Encoding := LEncoding;

  FDetectBOM := False;
end;

procedure TAdvStreamReader.FillBuffer(var Encoding: TEncoding);
const
  BufferPadding = 4;
var
  LString: string;
  LBuffer: TBytes;
  BytesRead: Integer;
  StartIndex: Integer;
  ByteBufLen: Integer;
  ok : boolean;
begin
  SetLength(LBuffer, FBufferSize + BufferPadding);

  // Read data from stream
  BytesRead := IntegerMin(FBufferSize, FStream.Readable);
  FStream.Read(LBuffer[0], BytesRead);
  inc(FCursor, BytesRead);
  FNoDataInStream := FStream.Readable = 0;

  // Check for byte order mark and calc start index for character data
  if FDetectBOM then
    StartIndex := DetectBOM(Encoding, LBuffer)
  else if FSkipPreamble then
    StartIndex := SkipPreamble(Encoding, LBuffer)
  else
    StartIndex := 0;

  // Convert to string and calc byte count for the string
  ByteBufLen := BytesRead - StartIndex;
  ok := false;
  repeat
    try
      if FCheckEncoding and (FEncoding.GetCharCount(LBuffer, StartIndex, ByteBufLen) = 0) then
      begin
        SetLength(LBuffer, Length(LBuffer) + BufferPadding);
        FStream.Read(LBuffer[ByteBufLen], 1);
        inc(ByteBufLen);
      end;

      LString := FEncoding.GetString(LBuffer, StartIndex, ByteBufLen);
      ok := true;
    except
      FCheckEncoding := true;
    end;
  until ok;

  // Add string to character data buffer
  FBufferedData.Append(LString);
end;

function TAdvStreamReader.GetEndOfStream: Boolean;
begin
  if not FNoDataInStream and (FBufferedData <> nil) and (FBufferedData.Length < 1+FBufferOffset) then
    FillBuffer(FEncoding);
  Result := FNoDataInStream and ((FBufferedData = nil) or (FBufferedData.Length = FBufferOffset));
end;

function TAdvStreamReader.Peek: Integer;
begin
  Result := -1;
  if (FBufferedData <> nil) and (not EndOfStream) then
  begin
    if FBufferedData.Length < 1 + FBufferOffset  then
      FillBuffer(FEncoding);
    Result := Integer(FBufferedData.Chars[FBufferOffset]);
  end;
end;

function TAdvStreamReader.Read(const Buffer: TCharArray; Index, Count: Integer): Integer;
begin
  Result := -1;
  if (FBufferedData <> nil) and (not EndOfStream) then
  begin
    while (FBufferedData.Length < Count + FBufferOffset) and (not EndOfStream) and (not FNoDataInStream) do
      FillBuffer(FEncoding);

    if FBufferedData.Length > Count + FBufferOffset then
      Result := Count
    else
      Result := FBufferedData.Length - FBufferOffset;

    FBufferedData.CopyTo(FBufferOffset, Buffer, Index, Result);
    inc(FBufferOffset, result);
  end;
end;

function TAdvStreamReader.ReadBlock(const Buffer: TCharArray; Index, Count: Integer): Integer;
begin
  Result := Read(Buffer, Index, Count);
end;

function TAdvStreamReader.Read: Integer;
begin
  Result := -1;
  if (FBufferedData <> nil) and (not EndOfStream) then
  begin
    if FBufferedData.Length < 1 + FBufferOffset then
      FillBuffer(FEncoding);
    Result := Integer(FBufferedData.Chars[FBufferOffset]);
    inc(FBufferOffset);
  end;
end;

function TAdvStreamReader.ReadLine: string;
var
  NewLineIndex: Integer;
  PostNewLineIndex: Integer;
begin
  raise Exception.Create('This needs debugging for FBufferOffset');
  Result := '';
  if FBufferedData = nil then
    Exit;
  NewLineIndex := 0;
  PostNewLineIndex := 0;

  while True do
  begin
    if (NewLineIndex + 2 > FBufferedData.Length + FBufferOffset) and (not FNoDataInStream) then
      FillBuffer(FEncoding);

    if NewLineIndex >= FBufferedData.Length + FBufferOffset then
    begin
      if FNoDataInStream then
      begin
        PostNewLineIndex := NewLineIndex;
        Break;
      end
      else
      begin
        FillBuffer(FEncoding);
        if FBufferedData.Length = FBufferOffset then
          Break;
      end;
    end;
    if FBufferedData[NewLineIndex + FBufferOffset] = #10 then
    begin
      PostNewLineIndex := NewLineIndex + 1;
      Break;
    end
    else
    if (FBufferedData[NewLineIndex + FBufferOffset] = #13) and (NewLineIndex + 1 < FBufferedData.Length + FBufferOffset) and (FBufferedData[NewLineIndex + 1] = #10) then
    begin
      PostNewLineIndex := NewLineIndex + 2;
      Break;
    end
    else
    if FBufferedData[NewLineIndex + FBufferOffset] = #13 then
    begin
      PostNewLineIndex := NewLineIndex + 1;
      Break;
    end;

    Inc(NewLineIndex);
  end;

  Result := FBufferedData.ToString.Substring(FBufferOffset);
  SetLength(Result, NewLineIndex);
  inc(FBufferOffset, PostNewLineIndex);
end;

function TAdvStreamReader.ReadToEnd: string;
begin
  Result := '';
  if (FBufferedData <> nil) and (not EndOfStream) then
  begin
    repeat
      FillBuffer(FEncoding);
    until FNoDataInStream;
    Result := FBufferedData.ToString.Substring(FBufferOffset);
    FBufferedData.Clear;
    FBufferOffset := 0;
  end;
end;

function TAdvStreamReader.SkipPreamble(Encoding: TEncoding; Buffer: TBytes): Integer;
var
  I: Integer;
  LPreamble: TBytes;
  BOMPresent: Boolean;
begin
  Result := 0;
  LPreamble := Encoding.GetPreamble;
  if (Length(LPreamble) > 0) then
  begin
    if Length(Buffer) >= Length(LPreamble) then
    begin
      BOMPresent := True;
      for I := 0 to Length(LPreamble) - 1 do
        if LPreamble[I] <> Buffer[I] then
        begin
          BOMPresent := False;
          Break;
        end;
      if BOMPresent then
        Result := Length(LPreamble);
    end;
  end;
  FSkipPreamble := False;
end;


{ TAdvTextReader }

function TAdvTextReader.ReadString(var s: String; iLength: Integer): Integer;
var
  oBuffer : TCharArray;
begin
  SetLength(oBuffer, iLength);
  result := ReadBlock(oBuffer, 0, iLength);
  SetString(s, pchar(oBuffer), result);
end;

end.
