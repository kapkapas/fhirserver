; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName 
#define MyAppVersion 
#define MyAppPublisher 
#define MyAppURL "http://fhir.org"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{B39DF16F-6D54-4346-BB9E-3C6619BA11A2}
AppName=FHIR Notepad++ plugin
AppVersion=1.x
AppPublisher=Health Intersections
AppPublisherURL=http://healthintersections.com.au
AppSupportURL=http://wiki.hl7.org/index.php?title=FHIR_Notepad%2B%2B_Plugin_Documentation
AppUpdatesURL=http://healthintersections.com.au/FhirServer
DefaultDirName={pf}\Notepad++
DefaultGroupName=FHIR Applications
DisableProgramGroupPage=yes
LicenseFile=C:\work\fhirserver\install\npplicense.txt
InfoBeforeFile=C:\work\fhirserver\install\nppreadme.txt
OutputDir=C:\work\fhirserver\install\build
OutputBaseFilename=npp-install-1.0.2
SetupIconFile=C:\work\fhirserver\Server\fhir.ico
Compression=lzma
SolidCompression=yes
DirExistsWarning=no
AppVerName=FHIR Notepad++ Plugin 1.0.2

[Components]
Name: "n64"; Description: "64bit Notepad++"; Types: custom; Flags: exclusive
Name: "n32"; Description: "32bit Notepad++"; Types: custom; Flags: exclusive

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
; 1st, the plug-in itself
Source: "C:\work\fhirserver\Exec\32\fhirnpp.dll";               DestDir: "{app}\plugins";       Flags: ignoreversion; Components: n32
Source: "C:\work\fhirserver\Exec\32\libeay32.dll";              DestDir: "{app}\plugins\fhir";  Flags: ignoreversion; Components: n32
Source: "C:\work\fhirserver\Exec\32\ssleay32.dll";              DestDir: "{app}\plugins\fhir";  Flags: ignoreversion; Components: n32
Source: "C:\work\fhirserver\Exec\64\fhirnpp.dll";               DestDir: "{app}\plugins";       Flags: ignoreversion; Components: n64
Source: "C:\work\fhirserver\Exec\64\libeay32.dll";              DestDir: "{app}\plugins\fhir";  Flags: ignoreversion; Components: n64  
Source: "C:\work\fhirserver\Exec\64\ssleay32.dll";              DestDir: "{app}\plugins\fhir";  Flags: ignoreversion; Components: n64  
Source: "C:\Program Files\Notepad++\allowAppDataPlugins.xml";   DestDir: "{app}";               Flags: ignoreversion

[Registry]
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BROWSER_EMULATION"; ValueType: dword; ValueName: "notepad++.exe"; ValueData: "10000"; Flags: createvalueifdoesntexist 


[Code]
var
  LoadInstallPage : TOutputProgressWizardPage;

type
  TMyCallback = procedure(IntParam: Integer; StrParam: WideString);

Function MyDllDownloadPackages(urls : PAnsiChar; callback: TMyCallback) : PAnsiChar; external 'MyDllDownloadPackages@files:installer.dll stdcall setuponly';

procedure InitCallback(IntParam: Integer; StrParam: WideString);
begin
  LoadInstallPage.SetProgress(intparam, 100);
  LoadInstallPage.SetText(StrParam, '');
end;

procedure InstallPackages;
var
  done : boolean;
  s : String;
  msg : String;
begin
  LoadInstallPage.SetText('Installing R3/R4/CDA Packages...', '');
  LoadInstallPage.SetProgress(0, 100);
  LoadInstallPage.Show;
  try
    s := ',hl7.fhir.core#3.0.1,hl7.fhir.core#4.0.0,hl7.fhir.core#1.0.2';
    repeat
      done := true;
      msg := MyDllDownloadPackages(s, @InitCallback);
      if msg <> '' then
        done := MsgBox('Downloading the packages failed : '+msg+#13#10+'Try again? (can be done later through installed applications)', mbError, MB_YESNO) = mrNo;
    until done;
  finally
    LoadInstallPage.Hide;
  end;

end;

Procedure CreatePostInstallPage;
Begin
  LoadInstallPage := CreateOutputProgressPage('Perform Installation tasks', '');
End;

procedure InitializeWizard();
Begin
  CreatePostInstallPage;
End;


procedure CurStepChanged(CurStep: TSetupStep);
Begin
  if (CurStep = ssPostInstall)  Then
    InstallPackages;
End;
                                                                          
