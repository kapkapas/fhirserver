unit FHIR.Tools.Client;

{
Copyright (c) 2011+, HL7 and Health Intersections Pty Ltd (http://www.healthintersections.com.au)
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

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 'AS IS' AND
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

{$IFNDEF FHIR_DSTU1}
This is the dstu1 version of the FHIR code
{$ENDIF}

interface

uses
  SysUtils, Classes,
  FHIR.Support.Strings, GuidSupport,
  IdHTTP, IdSSLOpenSSL, IdSoapMime,
  FHIR.Support.Objects, AdvBuffers, FHIR.Support.WinInet, AdvStringMatches,
  FHIRAtomFeed, FHIR.Tools.Parser, FHIR.Tools.Resources, FHIR.Tools.Utilities,
  FHIR.Tools.Constants, FHIR.Tools.Session, FHIR.Base.Parser, FHIR.Base.Objects;

Type
  EFHIRClientException = class (Exception)
  private
    FIssue : TFhirOperationOutcome;
  public
    constructor Create(message : String; issue : TFhirOperationOutcome);
    destructor Destroy; override;

    property issue : TFhirOperationOutcome read FIssue;
  end;

  TFhirHTTPClientHTTPVerb = (get, post, put, delete);

  // this is meant ot be used once, and then disposed of
  TFhirHTTPClient = class (TFslObject)
  private
    FUrl : String;
    FJson : Boolean;
    client : TIdHTTP;
    ssl : TIdSSLIOHandlerSocketOpenSSL;
    function serialise(resource : TFhirResource):TStream; overload;
    function serialise(batch : TFhirAtomFeed):TStream; overload;
    function makeUrl(tail : String) : String;
    function makeUrlPath(tail : String) : String;
    function CreateParser(stream : TStream) : TFHIRParser;
    function exchange(url : String; verb : TFhirHTTPClientHTTPVerb; source : TStream; ct : String = '') : TStream;
    function fetchFeed(url : String; verb : TFhirHTTPClientHTTPVerb; source : TStream; ct : String = '') : TFHIRAtomFeed;
    function fetchResource(url : String; verb : TFhirHTTPClientHTTPVerb; source : TStream) : TFhirResource;
    procedure parseCategories(categories : TFHIRAtomCategoryList);
    procedure encodeTags(tags : TFHIRAtomCategoryList);
    function makeMultipart(stream: TStream; streamName: string; params: TFslStringMatch; var mp : TStream) : String;
  public
    constructor Create(url : String; json : boolean); overload;
    destructor Destroy; override;
    property url : String read FUrl;


    procedure doRequest(request : TFHIRRequest; response : TFHIRResponse);
    procedure cancelOperation;

    function conformance : TFhirConformance;
    function transaction(bundle : TFHIRAtomFeed) : TFHIRAtomFeed;
    function createResource(resource : TFhirResource; tags : TFHIRAtomCategoryList) : TFHIRAtomEntry;
    function readResource(atype : TFhirResourceType; id : String; tags : TFHIRAtomCategoryList = nil) : TFHIRAtomEntry;
    function updateResource(id : String; resource : TFhirResource; tags : TFHIRAtomCategoryList) : TFHIRAtomEntry; overload;
    function updateResource(id, ver : String; resource : TFhirResource; tags : TFHIRAtomCategoryList) : TFHIRAtomEntry; overload; // version specific update - this is encouraged where possible
    procedure deleteResource(atype : TFhirResourceType; id : String; tags : TFHIRAtomCategoryList);
    function search(atype : TFhirResourceType; allRecords : boolean; params : TFslStringMatch) : TFHIRAtomFeed;
    function searchPost(atype : TFhirResourceType; allRecords : boolean; params : TFslStringMatch; resource : TFhirResource) : TFHIRAtomFeed;
  end;

implementation

{ TFhirHTTPClient }

function TFhirHTTPClient.conformance: TFhirConformance;
begin
  result := FetchResource(MakeUrl('metadata'), get, nil) as TFhirConformance;
end;

constructor TFhirHTTPClient.create(url: String; json : boolean);
begin
  Create;
  FUrl := URL;
  FJson := json;
  client := TIdHTTP.create(nil);
  ssl := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  client.IOHandler := ssl;
  ssl.SSLOptions.Mode := sslmClient;
end;

destructor TFhirHTTPClient.destroy;
begin
  ssl.Free;
  client.free;
  inherited;
end;



function TFhirHTTPClient.transaction(bundle : TFHIRAtomFeed) : TFHIRAtomFeed;
Var
  src : TStream;
begin
  src := serialise(bundle);
  try
    result := fetchFeed(makeUrl(''), post, src);
  finally
    src.free;
  end;
end;


function TFhirHTTPClient.createResource(resource: TFhirResource; tags : TFHIRAtomCategoryList): TFHIRAtomEntry;
Var
  src : TStream;
begin
  encodeTags(tags);
  src := serialise(resource);
  try
    result := TFHIRAtomEntry.create;
    try
      result.resource := fetchResource(MakeUrl(CODES_TFhirResourceType[resource.resourceType]), post, src);
      result.id := copy(client.response.location, 1, pos('/history', client.response.location)-1);
      result.links.AddValue('self', client.response.location);
      parseCategories(result.categories);
      result.link;
    finally
      result.free;
    end;
  finally
    src.free;
  end;
end;

function TFhirHTTPClient.updateResource(id : String; resource : TFhirResource; tags : TFHIRAtomCategoryList) : TFHIRAtomEntry;
begin
  result := updateResource(id, '', resource, tags);
end;


function TFhirHTTPClient.updateResource(id, ver : String; resource : TFhirResource; tags : TFHIRAtomCategoryList) : TFHIRAtomEntry;
Var
  src : TStream;
begin
  if ver <> '' then
    client.Request.RawHeaders.Values['Content-Location'] := MakeUrlPath(CODES_TFhirResourceType[resource.resourceType]+'/'+id+'/history/'+ver);
  encodeTags(tags);

  src := serialise(resource);
  try
    result := TFHIRAtomEntry.create;
    try
      result.resource := fetchResource(MakeUrl(CODES_TFhirResourceType[resource.resourceType]+'/'+id), put, src);
      result.id := copy(client.response.location, 1, pos('/history', client.response.location)-1);
      result.links.AddValue('self', client.response.location);
      parseCategories(result.categories);
      result.link;
    finally
      result.free;
    end;
  finally
    src.free;
  end;
end;

procedure TFhirHTTPClient.deleteResource(atype : TFhirResourceType; id : String; tags : TFHIRAtomCategoryList);
begin
  encodeTags(tags);
  exchange(MakeUrl(CODES_TFhirResourceType[aType]+'/'+id), delete, nil).free;
end;

//-- Worker Routines -----------------------------------------------------------


function TFhirHTTPClient.serialise(resource: TFhirResource): TStream;
var
  ok : boolean;
  comp : TFHIRComposer;
begin
  ok := false;
  result := TBytesStream.create;
  try
    if Fjson then
      comp := TFHIRJsonComposer.create('en')
    else
      comp := TFHIRXmlComposer.create('en');
    try
      comp.Compose(result, '', '', '', resource, false, nil);
    finally
      comp.free;
    end;
    ok := true;
  finally
    if not ok then
      result.free;
  end;
end;

function encodeParams(params : TFslStringMatch) : String;
var
  i : integer;
begin
  result := '';
  for i := 0 to params.Count - 1 do
    result := result + params.KeyByIndex[i]+'='+EncodeMIME(params.ValueByIndex[i])+'&';
end;

function TFhirHTTPClient.search(atype: TFhirResourceType; allRecords: boolean; params: TFslStringMatch): TFHIRAtomFeed;
var
  s : String;
  feed : TFHIRAtomFeed;
begin
//    client.Request.RawHeaders.Values['Content-Location'] := MakeUrlPath(CODES_TFhirResourceType[resource.resourceType]+'/'+id+'/history/'+ver);
  result := fetchFeed(makeUrl(CODES_TFhirResourceType[aType])+'?'+encodeParams(params), get, nil);
  try
    s := result.links['next'];
    while AllRecords and (s <> '') do
    begin
      feed := fetchFeed(s, get, nil);
      try
        result.entries.AddAll(feed.entries);
        s := feed.links['next'];
      finally
        feed.free;
      end;
    end;
    if allRecords then
      result.Links.Clear;
    result.Link;
  finally
    result.Free;
  end;

end;

function TFhirHTTPClient.searchPost(atype: TFhirResourceType; allRecords: boolean; params: TFslStringMatch; resource: TFhirResource): TFHIRAtomFeed;
Var
  src, frm : TStream;
  ct : String;
begin
  src := serialise(resource);
  try
    src.Position := 0;
    ct := makeMultipart(src, 'src', params, frm);
    try
      result := fetchFeed(makeUrl(CODES_TFhirResourceType[aType])+'/_search', post, frm, ct);
      try
        result.id := copy(client.response.location, 1, pos('/history', client.response.location)-1);
        result.links.AddValue('self', client.response.location);
        parseCategories(result.categories);
        result.link;
      finally
        result.free;
      end;
    finally
      frm.Free;
    end;
  finally
    src.free;
  end;

end;

function TFhirHTTPClient.serialise(batch: TFhirAtomFeed): TStream;
var
  ok : boolean;
  xml : TFHIRXmlComposer;
begin
  ok := false;
  result := TStringStream.create('');
  try
    xml := TFHIRXmlComposer.create('en');
    try
      xml.Compose(result, batch, false);
    finally
      xml.free;
    end;
    ok := true;
  finally
    if not ok then
      result.free;
  end;
end;

function TFhirHTTPClient.exchange(url : String; verb : TFhirHTTPClientHTTPVerb; source : TStream; ct : String = '') : TStream;
var
  comp : TFHIRParser;
  ok : boolean;
begin
  if FJson then
  begin
    client.Request.ContentType := 'application/json';
    client.Request.Accept := 'application/json';
  end
  else
  begin
    client.Request.ContentType := 'text/xml';
    client.Request.Accept := 'text/xml';
  end;
  if ct <> '' then
    client.Request.ContentType := ct;

  ok := false;
  result := TMemoryStream.create;
  Try
    Try
      case verb of
        get : client.Get(url, result);
        post : client.Post(url, source, result);
        put : client.Put(url, source, result);
        delete : raise Exception.Create('to do'); // client.Delete(url);
      end;

      if (client.ResponseCode < 200) or (client.ResponseCode >= 300) Then
        raise exception.create('unexpected condition');
      ok := true;
      if (result <> nil) then
         result.Position := 0;
    except
      on E:EIdHTTPProtocolException do
      begin
        if StringFind(e.ErrorMessage, 'OperationOutcome') > 0 then
        begin
          if FJson then
            comp := TFHIRJsonParser.create('en')
          else
            comp := TFHIRXmlParser.create('en');
          try
            comp.source := TStringStream.create(e.ErrorMessage);
            comp.Parse;
            if (comp.resource <> nil) and (comp.resource.ResourceType = frtOperationOutcome) then
              Raise EFHIRClientException.create(FhirHtmlToText(comp.resource.text.div_), comp.resource.link as TFhirOperationOutcome)
            else
              raise exception.Create(e.ErrorMessage)
          finally
            comp.source.free;
            comp.Free;
          end;
        end
        else
          raise exception.Create(e.ErrorMessage)
      end;
      on e : exception do
      begin
        raise exception.Create(e.Message)
      end;
    end;
  finally
    if not ok then
      result.free;
  end;
end;


procedure TFhirHTTPClient.doRequest(request: TFHIRRequest; response: TFHIRResponse);
var
  entry : TFHIRAtomEntry;
begin
  if FUrl = '' then
    FUrl := request.baseUrl;

  try
    case request.CommandType of
      fcmdUnknown : raise Exception.Create('to do');
      fcmdMailbox : raise Exception.Create('to do');
      fcmdRead : raise Exception.Create('to do');
      fcmdVersionRead : raise Exception.Create('to do');
      fcmdUpdate :
        begin
        entry := updateResource(request.id, request.Resource, request.categories);
        try
          response.HTTPCode := client.ResponseCode;
          response.Resource := entry.resource.link;
          response.ContentType := client.Response.ContentType;
          response.lastModifiedDate := client.Response.LastModified;
          response.Location := client.Response.Location;
          response.ContentLocation := client.Response.RawHeaders.Values['Content-Location'];
          response.categories.Assign(entry.categories);
        finally
          entry.free;
        end;
        end;
      fcmdDelete : raise Exception.Create('to do');
      fcmdHistoryInstance : raise Exception.Create('to do');
      fcmdCreate : raise Exception.Create('to do');
      fcmdSearch : raise Exception.Create('to do');
      fcmdHistoryType : raise Exception.Create('to do');
      fcmdValidate : raise Exception.Create('to do');
      fcmdConformanceStmt : raise Exception.Create('to do');
      fcmdTransaction : raise Exception.Create('to do');
      fcmdHistorySystem : raise Exception.Create('to do');
      fcmdUpload : raise Exception.Create('to do');
      fcmdGetTags : raise Exception.Create('to do');
      fcmdUpdateTags : raise Exception.Create('to do');
      fcmdDeleteTags : raise Exception.Create('to do');
    end;
  except
    on e:EFHIRClientException do
    begin
      response.HTTPCode := client.ResponseCode;
      response.message := e.Message;
      response.resource := e.Issue.link;
    end;
    on e:exception do
    begin
      response.HTTPCode := client.ResponseCode;
      response.Body := e.Message;
    end;
  end;
end;

function TFhirHTTPClient.fetchFeed(url: String; verb: TFhirHTTPClientHTTPVerb; source: TStream; ct : String = ''): TFHIRAtomFeed;
var
  ret : TStream;
  p : TFHIRParser;
begin
  ret := exchange(url, verb, source, ct);
  try
    p := CreateParser(ret);
    try
      p.parse;
      if (p.feed = nil) then
        raise Exception.create('No response bundle');
      result := p.feed.link;
    finally
      p.free;
    end;
  finally
    ret.free;
  end;
end;

function TFhirHTTPClient.fetchResource(url: String; verb: TFhirHTTPClientHTTPVerb; source: TStream): TFhirResource;
var
  ret : TStream;
  p : TFHIRParser;
begin
  ret := exchange(url, verb, source);
  try
    if ret.Size = 0 then
      result := nil
    else
    begin
      p := CreateParser(ret);
      try
        p.parse;
        if (p.resource = nil) then
          raise Exception.create('No response bundle');
        result := p.resource.link;
      finally
        p.free;
      end;
    end;
  finally
    ret.free;
  end;
end;

function TFhirHTTPClient.makeMultipart(stream: TStream; streamName: string; params: TFslStringMatch; var mp : TStream) : String;
var
  m : TIdSoapMimeMessage;
  p : TIdSoapMimePart;
  i : integer;
begin
  m := TIdSoapMimeMessage.create;
  try
    p := m.Parts.AddPart(NewGuidURN);
    p.ContentDisposition := 'form-data; name="'+streamName+'"';
    p.Content := Stream;
    p.OwnsContent := false;
    for i := 0 to params.Count - 1 do
    begin
      p := m.Parts.AddPart(NewGuidURN);
      p.ContentDisposition := 'form-data; name="'+params.Keys[i]+'"';
      p.Content := TStringStream.Create(params.Matches[params.Keys[i]], TEncoding.UTF8);
      p.OwnsContent := true;
    end;
    m.Boundary := '---'+AnsiString(copy(GUIDToString(CreateGUID), 2, 36));
    m.start := m.parts.PartByIndex[0].Id;
    result := 'multipart/form-data; boundary='+String(m.Boundary);
    mp := TMemoryStream.Create;
    m.WriteToStream(mp, false);
  finally
    m.free;
  end;
end;

function TFhirHTTPClient.makeUrl(tail: String): String;
begin
  result := FURL;
  if not result.EndsWith('/') then
    result := result + '/';
  result := result + tail;
end;

function TFhirHTTPClient.makeUrlPath(tail: String): String;
var
  s : String;
begin
  StringSplit(FURL, '://', s, result);
  StringSplit(result, '://', s, result);
  if not result.EndsWith('/') then
    result := result + '/';
  result := result + tail;
end;

procedure StringSplitTrim(Const sValue, sDelimiter : String; Var sLeft, sRight: String);
begin
  StringSplit(sValue, sDelimiter, sLeft, sRight);
  sLeft := trim(sLeft);
  sRight := trim(sRight);
end;

procedure TFhirHTTPClient.parseCategories(categories: TFHIRAtomCategoryList);
var
  s, l, n, v : String;
  url, scheme, lbl : String;
begin
  categories.Clear;
  if client.Response.RawHeaders.IndexOfName('Category') > -1 then
  begin
    StringSplitTrim(client.Response.RawHeaders.Values['Category'], ':', l, s);
    while (s <> '') do
    begin
      StringSplitTrim(s, '=', url, s);
      scheme := '';
      lbl := '';
      while (s <> '') and (s[1] <> ',') do
      begin
        StringSplitTrim(s, '=', l, s);
        StringSplitTrim(copy(s, 2, $FFFF), s[1], l, s);
        if n = 'scheme' then
          scheme := v
        else if n = 'label' then
          lbl := v;
      end;
      categories.AddValue(scheme, url, lbl);
      StringSplitTrim(s, ',',  l, s);
    end;
  end;
end;


function TFhirHTTPClient.readResource(atype: TFhirResourceType; id: String; tags: TFHIRAtomCategoryList): TFHIRAtomEntry;
begin
  encodeTags(tags);

  result := TFHIRAtomEntry.create;
  try
    result.resource := fetchResource(MakeUrl(CODES_TFhirResourceType[AType]+'/'+id), get, nil);
    result.id := copy(client.response.location, 1, pos('/history', client.response.location)-1);
    result.links.AddValue('self', client.response.location);
    parseCategories(result.categories);
    result.link;
  finally
    result.free;
  end;
end;

function TFhirHTTPClient.CreateParser(stream: TStream): TFHIRParser;
begin
  if FJSon then
    result := TFHIRJsonParser.create('en')
  else
    result := TFHIRXmlParser.create('en');
  result.source := stream;
end;

procedure TFhirHTTPClient.cancelOperation;
begin
  client.Disconnect;
end;

procedure TFhirHTTPClient.encodeTags(tags: TFHIRAtomCategoryList);
begin
  if (tags <> nil) and (tags.Count > 0) then
    client.Request.RawHeaders.Values['Category'] := tags.AsHeader;
end;

{ EFHIRClientException }

constructor EFHIRClientException.create(message: String; issue: TFhirOperationOutcome);
begin
  inherited create(message);
  FIssue := issue;
end;

destructor EFHIRClientException.destroy;
begin
  FIssue.Free;
  inherited;
end;

end.

