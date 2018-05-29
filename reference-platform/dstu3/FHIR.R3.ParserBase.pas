unit FHIR.R3.ParserBase;

interface

uses
  SysUtils,
  FHIR.Support.Json, FHIR.Support.MXml, FHIR.Support.Xml, FHIR.Support.Turtle,
  FHIR.Base.Objects, FHIR.Base.Parser, FHIR.R3.Types, FHIR.R3.Resources;

type
  TFHIRXmlParserBase3 = class (TFHIRXmlParserBase)
  protected
    function ParseResource(element : TMXmlElement; path : String) : TFhirResource; virtual;
    Function ParseResourceV(element : TMXmlElement; path : String) : TFhirResourceV; override;

    function ParseDataType(element : TMXmlElement; name : String; type_ : TFHIRTypeClass) : TFHIRType; virtual;
    function ParseDataTypeV(element : TMXmlElement; name : String; type_ : TClass) : TFHIRObject; override;

    Function ParseInnerResource(element : TMXmlElement; path : String) : TFhirResource;
  end;

  TFHIRJsonParserBase3 = class (TFHIRJsonParserBase)
  protected
    function ParseResource(jsn : TJsonObject) : TFhirResource; virtual;
    Function ParseResourceV(jsn : TJsonObject) : TFhirResourceV; override;

    function ParseDataTypeV(jsn : TJsonObject; name : String; type_ : TClass) : TFHIRObject; override;
    function ParseDataType(jsn : TJsonObject; name : String; type_ : TFHIRTypeClass) : TFHIRType; virtual;

    procedure ParseInnerResource(jsn : TJsonObject; ctxt : TFHIRObjectList);  overload;
    function ParseInnerResource(jsn: TJsonObject) : TFhirResource; overload;
  end;

  TFHIRTurtleParserBase3 = class (TFHIRTurtleParserBase)
  protected
    function ParseResource(obj : TTurtleComplex) : TFhirResource; virtual;
    Function ParseResourceV(obj : TTurtleComplex) : TFhirResourceV; override;

    function ParseDataType(obj : TTurtleComplex; name : String; type_ : TFHIRTypeClass) : TFHIRType; virtual;

    function ParseInnerResource(obj : TTurtleObject) : TFHIRResource;
  end;

  TFHIRXmlComposerBase3 = class (TFHIRXmlComposerBase)
  protected
    procedure ComposeResourceV(xml : TXmlBuilder; resource : TFhirResourceV); override;
    procedure ComposeResource(xml : TXmlBuilder; resource : TFhirResource); overload; virtual;
  end;

  TFHIRJsonComposerBase3 = class (TFHIRJsonComposerBase)
  protected
    procedure ComposeResourceV(json : TJSONWriter; resource : TFhirResourceV); override;
    procedure ComposeResource(json : TJSONWriter; resource : TFhirResource); overload; virtual;

  end;

  TFHIRTurtleComposerBase3 = class (TFHIRTurtleComposerBase)
  protected
    procedure ComposeResourceV(parent :  TTurtleComplex; resource : TFhirResourceV); override;
    procedure ComposeResource(parent :  TTurtleComplex; resource : TFhirResource); overload; virtual;
  end;

implementation

{ TFHIRXmlParserBase3 }

function TFHIRXmlParserBase3.ParseDataTypeV(element: TMXmlElement; name: String; type_: TClass): TFHIRObject;
begin
  result := ParseDataType(element, name, TFHIRTypeClass(type_));
end;

function TFHIRXmlParserBase3.ParseInnerResource(element: TMXmlElement; path: String): TFhirResource;
var
  child : TMXmlElement;
begin
  child := FirstChild(element);
  result := ParseResourceV(child, path) as TFhirResource;
  try
    child := NextSibling(child);
    if (child <> nil) then
      UnknownContent(child, path);
    result.link;
  finally
    result.free;
  end;
end;

function TFHIRXmlParserBase3.ParseResource(element: TMXmlElement; path: String): TFhirResource;
begin
  raise exception.create('don''t use '+className+' directly - use TFHIRXmlComposer');
end;

function TFHIRXmlParserBase3.ParseResourceV(element: TMXmlElement; path: String): TFhirResourceV;
begin
  result := ParseResource(element, path);
end;

function TFHIRXmlParserBase3.ParseDataType(element: TMXmlElement; name: String; type_: TFHIRTypeClass): TFHIRType;
begin
  raise exception.create('don''t use TFHIRXmlParserBase directly - use TFHIRXmlParser');
end;


{ TFHIRXmlComposerBase3 }


{ TFHIRXmlComposerBase3 }

procedure TFHIRXmlComposerBase3.ComposeResource(xml: TXmlBuilder; resource: TFhirResource);
begin
  raise exception.create('don''t use '+className+' directly - use TFHIRXmlComposer');
end;

procedure TFHIRXmlComposerBase3.ComposeResourceV(xml: TXmlBuilder; resource: TFhirResourceV);
begin
  ComposeResource(xml, resource as TFhirResource);

end;

{ TFHIRJsonParserBase3 }

function TFHIRJsonParserBase3.ParseDataType(jsn : TJsonObject; name : String; type_ : TFHIRTypeClass): TFHIRType;
begin
  raise exception.create('don''t use TFHIRXmlParserBase directly - use TFHIRXmlParser');
end;

function TFHIRJsonParserBase3.ParseResource(jsn: TJsonObject): TFhirResource;
begin
  raise exception.create('don''t use TFHIRJsonParserBase3 directly - use TFHIRXmlComposer');
end;

function TFHIRJsonParserBase3.ParseResourceV(jsn: TJsonObject): TFhirResourceV;
begin
  result := ParseResource(jsn);
end;

procedure TFHIRJsonParserBase3.ParseInnerResource(jsn: TJsonObject; ctxt: TFHIRObjectList);
begin
  ctxt.add(ParseResourceV(jsn));
end;

function TFHIRJsonParserBase3.ParseDataTypeV(jsn: TJsonObject; name: String; type_: TClass): TFHIRObject;
begin
  result := ParseDataType(jsn, name, TFHIRTypeClass(type_));
end;

function TFHIRJsonParserBase3.ParseInnerResource(jsn: TJsonObject) : TFhirResource;
begin
  result := ParseResourceV(jsn) as TFhirResource;
end;

{ TFHIRJsonComposerBase3 }

procedure TFHIRJsonComposerBase3.ComposeResource(json: TJSONWriter; resource: TFhirResource);
begin
  raise exception.create('don''t use '+className+' directly - use TFHIRXmlComposer');
end;

procedure TFHIRJsonComposerBase3.ComposeResourceV(json: TJSONWriter; resource: TFhirResourceV);
begin
  ComposeResource(json, resource as TFhirResource);
end;

{ TFHIRTurtleParserBase3 }

function TFHIRTurtleParserBase3.ParseDataType(obj: TTurtleComplex; name: String; type_: TFHIRTypeClass): TFHIRType;
begin
  raise exception.create('don''t use TFHIRTurtleParserBase3 directly - use TFHIRXmlParser');
end;

function TFHIRTurtleParserBase3.ParseInnerResource(obj: TTurtleObject): TFHIRResource;
var
  c : TTurtleComplex;
begin
  if obj = nil then
    result := nil
  else
  begin
    if obj is TTurtleComplex then
      c := obj as TTurtleComplex
    else if (obj is TTurtleURL) then
    begin
      c := FDoc.getObject(TTurtleURL(obj).uri);
      if c = nil then
        raise Exception.Create('Unable to resolve internal resource reference in RDF - to '+TTurtleURL(obj).uri)
    end
    else
      raise Exception.Create('Unable to process internal resource reference in RDF');
    result := ParseResourceV(c) as TFHIRResource;
  end;
end;

function TFHIRTurtleParserBase3.ParseResource(obj: TTurtleComplex): TFhirResource;
begin
  raise exception.create('don''t use '+className+' directly - use TFHIRXmlComposer');
end;

function TFHIRTurtleParserBase3.ParseResourceV(obj: TTurtleComplex): TFhirResourceV;
begin
  result := ParseResource(obj);
end;

{ TFHIRTurtleComposerBase3 }

procedure TFHIRTurtleComposerBase3.ComposeResource(parent: TTurtleComplex; resource: TFhirResource);
begin
  raise exception.create('don''t use '+className+' directly - use TFHIRXmlComposer');
end;

procedure TFHIRTurtleComposerBase3.ComposeResourceV(parent: TTurtleComplex; resource: TFhirResourceV);
begin
  ComposeResource(parent, resource as TFhirResource);
end;

end.
