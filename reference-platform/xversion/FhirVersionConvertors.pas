unit FhirVersionConvertors;

interface

uses
  SysUtils, Classes,
  FHIRBase, FHIRParserBase, FHIRLang,
  {FHIRParser2, }FHIRResources3, FHIRParser3, FHIRResources4, FHIRParser4,
  VersionConvertor_30_40;

type
  TFhirVersionConvertors = class
  private
    class function parse(s : TStream; fmt : TFHIRFormat; version : TFHIRVersion; lang : String) : TFHIRResourceV;
    class procedure compose(s : TStream; fmt : TFHIRFormat; style : TFHIROutputStyle; version : TFHIRVersion; lang : String; resource : TFHIRResourceV);
  public
    class function convertResource(resource : TFHIRResourceV; lang : String; vSource, vDest : TFHIRVersion) : TFHIRResourceV; overload;
    class function convertResource(resource : TBytes; fmt : TFHIRFormat; style : TFHIROutputStyle; lang : String; vSource, vDest : TFHIRVersion) : TBytes; overload;
    class procedure convertResource(resource : TStream; fmt : TFHIRFormat; style : TFHIROutputStyle; lang : String; vSource, vDest : TFHIRVersion; dest : TStream); overload;
  end;

implementation

{ TFhirVersionConvertors }

class function TFhirVersionConvertors.parse(s: TStream; fmt : TFHIRFormat; version: TFHIRVersion; lang : String): TFHIRResourceV;
var
  p : TFHIRParser;
begin
  case version of
 //   fhirVersionRelease2: c := TFHIR;
    fhirVersionRelease3: p := TFHIRParsers3.parser(nil, fmt, lang);
    fhirVersionRelease4: p := TFHIRParsers4.parser(nil, fmt, lang);
  else
    raise EFHIRException.CreateLang('Unsupported Version %s', lang, [CODES_TFHIRVersion[version]] );
  end;
  try
    result := p.parseResource(s);
  finally
    p.Free;
  end;
end;

class procedure TFhirVersionConvertors.compose(s: TStream; fmt : TFHIRFormat; style : TFHIROutputStyle; version: TFHIRVersion; lang : String; resource: TFHIRResourceV);
var
  c : TFHIRComposer;
begin
  case version of
 //   fhirVersionRelease2: c := TFHIR;
    fhirVersionRelease3: c := TFHIRParsers3.composer(nil, fmt, lang, style);
    fhirVersionRelease4: c := TFHIRParsers4.composer(nil, fmt, lang, style);
  else
    raise EFHIRException.CreateLang('Unsupported Version %s', lang, [CODES_TFHIRVersion[version]] );
  end;
  try
    c.Compose(s, resource);
  finally
    c.Free;
  end;
end;

class function TFhirVersionConvertors.convertResource(resource: TBytes; fmt: TFHIRFormat; style : TFHIROutputStyle; lang : String; vSource, vDest: TFHIRVersion): TBytes;
var
  s1, s2 : TBytesStream;
  r1, r2 : TFHIRResourceV;
begin
  s1 := TBytesStream.Create(resource);
  try
    r1 := parse(s1, fmt, vSource, lang);
    try
      r2 := convertResource(r1, lang, vSource, vDest);
      try
        s2 := TBytesStream.Create;
        try
          compose(s2, fmt, style, vDest, lang, r2);
          result := copy(s2.Bytes, 0, s2.position);
        finally
          s2.Free;
        end;
      finally
        r2.Free;
      end;
    finally
      r1.Free;
    end;
  finally
    s1.Free;
  end;
end;

class procedure TFhirVersionConvertors.convertResource(resource: TStream; fmt: TFHIRFormat; style : TFHIROutputStyle; lang : String; vSource, vDest: TFHIRVersion; dest: TStream);
var
  r1, r2 : TFHIRResourceV;
begin
  r1 := parse(resource, fmt, vSource, lang);
  try
    r2 := convertResource(r1, lang, vSource, vDest);
    try
      compose(dest, fmt, style, vDest, lang, r2);
    finally
      r2.Free;
    end;
  finally
    r1.Free;
  end;
end;

class function TFhirVersionConvertors.convertResource(resource: TFHIRResourceV; lang : String; vSource, vDest: TFHIRVersion): TFHIRResourceV;
begin
  case vSource of
    fhirVersionRelease3:
      begin
        if not (resource is FHIRResources3.TFhirResource) then
          raise EFHIRException.CreateLang('Unsupported Version conversion source resource is not actually %s', lang, [CODES_TFHIRVersion[vSource]] );
        case vDest of
          fhirVersionRelease4: exit(TVersionConvertor_30_40.convertResource(resource as FHIRResources3.TFhirResource));
        end;
      end;
    fhirVersionRelease4:
      begin
        if not (resource is FHIRResources4.TFhirResource) then
          raise EFHIRException.CreateLang('Unsupported Version conversion source resource is not actually %s', lang, [CODES_TFHIRVersion[vSource]] );
        case vDest of
          fhirVersionRelease3: exit(TVersionConvertor_30_40.convertResource(resource as FHIRResources4.TFhirResource));
        end;
      end;
  end;
  raise EFHIRException.CreateLang('Unsupported Version conversion from %s to %s', lang, [CODES_TFHIRVersion[vSource], CODES_TFHIRVersion[vDest]] );
end;

end.
