{
Copyright (c) 2017+, Health Intersections Pty Ltd (http://www.healthintersections.com.au)
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
program FHIRServerTests;

{$IFNDEF TESTINSIGHT}
{$APPTYPE CONSOLE}
{$ENDIF}{$STRONGLINKTYPES ON}
uses
  FastMM4 in '..\..\dependencies\FMM\FastMM4.pas',
  FastMM4Messages in '..\..\dependencies\FMM\FastMM4Messages.pas',
  Windows,
  SysUtils,
  Classes,
  IdSSLOpenSSLHeaders,
  JclDebug,
  FHIR.Server.Web in '..\..\server\FHIR.Server.Web.pas',
  FHIR.Support.Base in '..\..\library\Support\FHIR.Support.Base.pas',
  FHIR.Support.Utilities in '..\..\library\Support\FHIR.Support.Utilities.pas',
  FHIR.Support.Collections in '..\..\library\Support\FHIR.Support.Collections.pas',
  FHIR.Support.Stream in '..\..\library\Support\FHIR.Support.Stream.pas',
  FHIR.Web.Parsers in '..\..\library\web\FHIR.Web.Parsers.pas',
  FHIR.Web.WinInet in '..\..\library\web\FHIR.Web.WinInet.pas',
  FHIR.Support.JSON in '..\..\library\Support\FHIR.Support.JSON.pas',
  FHIR.Server.Indexing in '..\..\server\FHIR.Server.Indexing.pas',
  FHIR.Ucum.Services in '..\..\library\Ucum\FHIR.Ucum.Services.pas',
  FHIR.Ucum.Handlers in '..\..\library\Ucum\FHIR.Ucum.Handlers.pas',
  FHIR.Ucum.Base in '..\..\library\Ucum\FHIR.Ucum.Base.pas',
  FHIR.Ucum.Validators in '..\..\library\Ucum\FHIR.Ucum.Validators.pas',
  FHIR.Ucum.Expressions in '..\..\library\Ucum\FHIR.Ucum.Expressions.pas',
  FHIR.Ucum.Search in '..\..\library\Ucum\FHIR.Ucum.Search.pas',
  YuStemmer in '..\..\dependencies\Stem\YuStemmer.pas',
  FHIR.Loinc.Services in '..\..\library\loinc\FHIR.Loinc.Services.pas',
  DISystemCompat in '..\..\dependencies\Stem\DISystemCompat.pas',
  FHIR.Snomed.Services in '..\..\library\Snomed\FHIR.Snomed.Services.pas',
  FHIR.Web.Fetcher in '..\..\library\web\FHIR.Web.Fetcher.pas',
  FHIR.Web.Facebook in '..\..\library\web\FHIR.Web.Facebook.pas',
  FHIR.Support.Service in '..\..\library\Support\FHIR.Support.Service.pas',
  FHIR.Server.DBInstaller in '..\..\server\FHIR.Server.DBInstaller.pas',
  FHIR.Database.Dialects in '..\..\library\database\FHIR.Database.Dialects.pas',
  FHIR.Database.Logging in '..\..\library\database\FHIR.Database.Logging.pas',
  FHIR.Database.Manager in '..\..\library\database\FHIR.Database.Manager.pas',
  FHIR.Database.Utilities in '..\..\library\database\FHIR.Database.Utilities.pas',
  FHIR.Database.Settings in '..\..\library\database\FHIR.Database.Settings.pas',
  FHIR.Server.Database in '..\..\Server\FHIR.Server.Database.pas',
  FHIR.Snomed.Importer in '..\..\library\snomed\FHIR.Snomed.Importer.pas',
  FHIR.Snomed.Publisher in '..\..\library\snomed\FHIR.Snomed.Publisher.pas',
  FHIR.Snomed.Expressions in '..\..\library\snomed\FHIR.Snomed.Expressions.pas',
  FHIR.Web.HtmlGen in '..\..\library\web\FHIR.Web.HtmlGen.pas',
  FHIR.Loinc.Importer in '..\..\library\loinc\FHIR.Loinc.Importer.pas',
  FHIR.Loinc.Publisher in '..\..\library\loinc\FHIR.Loinc.Publisher.pas',
  FHIR.Tx.Manager in '..\..\server\FHIR.Tx.Manager.pas',
  FHIR.Tx.Service in '..\..\library\FHIR.Tx.Service.pas',
  FHIR.Tx.Web in '..\..\server\FHIR.Tx.Web.pas',
  FHIR.Server.Constants in '..\..\server\FHIR.Server.Constants.pas',
  FHIR.Server.Ini in '..\..\Server\FHIR.Server.Ini.pas',
  FHIR.Server.Search in '..\..\server\FHIR.Server.Search.pas',
  FHIR.Server.AuthMgr in '..\..\server\FHIR.Server.AuthMgr.pas',
  FHIR.Scim.Server in '..\..\server\FHIR.Scim.Server.pas',
  FHIR.Scim.Search in '..\..\server\FHIR.Scim.Search.pas',
  FHIR.Web.Twilio in '..\..\library\web\FHIR.Web.Twilio.pas',
  FHIR.Server.SearchSyntax in '..\..\server\FHIR.Server.SearchSyntax.pas',
  FHIR.Support.Shell in '..\..\library\Support\FHIR.Support.Shell.pas',
  FHIR.Support.Signatures in '..\..\library\Support\FHIR.Support.Signatures.pas',
  FHIR.Tx.Uri in '..\..\server\FHIR.Tx.Uri.pas',
  FHIR.Tx.Unii in '..\..\server\FHIR.Tx.Unii.pas',
  FHIR.Tx.RxNorm in '..\..\server\FHIR.Tx.RxNorm.pas',
  FHIR.Snomed.Analysis in '..\..\library\snomed\FHIR.Snomed.Analysis.pas',
  FHIR.Tx.AreaCode in '..\..\server\FHIR.Tx.AreaCode.pas',
  FHIR.Server.Subscriptions in '..\..\server\FHIR.Server.Subscriptions.pas',
  FHIR.Web.Socket in '..\..\library\web\FHIR.Web.Socket.pas',
  FHIR.Support.Threads in '..\..\library\Support\FHIR.Support.Threads.pas',
  FHIR.R4.Questionnaire in '..\..\library\r4\FHIR.R4.Questionnaire.pas',
  FHIR.Base.Scim in '..\..\library\base\FHIR.Base.Scim.pas',
  FHIR.R4.Narrative2 in '..\..\library\r4\FHIR.R4.Narrative2.pas',
  FHIR.Server.Security in '..\..\server\FHIR.Server.Security.pas',
  FHIR.R4.Narrative in '..\..\library\r4\FHIR.R4.Narrative.pas',
  FHIR.R4.PathEngine in '..\..\library\r4\FHIR.R4.PathEngine.pas',
  FHIR.R4.Tags in '..\..\library\r4\FHIR.R4.Tags.pas',
  FHIR.R4.Profiles in '..\..\library\r4\FHIR.R4.Profiles.pas',
  FHIR.Base.Objects in '..\..\library\base\FHIR.Base.Objects.pas',
  FHIR.R4.Types in '..\..\library\r4\FHIR.R4.Types.pas',
  FHIR.R4.Resources in '..\..\library\r4\FHIR.R4.Resources.pas',
  FHIR.Version.Parser in '..\..\library\version\FHIR.Version.Parser.pas',
  FHIR.Base.Parser in '..\..\library\base\FHIR.Base.Parser.pas',
  FHIR.R4.Constants in '..\..\library\r4\FHIR.R4.Constants.pas',
  FHIR.Server.Session in '..\..\server\FHIR.Server.Session.pas',
  FHIR.Base.Lang in '..\..\library\base\FHIR.Base.Lang.pas',
  FHIR.R4.Utilities in '..\..\library\r4\FHIR.R4.Utilities.pas',
  FHIR.Version.Client in '..\..\library\version\FHIR.Version.Client.pas',
  FHIR.R4.Validator in '..\..\library\r4\FHIR.R4.Validator.pas',
  FHIR.Server.ClosureMgr in '..\..\server\FHIR.Server.ClosureMgr.pas',
  FHIR.CdsHooks.Utilities in '..\..\library\cdshooks\FHIR.CdsHooks.Utilities.pas',
  MarkdownProcessor in '..\..\..\markdown\source\MarkdownProcessor.pas',
  MarkdownDaringFireball in '..\..\..\markdown\source\MarkdownDaringFireball.pas',
  FHIR.Server.AccessControl in '..\..\server\FHIR.Server.AccessControl.pas',
  FHIR.Server.MpiSearch in '..\..\server\FHIR.Server.MpiSearch.pas',
  FHIR.Web.Rdf in '..\..\library\web\FHIR.Web.Rdf.pas',
  FHIR.R4.Operations in '..\..\library\r4\FHIR.R4.Operations.pas',
  FHIR.R4.OpBase in '..\..\library\r4\FHIR.R4.OpBase.pas',
  FHIR.R4.IndexInfo in '..\..\library\r4\FHIR.R4.IndexInfo.pas',
  FHIR.R4.ElementModel in '..\..\library\r4\FHIR.R4.ElementModel.pas',
  FHIR.Base.Xhtml in '..\..\library\base\FHIR.Base.Xhtml.pas',
  FHIR.R4.MapUtilities in '..\..\library\r4\FHIR.R4.MapUtilities.pas',
  FHIR.R4.Context in '..\..\library\r4\FHIR.R4.Context.pas',
  FHIR.Support.Logging in '..\..\library\support\FHIR.Support.Logging.pas',
  FHIR.R4.AuthMap in '..\..\library\r4\FHIR.R4.AuthMap.pas',
  {$IFDEF TESTINSIGHT}
  TestInsight.DUnitX,
  {$ENDIF }
  DUnitX.Loggers.Console,
  DUnitX.Loggers.Xml.NUnit,
  DUnitX.TestFramework,
  FHIR.Server.Adaptations in '..\..\Server\FHIR.Server.Adaptations.pas',
  FHIR.Server.ObsStats in '..\..\Server\FHIR.Server.ObsStats.pas',
  FHIR.Server.OpenMHealth in '..\..\Server\FHIR.Server.OpenMHealth.pas',
  FHIR.Tools.DiffEngine in '..\..\library\tools\FHIR.Tools.DiffEngine.pas',
  FHIR.Tx.ACIR in '..\..\Server\FHIR.Tx.ACIR.pas',
  FHIR.Tx.Lang in '..\..\Server\FHIR.Tx.Lang.pas',
  FHIR.Server.ReverseClient in '..\..\Server\FHIR.Server.ReverseClient.pas',
  FHIR.Server.UserMgr in '..\..\Server\FHIR.Server.UserMgr.pas',
  FHIR.Server.Context in '..\..\Server\FHIR.Server.Context.pas',
  FHIR.Server.TagMgr in '..\..\Server\FHIR.Server.TagMgr.pas',
  FHIR.Server.SessionMgr in '..\..\Server\FHIR.Server.SessionMgr.pas',
  FHIR.Server.Storage in '..\..\Server\FHIR.Server.Storage.pas',
  FHIR.Tools.GraphQL in '..\..\library\tools\FHIR.Tools.GraphQL.pas',
  FHIR.Support.Tests in '..\..\library\support\FHIR.Support.Tests.pas',
  FHIR.Tests.GraphQL in '..\FHIR.Tests.GraphQL.pas',
  FHIR.Tests.Snomed in '..\FHIR.Tests.Snomed.pas',
  FHIR.Tests.IETFLang in '..\FHIR.Tests.IETFLang.pas',
  FHIR.Tools.DiffEngineTests in '..\..\library\tools\FHIR.Tools.DiffEngineTests.pas',
  FHIR.R4.Tests.Client in '..\..\library\r4\tests\FHIR.R4.Tests.Client.pas',
  FHIR.R4.Tests.Parser in '..\..\library\r4\tests\FHIR.R4.Tests.Parser.pas',
  FHIR.R4.Tests.PathEngine in '..\..\library\r4\tests\FHIR.R4.Tests.PathEngine.pas',
  FHIR.R4.Tests.Validator in '..\..\library\r4\tests\FHIR.R4.Tests.Validator.pas',
  FHIR.R4.Tests.Maps in '..\..\library\r4\tests\FHIR.R4.Tests.Maps.pas',
  FHIR.R4.Tests.Utilities in '..\..\library\r4\tests\FHIR.R4.Tests.Utilities.pas',
  FHIR.Support.MXml in '..\..\library\support\FHIR.Support.MXml.pas',
  MarkdownCommonMark in '..\..\..\markdown\source\MarkdownCommonMark.pas',
  FHIR.Support.Osx in '..\..\library\support\FHIR.Support.Osx.pas',
  FHIR.Tools.CodeGen in '..\..\library\tools\FHIR.Tools.CodeGen.pas',
  FHIR.CdsHooks.Service in '..\..\Server\FHIR.CdsHooks.Service.pas',
  FHIR.CdsHooks.Server in '..\..\Server\FHIR.CdsHooks.Server.pas',
  FHIR.Support.Turtle in '..\..\library\support\FHIR.Support.Turtle.pas',
  FHIR.R4.Xml in '..\..\library\r4\FHIR.R4.Xml.pas',
  FHIR.R4.Json in '..\..\library\r4\FHIR.R4.Json.pas',
  FHIR.R4.Turtle in '..\..\library\r4\FHIR.R4.Turtle.pas',
  FHIR.Cql.Model in '..\..\library\cql\FHIR.Cql.Model.pas',
  FHIR.Cql.Parser in '..\..\library\cql\FHIR.Cql.Parser.pas',
  FHIR.Cql.Tests in '..\..\library\cql\FHIR.Cql.Tests.pas',
  FHIR.Tests.RestFulServer in 'FHIR.Tests.RestFulServer.pas',
  FHIR.Tests.SmartLogin in '..\FHIR.Tests.SmartLogin.pas',
  FHIR.Support.Certs in '..\..\library\support\FHIR.Support.Certs.pas',
  FHIR.Server.GraphDefinition in '..\..\Server\FHIR.Server.GraphDefinition.pas',
  FHIR.Tests.GraphDefinition in '..\FHIR.Tests.GraphDefinition.pas',
  FHIR.Ucum.Tests in '..\..\library\Ucum\FHIR.Ucum.Tests.pas',
  FHIR.Tools.ApplicationVerifier in '..\..\library\tools\FHIR.Tools.ApplicationVerifier.pas',
  FHIR.Server.Jwt in '..\..\Server\FHIR.Server.Jwt.pas',
  FHIR.CdsHooks.Client in '..\..\library\cdshooks\FHIR.CdsHooks.Client.pas',
  FHIR.Server.HackingHealth in '..\..\Server\Modules\FHIR.Server.HackingHealth.pas',
  FHIR.Support.SCrypt in '..\..\library\support\FHIR.Support.SCrypt.pas',
  FHIR.Tx.Operations in '..\..\Server\FHIR.Tx.Operations.pas',
  FHIR.Server.WebSource in '..\..\Server\FHIR.Server.WebSource.pas',
  FHIR.Tools.Indexing in '..\..\library\tools\FHIR.Tools.Indexing.pas',
  FHIR.Database.Tests in '..\..\library\database\FHIR.Database.Tests.pas',
  FHIR.Database.ODBC in '..\..\library\database\FHIR.Database.ODBC.pas',
  FHIR.Database.ODBC.Objects in '..\..\library\database\FHIR.Database.ODBC.Objects.pas',
  FHIR.Database.ODBC.Headers in '..\..\library\database\FHIR.Database.ODBC.Headers.pas',
  FHIR.Database.SQLite3.Objects in '..\..\library\database\FHIR.Database.SQLite3.Objects.pas',
  FHIR.Database.SQLite3.Utilities in '..\..\library\database\FHIR.Database.SQLite3.Utilities.pas',
  FHIR.Database.SQLite3.Wrapper in '..\..\library\database\FHIR.Database.SQLite3.Wrapper.pas',
  FHIR.Database.SQLite in '..\..\library\database\FHIR.Database.SQLite.pas',
  FHIR.Tx.Server in '..\..\Server\FHIR.Tx.Server.pas',
  FHIR.Tx.ICD10 in '..\..\Server\FHIR.Tx.ICD10.pas',
  FHIR.Javascript.Tests in '..\..\library\javascript\FHIR.Javascript.Tests.pas',
  FHIR.Javascript.Chakra in '..\..\library\javascript\FHIR.Javascript.Chakra.pas',
  FHIR.Javascript in '..\..\library\javascript\FHIR.Javascript.pas',
  FHIR.Support.Javascript in '..\..\library\support\FHIR.Support.Javascript.pas',
  FHIR.R4.Javascript in '..\..\library\r4\FHIR.R4.Javascript.pas',
  FHIR.Javascript.Base in '..\..\library\javascript\FHIR.Javascript.Base.pas',
  FHIR.Javascript.ObjectsTests in '..\..\library\javascript\FHIR.Javascript.ObjectsTests.pas',
  FHIR.Client.Javascript in '..\..\library\client\FHIR.Client.Javascript.pas',
  FHIR.Server.EventJs in '..\..\Server\FHIR.Server.EventJs.pas',
  FHIR.Server.Javascript in '..\..\Server\FHIR.Server.Javascript.pas',
  FHIR.Tests.IdUriParser in '..\FHIR.Tests.IdUriParser.pas',
  FHIR.Cql.Engine in '..\..\library\cql\FHIR.Cql.Engine.pas',
  FHIR.Tx.CountryCode in '..\..\Server\FHIR.Tx.CountryCode.pas',
  FHIR.Tx.UsState in '..\..\Server\FHIR.Tx.UsState.pas',
  FHIR.Server.Analytics in '..\..\Server\FHIR.Server.Analytics.pas',
  FHIR.R4.PathNode in '..\..\library\r4\FHIR.R4.PathNode.pas',
  FHIR.Ucum.IFace in '..\..\library\ucum\FHIR.Ucum.IFace.pas',
  FHIR.R4.Base in '..\..\library\r4\FHIR.R4.Base.pas',
  FHIR.Server.XhtmlComp in '..\..\Server\FHIR.Server.XhtmlComp.pas',
  FHIR.R4.ParserBase in '..\..\library\r4\FHIR.R4.ParserBase.pas',
  FHIR.XVersion.Conv_30_40 in '..\..\library\xversion\FHIR.XVersion.Conv_30_40.pas',
  FHIR.R3.Resources in '..\..\library\r3\FHIR.R3.Resources.pas',
  FHIR.R3.Base in '..\..\library\r3\FHIR.R3.Base.pas',
  FHIR.R3.Types in '..\..\library\r3\FHIR.R3.Types.pas',
  FHIR.R3.ElementModel in '..\..\library\r3\FHIR.R3.ElementModel.pas',
  FHIR.R3.Context in '..\..\library\r3\FHIR.R3.Context.pas',
  FHIR.R3.Utilities in '..\..\library\r3\FHIR.R3.Utilities.pas',
  FHIR.R3.Constants in '..\..\library\r3\FHIR.R3.Constants.pas',
  FHIR.R3.PathNode in '..\..\library\r3\FHIR.R3.PathNode.pas',
  FHIR.R3.Profiles in '..\..\library\r3\FHIR.R3.Profiles.pas',
  FHIR.XVersion.Tests in '..\..\library\xversion\FHIR.XVersion.Tests.pas',
  FHIR.R3.Parser in '..\..\library\r3\FHIR.R3.Parser.pas',
  FHIR.R4.Parser in '..\..\library\r4\FHIR.R4.Parser.pas',
  FHIR.R3.Xml in '..\..\library\r3\FHIR.R3.Xml.pas',
  FHIR.R3.ParserBase in '..\..\library\r3\FHIR.R3.ParserBase.pas',
  FHIR.R3.Json in '..\..\library\r3\FHIR.R3.Json.pas',
  FHIR.R3.Turtle in '..\..\library\r3\FHIR.R3.Turtle.pas',
  FHIR.XVersion.Convertors in '..\..\library\xversion\FHIR.XVersion.Convertors.pas',
  FHIR.Client.Base in '..\..\library\client\FHIR.Client.Base.pas',
  FHIR.Client.HTTP in '..\..\library\client\FHIR.Client.HTTP.pas',
  FHIR.Client.Threaded in '..\..\library\client\FHIR.Client.Threaded.pas',
  FHIR.R4.Client in '..\..\library\r4\FHIR.R4.Client.pas',
  FHIR.Java.Runtime in '..\..\library\java\FHIR.Java.Runtime.pas',
  FHIR.Java.Utilities in '..\..\library\java\FHIR.Java.Utilities.pas',
  FHIR.Support.Xml in '..\..\library\support\FHIR.Support.Xml.pas',
  FHIR.Web.GraphQL in '..\..\library\web\FHIR.Web.GraphQL.pas',
  FHIR.Support.MsXml in '..\..\library\support\FHIR.Support.MsXml.pas',
  FHIR.Base.Factory in '..\..\library\base\FHIR.Base.Factory.pas',
  FHIR.Base.Validator in '..\..\library\base\FHIR.Base.Validator.pas',
  FHIR.Base.Common in '..\..\library\base\FHIR.Base.Common.pas',
  FHIR.Base.Narrative in '..\..\library\base\FHIR.Base.Narrative.pas',
  FHIR.Base.PathEngine in '..\..\library\base\FHIR.Base.PathEngine.pas',
  FHIR.R4.Common in '..\..\library\r4\FHIR.R4.Common.pas',
  FHIR.R3.Common in '..\..\library\r3\FHIR.R3.Common.pas',
  FHIR.R4.Tests.Worker in '..\..\library\r4\tests\FHIR.R4.Tests.Worker.pas',
  FHIR.R4.Factory in '..\..\library\r4\FHIR.R4.Factory.pas',
  FHIR.Cache.PackageManager in '..\..\library\cache\FHIR.Cache.PackageManager.pas',
  FHIR.Base.Utilities in '..\..\library\base\FHIR.Base.Utilities.pas',
  FHIR.Java.Wrapper in '..\..\library\java\FHIR.Java.Wrapper.pas',
  FHIR.Java.Strings in '..\..\library\java\FHIR.Java.Strings.pas',
  FHIR.Java.JNI in '..\..\library\java\FHIR.Java.JNI.pas',
  FHIR.Support.Fpc in '..\..\library\support\FHIR.Support.Fpc.pas',
  FHIR.Smart.Utilities in '..\..\library\smart\FHIR.Smart.Utilities.pas',
  FHIR.R3.Factory in '..\..\library\r3\FHIR.R3.Factory.pas',
  FHIR.R3.Validator in '..\..\library\r3\FHIR.R3.Validator.pas',
  FHIR.R3.PathEngine in '..\..\library\r3\FHIR.R3.PathEngine.pas',
  FHIR.R3.Narrative in '..\..\library\r3\FHIR.R3.Narrative.pas',
  FHIR.R3.Client in '..\..\library\r3\FHIR.R3.Client.pas',
  FHIR.Smart.Login in '..\..\library\smart\FHIR.Smart.Login.pas',
  FHIR.R3.Operations in '..\..\library\r3\FHIR.R3.Operations.pas',
  FHIR.R3.OpBase in '..\..\library\r3\FHIR.R3.OpBase.pas',
  FHIR.Tx.MimeTypes in '..\..\Server\FHIR.Tx.MimeTypes.pas',
  FHIR.Tx.Iso4217 in '..\..\Server\FHIR.Tx.Iso4217.pas',
  FHIR.XVersion.ConvBase in '..\..\library\xversion\FHIR.XVersion.ConvBase.pas',
  FHIR.Tools.NDJsonParser in '..\..\library\tools\FHIR.Tools.NDJsonParser.pas',
  FHIR.R3.AuthMap in '..\..\library\r3\FHIR.R3.AuthMap.pas',
  FHIR.Tools.ValueSets in '..\..\library\tools\FHIR.Tools.ValueSets.pas',
  FHIR.Tools.CodeSystemProvider in '..\..\library\tools\FHIR.Tools.CodeSystemProvider.pas',
  FHIR.Server.Tags in '..\..\Server\FHIR.Server.Tags.pas',
  FHIR.Server.BundleBuilder in '..\..\Server\FHIR.Server.BundleBuilder.pas',
  FHIR.Server.Factory in '..\..\Server\FHIR.Server.Factory.pas',
  FHIR.R4.GraphDefinition in '..\..\library\r4\FHIR.R4.GraphDefinition.pas',
  FHIR.Base.GraphDefinition in '..\..\library\base\FHIR.Base.GraphDefinition.pas',
  FHIR.Server.ValidatorR4 in '..\..\Server\FHIR.Server.ValidatorR4.pas',
  FHIR.Server.IndexingR4 in '..\..\Server\FHIR.Server.IndexingR4.pas',
  FHIR.Server.SubscriptionsR4 in '..\..\Server\FHIR.Server.SubscriptionsR4.pas',
  FHIR.Server.OperationsR4 in '..\..\Server\FHIR.Server.OperationsR4.pas',
  FHIR.Tests.FullServer in 'FHIR.Tests.FullServer.pas',
  FHIR.Support.Lang in '..\..\library\support\FHIR.Support.Lang.pas',
  FHIR.Server.Utilities in '..\..\Server\FHIR.Server.Utilities.pas',
  FHIR.Server.Version in '..\..\Server\FHIR.Server.Version.pas',
  FHIR.V2.Objects in '..\..\library\v2\FHIR.V2.Objects.pas',
  FHIR.v2.Base in '..\..\library\v2\FHIR.v2.Base.pas',
  FHIR.v2.Dictionary in '..\..\library\v2\FHIR.v2.Dictionary.pas',
  FHIR.v2.Tests in '..\..\library\v2\FHIR.v2.Tests.pas',
  FHIR.v2.Protocol in '..\..\library\v2\FHIR.v2.Protocol.pas',
  FHIR.v2.Dictionary.Compiled in '..\..\library\v2\FHIR.v2.Dictionary.Compiled.pas',
  FHIR.v2.Dictionary.v21 in '..\..\library\v2\FHIR.v2.Dictionary.v21.pas',
  FHIR.v2.Dictionary.v22 in '..\..\library\v2\FHIR.v2.Dictionary.v22.pas',
  FHIR.v2.Dictionary.v23 in '..\..\library\v2\FHIR.v2.Dictionary.v23.pas',
  FHIR.v2.Dictionary.v24 in '..\..\library\v2\FHIR.v2.Dictionary.v24.pas',
  FHIR.v2.Dictionary.v25 in '..\..\library\v2\FHIR.v2.Dictionary.v25.pas',
  FHIR.v2.Dictionary.v26 in '..\..\library\v2\FHIR.v2.Dictionary.v26.pas',
  FHIR.v2.Dictionary.v27 in '..\..\library\v2\FHIR.v2.Dictionary.v27.pas',
  FHIR.v2.Dictionary.v231 in '..\..\library\v2\FHIR.v2.Dictionary.v231.pas',
  FHIR.v2.Dictionary.v251 in '..\..\library\v2\FHIR.v2.Dictionary.v251.pas',
  FHIR.v2.Dictionary.Database in '..\..\library\v2\FHIR.v2.Dictionary.Database.pas',
  FHIR.Tests.SearchSyntax in 'FHIR.Tests.SearchSyntax.pas',
  FHIR.v2.Message in '..\..\library\v2\FHIR.v2.Message.pas',
  FHIR.v2.Javascript in '..\..\library\v2\FHIR.v2.Javascript.pas';

//  CommonMarkNode in '..\..\..\markdown\source\CommonMarkNode.pas',
//  InstanceValidator in '..\..\library\r4\InstanceValidator.pas',
//  FHIR.R4.Adaptor in '..\..\library\r4\FHIR.R4.Adaptor.pas';

var
  runner : ITestRunner;
  results : IRunResults;
  logger : ITestLogger;
  nunitLogger : ITestLogger;
  s : String;
begin
  s := paramstr(1);
  if s <> '' then
    FHIR_PUB_HOME_1 := s;
  s := paramstr(2);
  if s <> '' then
    FHIR_SRC_HOME_1 := s;

{$IFDEF TESTINSIGHT}
  TestInsight.DUnitX.RunRegisteredTests;
  exit;
{$ENDIF}
  try
    //Check command line options, will exit if invalid
    TDUnitX.CheckCommandLine;
    //Create the test runner
    runner := TDUnitX.CreateRunner;
    //Tell the runner to use RTTI to find Fixtures
    runner.UseRTTI := True;
    //tell the runner how we will log things
    //Log to the console window
    logger := TDUnitXConsoleLogger.Create(true);
    runner.AddLogger(logger);
    //Generate an NUnit compatible XML File
    nunitLogger := TDUnitXXMLNUnitFileLogger.Create(TDUnitX.Options.XMLOutputFile);
    runner.AddLogger(nunitLogger);
    runner.FailsOnNoAsserts := False; //When true, Assertions must be made during tests;

    //Run tests
    results := runner.Execute;
    if not results.AllPassed then
      System.ExitCode := EXIT_ERRORS;

    {$IFNDEF CI}
    //We don't want this happening when running under CI.
    if TDUnitX.Options.ExitBehavior = TDUnitXExitBehavior.Pause then
    begin
      System.Write('Done.. press <Enter> key to quit.');
      System.Readln;
    end;
    {$ENDIF}
  except
    on E: Exception do
      System.Writeln(E.ClassName, ': ', E.Message);
  end;
end.
