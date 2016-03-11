{!Wrapper uses FHIRBase, FHIRBase_Wrapper, FHIRTypes, FHIRTypes_Wrapper, FHIRResources, FHIRResources_Wrapper}
{!ignore ALL_RESOURCE_TYPES}

unit FHIRConstants;

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

{$IFNDEF FHIR_DSTU3}
This is the dstu3 version of the FHIR code
{$ENDIF}


interface

// FHIR v1.3.0 generated 2016-03-10T07:29:43+11:00

uses
  SysUtils, Classes, StringSupport, DecimalSupport, AdvBuffers, DateAndTime, FHIRBase, FHIRTypes, FHIRResources;

Type
  {@Enum TSearchParamsAccount
    Search Parameters for Account
  }
  TSearchParamsAccount = (
    spAccount__content, {@enum.value "_content" spAccount__content Search on the entire content of the resource }
    spAccount__id, {@enum.value "_id" spAccount__id Logical id of this artifact }
    spAccount__lastUpdated, {@enum.value "_lastUpdated" spAccount__lastUpdated When the resource version last changed }
    spAccount__profile, {@enum.value "_profile" spAccount__profile Profiles this resource claims to conform to }
    spAccount__query, {@enum.value "_query" spAccount__query A custom search profile that describes a specific defined query operation }
    spAccount__security, {@enum.value "_security" spAccount__security Security Labels applied to this resource }
    spAccount__tag, {@enum.value "_tag" spAccount__tag Tags applied to this resource }
    spAccount__text, {@enum.value "_text" spAccount__text Search on the narrative of the resource }
    spAccount_Balance, {@enum.value "balance" spAccount_Balance How much is in account? }
    spAccount_Identifier, {@enum.value "identifier" spAccount_Identifier Account number }
    spAccount_Name, {@enum.value "name" spAccount_Name Human-readable label }
    spAccount_Owner, {@enum.value "owner" spAccount_Owner Who is responsible? }
    spAccount_Patient, {@enum.value "patient" spAccount_Patient What is account tied to? }
    spAccount_Period, {@enum.value "period" spAccount_Period Transaction window }
    spAccount_Status, {@enum.value "status" spAccount_Status active | inactive }
    spAccount_Subject, {@enum.value "subject" spAccount_Subject What is account tied to? }
    spAccount_Type); {@enum.value "type" spAccount_Type E.g. patient, expense, depreciation }

  {@Enum TSearchParamsAllergyIntolerance
    Search Parameters for AllergyIntolerance
  }
  TSearchParamsAllergyIntolerance = (
    spAllergyIntolerance__content, {@enum.value "_content" spAllergyIntolerance__content Search on the entire content of the resource }
    spAllergyIntolerance__id, {@enum.value "_id" spAllergyIntolerance__id Logical id of this artifact }
    spAllergyIntolerance__lastUpdated, {@enum.value "_lastUpdated" spAllergyIntolerance__lastUpdated When the resource version last changed }
    spAllergyIntolerance__profile, {@enum.value "_profile" spAllergyIntolerance__profile Profiles this resource claims to conform to }
    spAllergyIntolerance__query, {@enum.value "_query" spAllergyIntolerance__query A custom search profile that describes a specific defined query operation }
    spAllergyIntolerance__security, {@enum.value "_security" spAllergyIntolerance__security Security Labels applied to this resource }
    spAllergyIntolerance__tag, {@enum.value "_tag" spAllergyIntolerance__tag Tags applied to this resource }
    spAllergyIntolerance__text, {@enum.value "_text" spAllergyIntolerance__text Search on the narrative of the resource }
    spAllergyIntolerance_Category, {@enum.value "category" spAllergyIntolerance_Category food | medication | environment | other - Category of Substance }
    spAllergyIntolerance_Criticality, {@enum.value "criticality" spAllergyIntolerance_Criticality low | high | unable-to-assess }
    spAllergyIntolerance_Date, {@enum.value "date" spAllergyIntolerance_Date When recorded }
    spAllergyIntolerance_Identifier, {@enum.value "identifier" spAllergyIntolerance_Identifier External ids for this item }
    spAllergyIntolerance_Lastdate, {@enum.value "last-date" spAllergyIntolerance_Lastdate Date(/time) of last known occurrence of a reaction }
    spAllergyIntolerance_Manifestation, {@enum.value "manifestation" spAllergyIntolerance_Manifestation Clinical symptoms/signs associated with the Event }
    spAllergyIntolerance_Onset, {@enum.value "onset" spAllergyIntolerance_Onset Date(/time) when manifestations showed }
    spAllergyIntolerance_Patient, {@enum.value "patient" spAllergyIntolerance_Patient Who the sensitivity is for }
    spAllergyIntolerance_Recorder, {@enum.value "recorder" spAllergyIntolerance_Recorder Who recorded the sensitivity }
    spAllergyIntolerance_Reporter, {@enum.value "reporter" spAllergyIntolerance_Reporter Source of the information about the allergy }
    spAllergyIntolerance_Route, {@enum.value "route" spAllergyIntolerance_Route How the subject was exposed to the substance }
    spAllergyIntolerance_Severity, {@enum.value "severity" spAllergyIntolerance_Severity mild | moderate | severe (of event as a whole) }
    spAllergyIntolerance_Status, {@enum.value "status" spAllergyIntolerance_Status active | unconfirmed | confirmed | inactive | resolved | refuted | entered-in-error }
    spAllergyIntolerance_Substance, {@enum.value "substance" spAllergyIntolerance_Substance Substance, (or class) considered to be responsible for risk }
    spAllergyIntolerance_Type); {@enum.value "type" spAllergyIntolerance_Type allergy | intolerance - Underlying mechanism (if known) }

  {@Enum TSearchParamsAppointment
    Search Parameters for Appointment
  }
  TSearchParamsAppointment = (
    spAppointment__content, {@enum.value "_content" spAppointment__content Search on the entire content of the resource }
    spAppointment__id, {@enum.value "_id" spAppointment__id Logical id of this artifact }
    spAppointment__lastUpdated, {@enum.value "_lastUpdated" spAppointment__lastUpdated When the resource version last changed }
    spAppointment__profile, {@enum.value "_profile" spAppointment__profile Profiles this resource claims to conform to }
    spAppointment__query, {@enum.value "_query" spAppointment__query A custom search profile that describes a specific defined query operation }
    spAppointment__security, {@enum.value "_security" spAppointment__security Security Labels applied to this resource }
    spAppointment__tag, {@enum.value "_tag" spAppointment__tag Tags applied to this resource }
    spAppointment__text, {@enum.value "_text" spAppointment__text Search on the narrative of the resource }
    spAppointment_Actor, {@enum.value "actor" spAppointment_Actor Any one of the individuals participating in the appointment }
    spAppointment_Date, {@enum.value "date" spAppointment_Date Appointment date/time. }
    spAppointment_Identifier, {@enum.value "identifier" spAppointment_Identifier An Identifier of the Appointment }
    spAppointment_Location, {@enum.value "location" spAppointment_Location This location is listed in the participants of the appointment }
    spAppointment_Partstatus, {@enum.value "part-status" spAppointment_Partstatus The Participation status of the subject, or other participant on the appointment. Can be used to locate participants that have not responded to meeting requests. }
    spAppointment_Patient, {@enum.value "patient" spAppointment_Patient One of the individuals of the appointment is this patient }
    spAppointment_Practitioner, {@enum.value "practitioner" spAppointment_Practitioner One of the individuals of the appointment is this practitioner }
    spAppointment_Status); {@enum.value "status" spAppointment_Status The overall status of the appointment }

  {@Enum TSearchParamsAppointmentResponse
    Search Parameters for AppointmentResponse
  }
  TSearchParamsAppointmentResponse = (
    spAppointmentResponse__content, {@enum.value "_content" spAppointmentResponse__content Search on the entire content of the resource }
    spAppointmentResponse__id, {@enum.value "_id" spAppointmentResponse__id Logical id of this artifact }
    spAppointmentResponse__lastUpdated, {@enum.value "_lastUpdated" spAppointmentResponse__lastUpdated When the resource version last changed }
    spAppointmentResponse__profile, {@enum.value "_profile" spAppointmentResponse__profile Profiles this resource claims to conform to }
    spAppointmentResponse__query, {@enum.value "_query" spAppointmentResponse__query A custom search profile that describes a specific defined query operation }
    spAppointmentResponse__security, {@enum.value "_security" spAppointmentResponse__security Security Labels applied to this resource }
    spAppointmentResponse__tag, {@enum.value "_tag" spAppointmentResponse__tag Tags applied to this resource }
    spAppointmentResponse__text, {@enum.value "_text" spAppointmentResponse__text Search on the narrative of the resource }
    spAppointmentResponse_Actor, {@enum.value "actor" spAppointmentResponse_Actor The Person, Location/HealthcareService or Device that this appointment response replies for }
    spAppointmentResponse_Appointment, {@enum.value "appointment" spAppointmentResponse_Appointment The appointment that the response is attached to }
    spAppointmentResponse_Identifier, {@enum.value "identifier" spAppointmentResponse_Identifier An Identifier in this appointment response }
    spAppointmentResponse_Location, {@enum.value "location" spAppointmentResponse_Location This Response is for this Location }
    spAppointmentResponse_Partstatus, {@enum.value "part-status" spAppointmentResponse_Partstatus The participants acceptance status for this appointment }
    spAppointmentResponse_Patient, {@enum.value "patient" spAppointmentResponse_Patient This Response is for this Patient }
    spAppointmentResponse_Practitioner); {@enum.value "practitioner" spAppointmentResponse_Practitioner This Response is for this Practitioner }

  {@Enum TSearchParamsAuditEvent
    Search Parameters for AuditEvent
  }
  TSearchParamsAuditEvent = (
    spAuditEvent__content, {@enum.value "_content" spAuditEvent__content Search on the entire content of the resource }
    spAuditEvent__id, {@enum.value "_id" spAuditEvent__id Logical id of this artifact }
    spAuditEvent__lastUpdated, {@enum.value "_lastUpdated" spAuditEvent__lastUpdated When the resource version last changed }
    spAuditEvent__profile, {@enum.value "_profile" spAuditEvent__profile Profiles this resource claims to conform to }
    spAuditEvent__query, {@enum.value "_query" spAuditEvent__query A custom search profile that describes a specific defined query operation }
    spAuditEvent__security, {@enum.value "_security" spAuditEvent__security Security Labels applied to this resource }
    spAuditEvent__tag, {@enum.value "_tag" spAuditEvent__tag Tags applied to this resource }
    spAuditEvent__text, {@enum.value "_text" spAuditEvent__text Search on the narrative of the resource }
    spAuditEvent_Action, {@enum.value "action" spAuditEvent_Action Type of action performed during the event }
    spAuditEvent_Address, {@enum.value "address" spAuditEvent_Address Identifier for the network access point of the user device }
    spAuditEvent_Agent, {@enum.value "agent" spAuditEvent_Agent Direct reference to resource }
    spAuditEvent_Agentname, {@enum.value "agent-name" spAuditEvent_Agentname Human-meaningful name for the agent }
    spAuditEvent_Altid, {@enum.value "altid" spAuditEvent_Altid Alternative User id e.g. authentication }
    spAuditEvent_Date, {@enum.value "date" spAuditEvent_Date Time when the event occurred on source }
    spAuditEvent_Entity, {@enum.value "entity" spAuditEvent_Entity Specific instance of resource (e.g. versioned) }
    spAuditEvent_Entityid, {@enum.value "entity-id" spAuditEvent_Entityid Specific instance of object (e.g. versioned) }
    spAuditEvent_Entityname, {@enum.value "entity-name" spAuditEvent_Entityname Descriptor for entity }
    spAuditEvent_Entitytype, {@enum.value "entity-type" spAuditEvent_Entitytype Type of object involved }
    spAuditEvent_Patient, {@enum.value "patient" spAuditEvent_Patient Direct reference to resource }
    spAuditEvent_Policy, {@enum.value "policy" spAuditEvent_Policy Policy that authorized event }
    spAuditEvent_Site, {@enum.value "site" spAuditEvent_Site Logical source location within the enterprise }
    spAuditEvent_Source, {@enum.value "source" spAuditEvent_Source The identity of source detecting the event }
    spAuditEvent_Subtype, {@enum.value "subtype" spAuditEvent_Subtype More specific type/id for the event }
    spAuditEvent_Type, {@enum.value "type" spAuditEvent_Type Type/identifier of event }
    spAuditEvent_User); {@enum.value "user" spAuditEvent_User Unique identifier for the user }

  {@Enum TSearchParamsBasic
    Search Parameters for Basic
  }
  TSearchParamsBasic = (
    spBasic__content, {@enum.value "_content" spBasic__content Search on the entire content of the resource }
    spBasic__id, {@enum.value "_id" spBasic__id Logical id of this artifact }
    spBasic__lastUpdated, {@enum.value "_lastUpdated" spBasic__lastUpdated When the resource version last changed }
    spBasic__profile, {@enum.value "_profile" spBasic__profile Profiles this resource claims to conform to }
    spBasic__query, {@enum.value "_query" spBasic__query A custom search profile that describes a specific defined query operation }
    spBasic__security, {@enum.value "_security" spBasic__security Security Labels applied to this resource }
    spBasic__tag, {@enum.value "_tag" spBasic__tag Tags applied to this resource }
    spBasic__text, {@enum.value "_text" spBasic__text Search on the narrative of the resource }
    spBasic_Author, {@enum.value "author" spBasic_Author Who created }
    spBasic_Code, {@enum.value "code" spBasic_Code Kind of Resource }
    spBasic_Created, {@enum.value "created" spBasic_Created When created }
    spBasic_Identifier, {@enum.value "identifier" spBasic_Identifier Business identifier }
    spBasic_Patient, {@enum.value "patient" spBasic_Patient Identifies the focus of this resource }
    spBasic_Subject); {@enum.value "subject" spBasic_Subject Identifies the focus of this resource }

  {@Enum TSearchParamsBinary
    Search Parameters for Binary
  }
  TSearchParamsBinary = (
    spBinary__content, {@enum.value "_content" spBinary__content Search on the entire content of the resource }
    spBinary__id, {@enum.value "_id" spBinary__id Logical id of this artifact }
    spBinary__lastUpdated, {@enum.value "_lastUpdated" spBinary__lastUpdated When the resource version last changed }
    spBinary__profile, {@enum.value "_profile" spBinary__profile Profiles this resource claims to conform to }
    spBinary__query, {@enum.value "_query" spBinary__query A custom search profile that describes a specific defined query operation }
    spBinary__security, {@enum.value "_security" spBinary__security Security Labels applied to this resource }
    spBinary__tag, {@enum.value "_tag" spBinary__tag Tags applied to this resource }
    spBinary__text, {@enum.value "_text" spBinary__text Search on the narrative of the resource }
    spBinary_Contenttype); {@enum.value "contenttype" spBinary_Contenttype MimeType of the binary content }

  {@Enum TSearchParamsBodySite
    Search Parameters for BodySite
  }
  TSearchParamsBodySite = (
    spBodySite__content, {@enum.value "_content" spBodySite__content Search on the entire content of the resource }
    spBodySite__id, {@enum.value "_id" spBodySite__id Logical id of this artifact }
    spBodySite__lastUpdated, {@enum.value "_lastUpdated" spBodySite__lastUpdated When the resource version last changed }
    spBodySite__profile, {@enum.value "_profile" spBodySite__profile Profiles this resource claims to conform to }
    spBodySite__query, {@enum.value "_query" spBodySite__query A custom search profile that describes a specific defined query operation }
    spBodySite__security, {@enum.value "_security" spBodySite__security Security Labels applied to this resource }
    spBodySite__tag, {@enum.value "_tag" spBodySite__tag Tags applied to this resource }
    spBodySite__text, {@enum.value "_text" spBodySite__text Search on the narrative of the resource }
    spBodySite_Code, {@enum.value "code" spBodySite_Code Named anatomical location }
    spBodySite_Identifier, {@enum.value "identifier" spBodySite_Identifier Identifier for this instance of the anatomical location }
    spBodySite_Patient); {@enum.value "patient" spBodySite_Patient Patient to whom bodysite belongs }

  {@Enum TSearchParamsBundle
    Search Parameters for Bundle
  }
  TSearchParamsBundle = (
    spBundle__content, {@enum.value "_content" spBundle__content Search on the entire content of the resource }
    spBundle__id, {@enum.value "_id" spBundle__id Logical id of this artifact }
    spBundle__lastUpdated, {@enum.value "_lastUpdated" spBundle__lastUpdated When the resource version last changed }
    spBundle__profile, {@enum.value "_profile" spBundle__profile Profiles this resource claims to conform to }
    spBundle__query, {@enum.value "_query" spBundle__query A custom search profile that describes a specific defined query operation }
    spBundle__security, {@enum.value "_security" spBundle__security Security Labels applied to this resource }
    spBundle__tag, {@enum.value "_tag" spBundle__tag Tags applied to this resource }
    spBundle__text, {@enum.value "_text" spBundle__text Search on the narrative of the resource }
    spBundle_Composition, {@enum.value "composition" spBundle_Composition The first resource in the bundle, if the bundle type is "document" - this is a composition, and this parameter provides access to searches its contents }
    spBundle_Message, {@enum.value "message" spBundle_Message The first resource in the bundle, if the bundle type is "message" - this is a message header, and this parameter provides access to search its contents }
    spBundle_Type); {@enum.value "type" spBundle_Type document | message | transaction | transaction-response | batch | batch-response | history | searchset | collection }

  {@Enum TSearchParamsCarePlan
    Search Parameters for CarePlan
  }
  TSearchParamsCarePlan = (
    spCarePlan__content, {@enum.value "_content" spCarePlan__content Search on the entire content of the resource }
    spCarePlan__id, {@enum.value "_id" spCarePlan__id Logical id of this artifact }
    spCarePlan__lastUpdated, {@enum.value "_lastUpdated" spCarePlan__lastUpdated When the resource version last changed }
    spCarePlan__profile, {@enum.value "_profile" spCarePlan__profile Profiles this resource claims to conform to }
    spCarePlan__query, {@enum.value "_query" spCarePlan__query A custom search profile that describes a specific defined query operation }
    spCarePlan__security, {@enum.value "_security" spCarePlan__security Security Labels applied to this resource }
    spCarePlan__tag, {@enum.value "_tag" spCarePlan__tag Tags applied to this resource }
    spCarePlan__text, {@enum.value "_text" spCarePlan__text Search on the narrative of the resource }
    spCarePlan_Activitycode, {@enum.value "activitycode" spCarePlan_Activitycode Detail type of activity }
    spCarePlan_Activitydate, {@enum.value "activitydate" spCarePlan_Activitydate Specified date occurs within period specified by CarePlan.activity.timingSchedule }
    spCarePlan_Activityreference, {@enum.value "activityreference" spCarePlan_Activityreference Activity details defined in specific resource }
    spCarePlan_Condition, {@enum.value "condition" spCarePlan_Condition Health issues this plan addresses }
    spCarePlan_Date, {@enum.value "date" spCarePlan_Date Time period plan covers }
    spCarePlan_Goal, {@enum.value "goal" spCarePlan_Goal Desired outcome of plan }
    spCarePlan_Participant, {@enum.value "participant" spCarePlan_Participant Who is involved }
    spCarePlan_Patient, {@enum.value "patient" spCarePlan_Patient Who care plan is for }
    spCarePlan_Performer, {@enum.value "performer" spCarePlan_Performer Matches if the practitioner is listed as a performer in any of the "simple" activities.  (For performers of the detailed activities, chain through the activitydetail search parameter.) }
    spCarePlan_Related, {@enum.value "related" spCarePlan_Related A combination of the type of relationship and the related plan }
    spCarePlan_Relatedcode, {@enum.value "relatedcode" spCarePlan_Relatedcode includes | replaces | fulfills }
    spCarePlan_Relatedplan, {@enum.value "relatedplan" spCarePlan_Relatedplan Plan relationship exists with }
    spCarePlan_Subject); {@enum.value "subject" spCarePlan_Subject Who care plan is for }

  {@Enum TSearchParamsClaim
    Search Parameters for Claim
  }
  TSearchParamsClaim = (
    spClaim__content, {@enum.value "_content" spClaim__content Search on the entire content of the resource }
    spClaim__id, {@enum.value "_id" spClaim__id Logical id of this artifact }
    spClaim__lastUpdated, {@enum.value "_lastUpdated" spClaim__lastUpdated When the resource version last changed }
    spClaim__profile, {@enum.value "_profile" spClaim__profile Profiles this resource claims to conform to }
    spClaim__query, {@enum.value "_query" spClaim__query A custom search profile that describes a specific defined query operation }
    spClaim__security, {@enum.value "_security" spClaim__security Security Labels applied to this resource }
    spClaim__tag, {@enum.value "_tag" spClaim__tag Tags applied to this resource }
    spClaim__text, {@enum.value "_text" spClaim__text Search on the narrative of the resource }
    spClaim_Created, {@enum.value "created" spClaim_Created The creation date for the Claim }
    spClaim_Facilityidentifier, {@enum.value "facilityidentifier" spClaim_Facilityidentifier Facility responsible for the goods and services }
    spClaim_Facilityreference, {@enum.value "facilityreference" spClaim_Facilityreference Facility responsible for the goods and services }
    spClaim_Identifier, {@enum.value "identifier" spClaim_Identifier The primary identifier of the financial resource }
    spClaim_Organizationidentifier, {@enum.value "organizationidentifier" spClaim_Organizationidentifier The reference to the providing organization }
    spClaim_Organizationreference, {@enum.value "organizationreference" spClaim_Organizationreference The reference to the providing organization }
    spClaim_Patientidentifier, {@enum.value "patientidentifier" spClaim_Patientidentifier Patient receiving the services }
    spClaim_Patientreference, {@enum.value "patientreference" spClaim_Patientreference Patient receiving the services }
    spClaim_Priority, {@enum.value "priority" spClaim_Priority Processing priority requested }
    spClaim_Provideridentifier, {@enum.value "provideridentifier" spClaim_Provideridentifier Provider responsible for the Claim }
    spClaim_Providerreference, {@enum.value "providerreference" spClaim_Providerreference Provider responsible for the Claim }
    spClaim_Targetidentifier, {@enum.value "targetidentifier" spClaim_Targetidentifier The target payor/insurer for the Claim }
    spClaim_Targetreference, {@enum.value "targetreference" spClaim_Targetreference The target payor/insurer for the Claim }
    spClaim_Use); {@enum.value "use" spClaim_Use The kind of financial resource }

  {@Enum TSearchParamsClaimResponse
    Search Parameters for ClaimResponse
  }
  TSearchParamsClaimResponse = (
    spClaimResponse__content, {@enum.value "_content" spClaimResponse__content Search on the entire content of the resource }
    spClaimResponse__id, {@enum.value "_id" spClaimResponse__id Logical id of this artifact }
    spClaimResponse__lastUpdated, {@enum.value "_lastUpdated" spClaimResponse__lastUpdated When the resource version last changed }
    spClaimResponse__profile, {@enum.value "_profile" spClaimResponse__profile Profiles this resource claims to conform to }
    spClaimResponse__query, {@enum.value "_query" spClaimResponse__query A custom search profile that describes a specific defined query operation }
    spClaimResponse__security, {@enum.value "_security" spClaimResponse__security Security Labels applied to this resource }
    spClaimResponse__tag, {@enum.value "_tag" spClaimResponse__tag Tags applied to this resource }
    spClaimResponse__text, {@enum.value "_text" spClaimResponse__text Search on the narrative of the resource }
    spClaimResponse_Created, {@enum.value "created" spClaimResponse_Created The creation date }
    spClaimResponse_Disposition, {@enum.value "disposition" spClaimResponse_Disposition The contents of the disposition message }
    spClaimResponse_Identifier, {@enum.value "identifier" spClaimResponse_Identifier The identity of the insurer }
    spClaimResponse_Organization, {@enum.value "organization" spClaimResponse_Organization The organization who generated this resource }
    spClaimResponse_Outcome, {@enum.value "outcome" spClaimResponse_Outcome The processing outcome }
    spClaimResponse_Paymentdate, {@enum.value "paymentdate" spClaimResponse_Paymentdate The expected paymentDate }
    spClaimResponse_Request); {@enum.value "request" spClaimResponse_Request The claim reference }

  {@Enum TSearchParamsClinicalImpression
    Search Parameters for ClinicalImpression
  }
  TSearchParamsClinicalImpression = (
    spClinicalImpression__content, {@enum.value "_content" spClinicalImpression__content Search on the entire content of the resource }
    spClinicalImpression__id, {@enum.value "_id" spClinicalImpression__id Logical id of this artifact }
    spClinicalImpression__lastUpdated, {@enum.value "_lastUpdated" spClinicalImpression__lastUpdated When the resource version last changed }
    spClinicalImpression__profile, {@enum.value "_profile" spClinicalImpression__profile Profiles this resource claims to conform to }
    spClinicalImpression__query, {@enum.value "_query" spClinicalImpression__query A custom search profile that describes a specific defined query operation }
    spClinicalImpression__security, {@enum.value "_security" spClinicalImpression__security Security Labels applied to this resource }
    spClinicalImpression__tag, {@enum.value "_tag" spClinicalImpression__tag Tags applied to this resource }
    spClinicalImpression__text, {@enum.value "_text" spClinicalImpression__text Search on the narrative of the resource }
    spClinicalImpression_Action, {@enum.value "action" spClinicalImpression_Action Actions taken during assessment }
    spClinicalImpression_Assessor, {@enum.value "assessor" spClinicalImpression_Assessor The clinician performing the assessment }
    spClinicalImpression_Date, {@enum.value "date" spClinicalImpression_Date When the assessment occurred }
    spClinicalImpression_Finding, {@enum.value "finding" spClinicalImpression_Finding Specific text or code for finding }
    spClinicalImpression_Investigation, {@enum.value "investigation" spClinicalImpression_Investigation Record of a specific investigation }
    spClinicalImpression_Patient, {@enum.value "patient" spClinicalImpression_Patient The patient being assessed }
    spClinicalImpression_Plan, {@enum.value "plan" spClinicalImpression_Plan Plan of action after assessment }
    spClinicalImpression_Previous, {@enum.value "previous" spClinicalImpression_Previous Reference to last assessment }
    spClinicalImpression_Problem, {@enum.value "problem" spClinicalImpression_Problem General assessment of patient state }
    spClinicalImpression_Resolved, {@enum.value "resolved" spClinicalImpression_Resolved Diagnoses/conditions resolved since previous assessment }
    spClinicalImpression_Ruledout, {@enum.value "ruledout" spClinicalImpression_Ruledout Specific text of code for diagnosis }
    spClinicalImpression_Status, {@enum.value "status" spClinicalImpression_Status in-progress | completed | entered-in-error }
    spClinicalImpression_Trigger, {@enum.value "trigger" spClinicalImpression_Trigger Request or event that necessitated this assessment }
    spClinicalImpression_Triggercode); {@enum.value "trigger-code" spClinicalImpression_Triggercode Request or event that necessitated this assessment }

  {@Enum TSearchParamsCodeSystem
    Search Parameters for CodeSystem
  }
  TSearchParamsCodeSystem = (
    spCodeSystem__content, {@enum.value "_content" spCodeSystem__content Search on the entire content of the resource }
    spCodeSystem__id, {@enum.value "_id" spCodeSystem__id Logical id of this artifact }
    spCodeSystem__lastUpdated, {@enum.value "_lastUpdated" spCodeSystem__lastUpdated When the resource version last changed }
    spCodeSystem__profile, {@enum.value "_profile" spCodeSystem__profile Profiles this resource claims to conform to }
    spCodeSystem__query, {@enum.value "_query" spCodeSystem__query A custom search profile that describes a specific defined query operation }
    spCodeSystem__security, {@enum.value "_security" spCodeSystem__security Security Labels applied to this resource }
    spCodeSystem__tag, {@enum.value "_tag" spCodeSystem__tag Tags applied to this resource }
    spCodeSystem__text, {@enum.value "_text" spCodeSystem__text Search on the narrative of the resource }
    spCodeSystem_Code, {@enum.value "code" spCodeSystem_Code A code defined in the code system }
    spCodeSystem_Context, {@enum.value "context" spCodeSystem_Context A use context assigned to the code system }
    spCodeSystem_Date, {@enum.value "date" spCodeSystem_Date The code system publication date }
    spCodeSystem_Description, {@enum.value "description" spCodeSystem_Description Text search in the description of the code system }
    spCodeSystem_Identifier, {@enum.value "identifier" spCodeSystem_Identifier The identifier for the code system }
    spCodeSystem_Language, {@enum.value "language" spCodeSystem_Language A language in which a designation is provided }
    spCodeSystem_Name, {@enum.value "name" spCodeSystem_Name The name of the code system }
    spCodeSystem_Publisher, {@enum.value "publisher" spCodeSystem_Publisher Name of the publisher of the code system }
    spCodeSystem_Status, {@enum.value "status" spCodeSystem_Status The status of the code system }
    spCodeSystem_System, {@enum.value "system" spCodeSystem_System The system for any codes defined by this code system (same as 'url') }
    spCodeSystem_Url, {@enum.value "url" spCodeSystem_Url The logical URL for the code system }
    spCodeSystem_Version); {@enum.value "version" spCodeSystem_Version The version identifier of the code system }

  {@Enum TSearchParamsCommunication
    Search Parameters for Communication
  }
  TSearchParamsCommunication = (
    spCommunication__content, {@enum.value "_content" spCommunication__content Search on the entire content of the resource }
    spCommunication__id, {@enum.value "_id" spCommunication__id Logical id of this artifact }
    spCommunication__lastUpdated, {@enum.value "_lastUpdated" spCommunication__lastUpdated When the resource version last changed }
    spCommunication__profile, {@enum.value "_profile" spCommunication__profile Profiles this resource claims to conform to }
    spCommunication__query, {@enum.value "_query" spCommunication__query A custom search profile that describes a specific defined query operation }
    spCommunication__security, {@enum.value "_security" spCommunication__security Security Labels applied to this resource }
    spCommunication__tag, {@enum.value "_tag" spCommunication__tag Tags applied to this resource }
    spCommunication__text, {@enum.value "_text" spCommunication__text Search on the narrative of the resource }
    spCommunication_Category, {@enum.value "category" spCommunication_Category Message category }
    spCommunication_Encounter, {@enum.value "encounter" spCommunication_Encounter Encounter leading to message }
    spCommunication_Identifier, {@enum.value "identifier" spCommunication_Identifier Unique identifier }
    spCommunication_Medium, {@enum.value "medium" spCommunication_Medium A channel of communication }
    spCommunication_Patient, {@enum.value "patient" spCommunication_Patient Focus of message }
    spCommunication_Received, {@enum.value "received" spCommunication_Received When received }
    spCommunication_Recipient, {@enum.value "recipient" spCommunication_Recipient Message recipient }
    spCommunication_Request, {@enum.value "request" spCommunication_Request CommunicationRequest producing this message }
    spCommunication_Sender, {@enum.value "sender" spCommunication_Sender Message sender }
    spCommunication_Sent, {@enum.value "sent" spCommunication_Sent When sent }
    spCommunication_Status, {@enum.value "status" spCommunication_Status in-progress | completed | suspended | rejected | failed }
    spCommunication_Subject); {@enum.value "subject" spCommunication_Subject Focus of message }

  {@Enum TSearchParamsCommunicationRequest
    Search Parameters for CommunicationRequest
  }
  TSearchParamsCommunicationRequest = (
    spCommunicationRequest__content, {@enum.value "_content" spCommunicationRequest__content Search on the entire content of the resource }
    spCommunicationRequest__id, {@enum.value "_id" spCommunicationRequest__id Logical id of this artifact }
    spCommunicationRequest__lastUpdated, {@enum.value "_lastUpdated" spCommunicationRequest__lastUpdated When the resource version last changed }
    spCommunicationRequest__profile, {@enum.value "_profile" spCommunicationRequest__profile Profiles this resource claims to conform to }
    spCommunicationRequest__query, {@enum.value "_query" spCommunicationRequest__query A custom search profile that describes a specific defined query operation }
    spCommunicationRequest__security, {@enum.value "_security" spCommunicationRequest__security Security Labels applied to this resource }
    spCommunicationRequest__tag, {@enum.value "_tag" spCommunicationRequest__tag Tags applied to this resource }
    spCommunicationRequest__text, {@enum.value "_text" spCommunicationRequest__text Search on the narrative of the resource }
    spCommunicationRequest_Category, {@enum.value "category" spCommunicationRequest_Category Message category }
    spCommunicationRequest_Encounter, {@enum.value "encounter" spCommunicationRequest_Encounter Encounter leading to message }
    spCommunicationRequest_Identifier, {@enum.value "identifier" spCommunicationRequest_Identifier Unique identifier }
    spCommunicationRequest_Medium, {@enum.value "medium" spCommunicationRequest_Medium A channel of communication }
    spCommunicationRequest_Patient, {@enum.value "patient" spCommunicationRequest_Patient Focus of message }
    spCommunicationRequest_Priority, {@enum.value "priority" spCommunicationRequest_Priority Message urgency }
    spCommunicationRequest_Recipient, {@enum.value "recipient" spCommunicationRequest_Recipient Message recipient }
    spCommunicationRequest_Requested, {@enum.value "requested" spCommunicationRequest_Requested When ordered or proposed }
    spCommunicationRequest_Requester, {@enum.value "requester" spCommunicationRequest_Requester An individual who requested a communication }
    spCommunicationRequest_Sender, {@enum.value "sender" spCommunicationRequest_Sender Message sender }
    spCommunicationRequest_Status, {@enum.value "status" spCommunicationRequest_Status proposed | planned | requested | received | accepted | in-progress | completed | suspended | rejected | failed }
    spCommunicationRequest_Subject, {@enum.value "subject" spCommunicationRequest_Subject Focus of message }
    spCommunicationRequest_Time); {@enum.value "time" spCommunicationRequest_Time When scheduled }

  {@Enum TSearchParamsCompartmentDefinition
    Search Parameters for CompartmentDefinition
  }
  TSearchParamsCompartmentDefinition = (
    spCompartmentDefinition__content, {@enum.value "_content" spCompartmentDefinition__content Search on the entire content of the resource }
    spCompartmentDefinition__id, {@enum.value "_id" spCompartmentDefinition__id Logical id of this artifact }
    spCompartmentDefinition__lastUpdated, {@enum.value "_lastUpdated" spCompartmentDefinition__lastUpdated When the resource version last changed }
    spCompartmentDefinition__profile, {@enum.value "_profile" spCompartmentDefinition__profile Profiles this resource claims to conform to }
    spCompartmentDefinition__query, {@enum.value "_query" spCompartmentDefinition__query A custom search profile that describes a specific defined query operation }
    spCompartmentDefinition__security, {@enum.value "_security" spCompartmentDefinition__security Security Labels applied to this resource }
    spCompartmentDefinition__tag, {@enum.value "_tag" spCompartmentDefinition__tag Tags applied to this resource }
    spCompartmentDefinition__text, {@enum.value "_text" spCompartmentDefinition__text Search on the narrative of the resource }
    spCompartmentDefinition_Code, {@enum.value "code" spCompartmentDefinition_Code Patient | Encounter | RelatedPerson | Practitioner | Device }
    spCompartmentDefinition_Date, {@enum.value "date" spCompartmentDefinition_Date Publication Date(/time) }
    spCompartmentDefinition_Name, {@enum.value "name" spCompartmentDefinition_Name Informal name for this compartment definition }
    spCompartmentDefinition_Resource, {@enum.value "resource" spCompartmentDefinition_Resource Name of resource type }
    spCompartmentDefinition_Status, {@enum.value "status" spCompartmentDefinition_Status draft | active | retired }
    spCompartmentDefinition_Url); {@enum.value "url" spCompartmentDefinition_Url Absolute URL used to reference this compartment definition }

  {@Enum TSearchParamsComposition
    Search Parameters for Composition
  }
  TSearchParamsComposition = (
    spComposition__content, {@enum.value "_content" spComposition__content Search on the entire content of the resource }
    spComposition__id, {@enum.value "_id" spComposition__id Logical id of this artifact }
    spComposition__lastUpdated, {@enum.value "_lastUpdated" spComposition__lastUpdated When the resource version last changed }
    spComposition__profile, {@enum.value "_profile" spComposition__profile Profiles this resource claims to conform to }
    spComposition__query, {@enum.value "_query" spComposition__query A custom search profile that describes a specific defined query operation }
    spComposition__security, {@enum.value "_security" spComposition__security Security Labels applied to this resource }
    spComposition__tag, {@enum.value "_tag" spComposition__tag Tags applied to this resource }
    spComposition__text, {@enum.value "_text" spComposition__text Search on the narrative of the resource }
    spComposition_Attester, {@enum.value "attester" spComposition_Attester Who attested the composition }
    spComposition_Author, {@enum.value "author" spComposition_Author Who and/or what authored the composition }
    spComposition_Class, {@enum.value "class" spComposition_Class Categorization of Composition }
    spComposition_Confidentiality, {@enum.value "confidentiality" spComposition_Confidentiality As defined by affinity domain }
    spComposition_Context, {@enum.value "context" spComposition_Context Code(s) that apply to the event being documented }
    spComposition_Date, {@enum.value "date" spComposition_Date Composition editing time }
    spComposition_Encounter, {@enum.value "encounter" spComposition_Encounter Context of the Composition }
    spComposition_Entry, {@enum.value "entry" spComposition_Entry A reference to data that supports this section }
    spComposition_Identifier, {@enum.value "identifier" spComposition_Identifier Logical identifier of composition (version-independent) }
    spComposition_Patient, {@enum.value "patient" spComposition_Patient Who and/or what the composition is about }
    spComposition_Period, {@enum.value "period" spComposition_Period The period covered by the documentation }
    spComposition_Section, {@enum.value "section" spComposition_Section Classification of section (recommended) }
    spComposition_Status, {@enum.value "status" spComposition_Status preliminary | final | amended | entered-in-error }
    spComposition_Subject, {@enum.value "subject" spComposition_Subject Who and/or what the composition is about }
    spComposition_Title, {@enum.value "title" spComposition_Title Human Readable name/title }
    spComposition_Type); {@enum.value "type" spComposition_Type Kind of composition (LOINC if possible) }

  {@Enum TSearchParamsConceptMap
    Search Parameters for ConceptMap
  }
  TSearchParamsConceptMap = (
    spConceptMap__content, {@enum.value "_content" spConceptMap__content Search on the entire content of the resource }
    spConceptMap__id, {@enum.value "_id" spConceptMap__id Logical id of this artifact }
    spConceptMap__lastUpdated, {@enum.value "_lastUpdated" spConceptMap__lastUpdated When the resource version last changed }
    spConceptMap__profile, {@enum.value "_profile" spConceptMap__profile Profiles this resource claims to conform to }
    spConceptMap__query, {@enum.value "_query" spConceptMap__query A custom search profile that describes a specific defined query operation }
    spConceptMap__security, {@enum.value "_security" spConceptMap__security Security Labels applied to this resource }
    spConceptMap__tag, {@enum.value "_tag" spConceptMap__tag Tags applied to this resource }
    spConceptMap__text, {@enum.value "_text" spConceptMap__text Search on the narrative of the resource }
    spConceptMap_Context, {@enum.value "context" spConceptMap_Context A use context assigned to the concept map }
    spConceptMap_Date, {@enum.value "date" spConceptMap_Date The concept map publication date }
    spConceptMap_Dependson, {@enum.value "dependson" spConceptMap_Dependson Reference to element/field/ValueSet mapping depends on }
    spConceptMap_Description, {@enum.value "description" spConceptMap_Description Text search in the description of the concept map }
    spConceptMap_Identifier, {@enum.value "identifier" spConceptMap_Identifier Additional identifier for the concept map }
    spConceptMap_Name, {@enum.value "name" spConceptMap_Name Name of the concept map }
    spConceptMap_Product, {@enum.value "product" spConceptMap_Product Reference to element/field/ValueSet mapping depends on }
    spConceptMap_Publisher, {@enum.value "publisher" spConceptMap_Publisher Name of the publisher of the concept map }
    spConceptMap_Source, {@enum.value "source" spConceptMap_Source Identifies the source of the concepts which are being mapped }
    spConceptMap_Sourcecode, {@enum.value "source-code" spConceptMap_Sourcecode Identifies element being mapped }
    spConceptMap_Sourcesystem, {@enum.value "source-system" spConceptMap_Sourcesystem Code System (if value set crosses code systems) }
    spConceptMap_Sourceuri, {@enum.value "source-uri" spConceptMap_Sourceuri Identifies the source of the concepts which are being mapped }
    spConceptMap_Status, {@enum.value "status" spConceptMap_Status Status of the concept map }
    spConceptMap_Target, {@enum.value "target" spConceptMap_Target Provides context to the mappings }
    spConceptMap_Targetcode, {@enum.value "target-code" spConceptMap_Targetcode Code that identifies the target element }
    spConceptMap_Targetsystem, {@enum.value "target-system" spConceptMap_Targetsystem System of the target (if necessary) }
    spConceptMap_Url, {@enum.value "url" spConceptMap_Url The URL of the concept map }
    spConceptMap_Version); {@enum.value "version" spConceptMap_Version The version identifier of the concept map }

  {@Enum TSearchParamsCondition
    Search Parameters for Condition
  }
  TSearchParamsCondition = (
    spCondition__content, {@enum.value "_content" spCondition__content Search on the entire content of the resource }
    spCondition__id, {@enum.value "_id" spCondition__id Logical id of this artifact }
    spCondition__lastUpdated, {@enum.value "_lastUpdated" spCondition__lastUpdated When the resource version last changed }
    spCondition__profile, {@enum.value "_profile" spCondition__profile Profiles this resource claims to conform to }
    spCondition__query, {@enum.value "_query" spCondition__query A custom search profile that describes a specific defined query operation }
    spCondition__security, {@enum.value "_security" spCondition__security Security Labels applied to this resource }
    spCondition__tag, {@enum.value "_tag" spCondition__tag Tags applied to this resource }
    spCondition__text, {@enum.value "_text" spCondition__text Search on the narrative of the resource }
    spCondition_Age, {@enum.value "age" spCondition_Age Search based on Condition onsetAge }
    spCondition_Asserter, {@enum.value "asserter" spCondition_Asserter Person who asserts this condition }
    spCondition_Bodysite, {@enum.value "body-site" spCondition_Bodysite Anatomical location, if relevant }
    spCondition_Category, {@enum.value "category" spCondition_Category The category of the condition }
    spCondition_Clinicalstatus, {@enum.value "clinicalstatus" spCondition_Clinicalstatus The clinical status of the condition }
    spCondition_Code, {@enum.value "code" spCondition_Code Code for the condition }
    spCondition_Daterecorded, {@enum.value "date-recorded" spCondition_Daterecorded A date, when the Condition statement was documented }
    spCondition_Encounter, {@enum.value "encounter" spCondition_Encounter Encounter when condition first asserted }
    spCondition_Evidence, {@enum.value "evidence" spCondition_Evidence Manifestation/symptom }
    spCondition_Identifier, {@enum.value "identifier" spCondition_Identifier A unique identifier of the condition record }
    spCondition_Onset, {@enum.value "onset" spCondition_Onset Date related onsets (dateTime and Period) }
    spCondition_Onsetinfo, {@enum.value "onset-info" spCondition_Onsetinfo Other onsets (boolean, age, range, string) }
    spCondition_Patient, {@enum.value "patient" spCondition_Patient Who has the condition? }
    spCondition_Severity, {@enum.value "severity" spCondition_Severity The severity of the condition }
    spCondition_Stage); {@enum.value "stage" spCondition_Stage Simple summary (disease specific) }

  {@Enum TSearchParamsConformance
    Search Parameters for Conformance
  }
  TSearchParamsConformance = (
    spConformance__content, {@enum.value "_content" spConformance__content Search on the entire content of the resource }
    spConformance__id, {@enum.value "_id" spConformance__id Logical id of this artifact }
    spConformance__lastUpdated, {@enum.value "_lastUpdated" spConformance__lastUpdated When the resource version last changed }
    spConformance__profile, {@enum.value "_profile" spConformance__profile Profiles this resource claims to conform to }
    spConformance__query, {@enum.value "_query" spConformance__query A custom search profile that describes a specific defined query operation }
    spConformance__security, {@enum.value "_security" spConformance__security Security Labels applied to this resource }
    spConformance__tag, {@enum.value "_tag" spConformance__tag Tags applied to this resource }
    spConformance__text, {@enum.value "_text" spConformance__text Search on the narrative of the resource }
    spConformance_Date, {@enum.value "date" spConformance_Date The conformance statement publication date }
    spConformance_Description, {@enum.value "description" spConformance_Description Text search in the description of the conformance statement }
    spConformance_Event, {@enum.value "event" spConformance_Event Event code in a conformance statement }
    spConformance_Fhirversion, {@enum.value "fhirversion" spConformance_Fhirversion The version of FHIR }
    spConformance_Format, {@enum.value "format" spConformance_Format formats supported (xml | json | mime type) }
    spConformance_Mode, {@enum.value "mode" spConformance_Mode Mode - restful (server/client) or messaging (sender/receiver) }
    spConformance_Name, {@enum.value "name" spConformance_Name Name of the conformance statement }
    spConformance_Publisher, {@enum.value "publisher" spConformance_Publisher Name of the publisher of the conformance statement }
    spConformance_Resource, {@enum.value "resource" spConformance_Resource Name of a resource mentioned in a conformance statement }
    spConformance_Resourceprofile, {@enum.value "resourceprofile" spConformance_Resourceprofile A profile id invoked in a conformance statement }
    spConformance_Securityservice, {@enum.value "securityservice" spConformance_Securityservice OAuth | SMART-on-FHIR | NTLM | Basic | Kerberos | Certificates }
    spConformance_Software, {@enum.value "software" spConformance_Software Part of a the name of a software application }
    spConformance_Status, {@enum.value "status" spConformance_Status The current status of the conformance statement }
    spConformance_Supportedprofile, {@enum.value "supported-profile" spConformance_Supportedprofile Profiles for use cases supported }
    spConformance_Url, {@enum.value "url" spConformance_Url The uri that identifies the conformance statement }
    spConformance_Version); {@enum.value "version" spConformance_Version The version identifier of the conformance statement }

  {@Enum TSearchParamsContract
    Search Parameters for Contract
  }
  TSearchParamsContract = (
    spContract__content, {@enum.value "_content" spContract__content Search on the entire content of the resource }
    spContract__id, {@enum.value "_id" spContract__id Logical id of this artifact }
    spContract__lastUpdated, {@enum.value "_lastUpdated" spContract__lastUpdated When the resource version last changed }
    spContract__profile, {@enum.value "_profile" spContract__profile Profiles this resource claims to conform to }
    spContract__query, {@enum.value "_query" spContract__query A custom search profile that describes a specific defined query operation }
    spContract__security, {@enum.value "_security" spContract__security Security Labels applied to this resource }
    spContract__tag, {@enum.value "_tag" spContract__tag Tags applied to this resource }
    spContract__text, {@enum.value "_text" spContract__text Search on the narrative of the resource }
    spContract_Agent, {@enum.value "agent" spContract_Agent Agent to the Contact }
    spContract_Authority, {@enum.value "authority" spContract_Authority The authority of the contract }
    spContract_Domain, {@enum.value "domain" spContract_Domain The domain of the contract }
    spContract_Identifier, {@enum.value "identifier" spContract_Identifier The identity of the contract }
    spContract_Issued, {@enum.value "issued" spContract_Issued The date/time the contract was issued }
    spContract_Patient, {@enum.value "patient" spContract_Patient The identity of the topic of the contract (if a patient) }
    spContract_Signer, {@enum.value "signer" spContract_Signer Contract Signatory Party }
    spContract_Topic); {@enum.value "topic" spContract_Topic The identity of the topic of the contract }

  {@Enum TSearchParamsCoverage
    Search Parameters for Coverage
  }
  TSearchParamsCoverage = (
    spCoverage__content, {@enum.value "_content" spCoverage__content Search on the entire content of the resource }
    spCoverage__id, {@enum.value "_id" spCoverage__id Logical id of this artifact }
    spCoverage__lastUpdated, {@enum.value "_lastUpdated" spCoverage__lastUpdated When the resource version last changed }
    spCoverage__profile, {@enum.value "_profile" spCoverage__profile Profiles this resource claims to conform to }
    spCoverage__query, {@enum.value "_query" spCoverage__query A custom search profile that describes a specific defined query operation }
    spCoverage__security, {@enum.value "_security" spCoverage__security Security Labels applied to this resource }
    spCoverage__tag, {@enum.value "_tag" spCoverage__tag Tags applied to this resource }
    spCoverage__text, {@enum.value "_text" spCoverage__text Search on the narrative of the resource }
    spCoverage_Beneficiaryidentifier, {@enum.value "beneficiaryidentifier" spCoverage_Beneficiaryidentifier Covered party }
    spCoverage_Beneficiaryreference, {@enum.value "beneficiaryreference" spCoverage_Beneficiaryreference Covered party }
    spCoverage_Dependent, {@enum.value "dependent" spCoverage_Dependent Dependent number }
    spCoverage_Group, {@enum.value "group" spCoverage_Group Group identifier }
    spCoverage_Identifier, {@enum.value "identifier" spCoverage_Identifier The primary identifier of the insured and the coverage }
    spCoverage_Issueridentifier, {@enum.value "issueridentifier" spCoverage_Issueridentifier The identity of the insurer }
    spCoverage_Issuerreference, {@enum.value "issuerreference" spCoverage_Issuerreference The identity of the insurer }
    spCoverage_Plan, {@enum.value "plan" spCoverage_Plan A plan or policy identifier }
    spCoverage_Planholderidentifier, {@enum.value "planholderidentifier" spCoverage_Planholderidentifier Reference to the planholder }
    spCoverage_Planholderreference, {@enum.value "planholderreference" spCoverage_Planholderreference Reference to the planholder }
    spCoverage_Sequence, {@enum.value "sequence" spCoverage_Sequence Sequence number }
    spCoverage_Subplan, {@enum.value "subplan" spCoverage_Subplan Sub-plan identifier }
    spCoverage_Type); {@enum.value "type" spCoverage_Type The kind of coverage (health plan, auto, Workers Compensation) }

  {@Enum TSearchParamsDataElement
    Search Parameters for DataElement
  }
  TSearchParamsDataElement = (
    spDataElement__content, {@enum.value "_content" spDataElement__content Search on the entire content of the resource }
    spDataElement__id, {@enum.value "_id" spDataElement__id Logical id of this artifact }
    spDataElement__lastUpdated, {@enum.value "_lastUpdated" spDataElement__lastUpdated When the resource version last changed }
    spDataElement__profile, {@enum.value "_profile" spDataElement__profile Profiles this resource claims to conform to }
    spDataElement__query, {@enum.value "_query" spDataElement__query A custom search profile that describes a specific defined query operation }
    spDataElement__security, {@enum.value "_security" spDataElement__security Security Labels applied to this resource }
    spDataElement__tag, {@enum.value "_tag" spDataElement__tag Tags applied to this resource }
    spDataElement__text, {@enum.value "_text" spDataElement__text Search on the narrative of the resource }
    spDataElement_Code, {@enum.value "code" spDataElement_Code A code for the data element (server may choose to do subsumption) }
    spDataElement_Context, {@enum.value "context" spDataElement_Context A use context assigned to the data element }
    spDataElement_Date, {@enum.value "date" spDataElement_Date The data element publication date }
    spDataElement_Description, {@enum.value "description" spDataElement_Description Text search in the description of the data element.  This corresponds to the definition of the first DataElement.element. }
    spDataElement_Identifier, {@enum.value "identifier" spDataElement_Identifier The identifier of the data element }
    spDataElement_Name, {@enum.value "name" spDataElement_Name Name of the data element }
    spDataElement_ObjectClass, {@enum.value "objectClass" spDataElement_ObjectClass Matches on the 11179-objectClass extension value }
    spDataElement_ObjectClassProperty, {@enum.value "objectClassProperty" spDataElement_ObjectClassProperty Matches on the 11179-objectClassProperty extension value }
    spDataElement_Publisher, {@enum.value "publisher" spDataElement_Publisher Name of the publisher of the data element }
    spDataElement_Status, {@enum.value "status" spDataElement_Status The current status of the data element }
    spDataElement_Stringency, {@enum.value "stringency" spDataElement_Stringency The stringency of the data element definition }
    spDataElement_Url, {@enum.value "url" spDataElement_Url The official URL for the data element }
    spDataElement_Version); {@enum.value "version" spDataElement_Version The version identifier of the data element }

  {@Enum TSearchParamsDecisionSupportRule
    Search Parameters for DecisionSupportRule
  }
  TSearchParamsDecisionSupportRule = (
    spDecisionSupportRule__content, {@enum.value "_content" spDecisionSupportRule__content Search on the entire content of the resource }
    spDecisionSupportRule__id, {@enum.value "_id" spDecisionSupportRule__id Logical id of this artifact }
    spDecisionSupportRule__lastUpdated, {@enum.value "_lastUpdated" spDecisionSupportRule__lastUpdated When the resource version last changed }
    spDecisionSupportRule__profile, {@enum.value "_profile" spDecisionSupportRule__profile Profiles this resource claims to conform to }
    spDecisionSupportRule__query, {@enum.value "_query" spDecisionSupportRule__query A custom search profile that describes a specific defined query operation }
    spDecisionSupportRule__security, {@enum.value "_security" spDecisionSupportRule__security Security Labels applied to this resource }
    spDecisionSupportRule__tag, {@enum.value "_tag" spDecisionSupportRule__tag Tags applied to this resource }
    spDecisionSupportRule__text); {@enum.value "_text" spDecisionSupportRule__text Search on the narrative of the resource }

  {@Enum TSearchParamsDecisionSupportServiceModule
    Search Parameters for DecisionSupportServiceModule
  }
  TSearchParamsDecisionSupportServiceModule = (
    spDecisionSupportServiceModule__content, {@enum.value "_content" spDecisionSupportServiceModule__content Search on the entire content of the resource }
    spDecisionSupportServiceModule__id, {@enum.value "_id" spDecisionSupportServiceModule__id Logical id of this artifact }
    spDecisionSupportServiceModule__lastUpdated, {@enum.value "_lastUpdated" spDecisionSupportServiceModule__lastUpdated When the resource version last changed }
    spDecisionSupportServiceModule__profile, {@enum.value "_profile" spDecisionSupportServiceModule__profile Profiles this resource claims to conform to }
    spDecisionSupportServiceModule__query, {@enum.value "_query" spDecisionSupportServiceModule__query A custom search profile that describes a specific defined query operation }
    spDecisionSupportServiceModule__security, {@enum.value "_security" spDecisionSupportServiceModule__security Security Labels applied to this resource }
    spDecisionSupportServiceModule__tag, {@enum.value "_tag" spDecisionSupportServiceModule__tag Tags applied to this resource }
    spDecisionSupportServiceModule__text); {@enum.value "_text" spDecisionSupportServiceModule__text Search on the narrative of the resource }

  {@Enum TSearchParamsDetectedIssue
    Search Parameters for DetectedIssue
  }
  TSearchParamsDetectedIssue = (
    spDetectedIssue__content, {@enum.value "_content" spDetectedIssue__content Search on the entire content of the resource }
    spDetectedIssue__id, {@enum.value "_id" spDetectedIssue__id Logical id of this artifact }
    spDetectedIssue__lastUpdated, {@enum.value "_lastUpdated" spDetectedIssue__lastUpdated When the resource version last changed }
    spDetectedIssue__profile, {@enum.value "_profile" spDetectedIssue__profile Profiles this resource claims to conform to }
    spDetectedIssue__query, {@enum.value "_query" spDetectedIssue__query A custom search profile that describes a specific defined query operation }
    spDetectedIssue__security, {@enum.value "_security" spDetectedIssue__security Security Labels applied to this resource }
    spDetectedIssue__tag, {@enum.value "_tag" spDetectedIssue__tag Tags applied to this resource }
    spDetectedIssue__text, {@enum.value "_text" spDetectedIssue__text Search on the narrative of the resource }
    spDetectedIssue_Author, {@enum.value "author" spDetectedIssue_Author The provider or device that identified the issue }
    spDetectedIssue_Category, {@enum.value "category" spDetectedIssue_Category Issue Category, e.g. drug-drug, duplicate therapy, etc. }
    spDetectedIssue_Date, {@enum.value "date" spDetectedIssue_Date When identified }
    spDetectedIssue_Identifier, {@enum.value "identifier" spDetectedIssue_Identifier Unique id for the detected issue }
    spDetectedIssue_Implicated, {@enum.value "implicated" spDetectedIssue_Implicated Problem resource }
    spDetectedIssue_Patient); {@enum.value "patient" spDetectedIssue_Patient Associated patient }

  {@Enum TSearchParamsDevice
    Search Parameters for Device
  }
  TSearchParamsDevice = (
    spDevice__content, {@enum.value "_content" spDevice__content Search on the entire content of the resource }
    spDevice__id, {@enum.value "_id" spDevice__id Logical id of this artifact }
    spDevice__lastUpdated, {@enum.value "_lastUpdated" spDevice__lastUpdated When the resource version last changed }
    spDevice__profile, {@enum.value "_profile" spDevice__profile Profiles this resource claims to conform to }
    spDevice__query, {@enum.value "_query" spDevice__query A custom search profile that describes a specific defined query operation }
    spDevice__security, {@enum.value "_security" spDevice__security Security Labels applied to this resource }
    spDevice__tag, {@enum.value "_tag" spDevice__tag Tags applied to this resource }
    spDevice__text, {@enum.value "_text" spDevice__text Search on the narrative of the resource }
    spDevice_Identifier, {@enum.value "identifier" spDevice_Identifier Instance id from manufacturer, owner, and others }
    spDevice_Location, {@enum.value "location" spDevice_Location A location, where the resource is found }
    spDevice_Manufacturer, {@enum.value "manufacturer" spDevice_Manufacturer The manufacturer of the device }
    spDevice_Model, {@enum.value "model" spDevice_Model The model of the device }
    spDevice_Organization, {@enum.value "organization" spDevice_Organization The organization responsible for the device }
    spDevice_Patient, {@enum.value "patient" spDevice_Patient Patient information, if the resource is affixed to a person }
    spDevice_Type, {@enum.value "type" spDevice_Type The type of the device }
    spDevice_Udicarrier, {@enum.value "udicarrier" spDevice_Udicarrier Barcode string (udi) }
    spDevice_Url); {@enum.value "url" spDevice_Url Network address to contact device }

  {@Enum TSearchParamsDeviceComponent
    Search Parameters for DeviceComponent
  }
  TSearchParamsDeviceComponent = (
    spDeviceComponent__content, {@enum.value "_content" spDeviceComponent__content Search on the entire content of the resource }
    spDeviceComponent__id, {@enum.value "_id" spDeviceComponent__id Logical id of this artifact }
    spDeviceComponent__lastUpdated, {@enum.value "_lastUpdated" spDeviceComponent__lastUpdated When the resource version last changed }
    spDeviceComponent__profile, {@enum.value "_profile" spDeviceComponent__profile Profiles this resource claims to conform to }
    spDeviceComponent__query, {@enum.value "_query" spDeviceComponent__query A custom search profile that describes a specific defined query operation }
    spDeviceComponent__security, {@enum.value "_security" spDeviceComponent__security Security Labels applied to this resource }
    spDeviceComponent__tag, {@enum.value "_tag" spDeviceComponent__tag Tags applied to this resource }
    spDeviceComponent__text, {@enum.value "_text" spDeviceComponent__text Search on the narrative of the resource }
    spDeviceComponent_Parent, {@enum.value "parent" spDeviceComponent_Parent The parent DeviceComponent resource }
    spDeviceComponent_Source, {@enum.value "source" spDeviceComponent_Source The device source }
    spDeviceComponent_Type); {@enum.value "type" spDeviceComponent_Type The device component type }

  {@Enum TSearchParamsDeviceMetric
    Search Parameters for DeviceMetric
  }
  TSearchParamsDeviceMetric = (
    spDeviceMetric__content, {@enum.value "_content" spDeviceMetric__content Search on the entire content of the resource }
    spDeviceMetric__id, {@enum.value "_id" spDeviceMetric__id Logical id of this artifact }
    spDeviceMetric__lastUpdated, {@enum.value "_lastUpdated" spDeviceMetric__lastUpdated When the resource version last changed }
    spDeviceMetric__profile, {@enum.value "_profile" spDeviceMetric__profile Profiles this resource claims to conform to }
    spDeviceMetric__query, {@enum.value "_query" spDeviceMetric__query A custom search profile that describes a specific defined query operation }
    spDeviceMetric__security, {@enum.value "_security" spDeviceMetric__security Security Labels applied to this resource }
    spDeviceMetric__tag, {@enum.value "_tag" spDeviceMetric__tag Tags applied to this resource }
    spDeviceMetric__text, {@enum.value "_text" spDeviceMetric__text Search on the narrative of the resource }
    spDeviceMetric_Category, {@enum.value "category" spDeviceMetric_Category The category of the metric }
    spDeviceMetric_Identifier, {@enum.value "identifier" spDeviceMetric_Identifier The identifier of the metric }
    spDeviceMetric_Parent, {@enum.value "parent" spDeviceMetric_Parent The parent DeviceMetric resource }
    spDeviceMetric_Source, {@enum.value "source" spDeviceMetric_Source The device resource }
    spDeviceMetric_Type); {@enum.value "type" spDeviceMetric_Type The component type }

  {@Enum TSearchParamsDeviceUseRequest
    Search Parameters for DeviceUseRequest
  }
  TSearchParamsDeviceUseRequest = (
    spDeviceUseRequest__content, {@enum.value "_content" spDeviceUseRequest__content Search on the entire content of the resource }
    spDeviceUseRequest__id, {@enum.value "_id" spDeviceUseRequest__id Logical id of this artifact }
    spDeviceUseRequest__lastUpdated, {@enum.value "_lastUpdated" spDeviceUseRequest__lastUpdated When the resource version last changed }
    spDeviceUseRequest__profile, {@enum.value "_profile" spDeviceUseRequest__profile Profiles this resource claims to conform to }
    spDeviceUseRequest__query, {@enum.value "_query" spDeviceUseRequest__query A custom search profile that describes a specific defined query operation }
    spDeviceUseRequest__security, {@enum.value "_security" spDeviceUseRequest__security Security Labels applied to this resource }
    spDeviceUseRequest__tag, {@enum.value "_tag" spDeviceUseRequest__tag Tags applied to this resource }
    spDeviceUseRequest__text, {@enum.value "_text" spDeviceUseRequest__text Search on the narrative of the resource }
    spDeviceUseRequest_Device, {@enum.value "device" spDeviceUseRequest_Device Device requested }
    spDeviceUseRequest_Patient, {@enum.value "patient" spDeviceUseRequest_Patient Search by subject - a patient }
    spDeviceUseRequest_Subject); {@enum.value "subject" spDeviceUseRequest_Subject Search by subject }

  {@Enum TSearchParamsDeviceUseStatement
    Search Parameters for DeviceUseStatement
  }
  TSearchParamsDeviceUseStatement = (
    spDeviceUseStatement__content, {@enum.value "_content" spDeviceUseStatement__content Search on the entire content of the resource }
    spDeviceUseStatement__id, {@enum.value "_id" spDeviceUseStatement__id Logical id of this artifact }
    spDeviceUseStatement__lastUpdated, {@enum.value "_lastUpdated" spDeviceUseStatement__lastUpdated When the resource version last changed }
    spDeviceUseStatement__profile, {@enum.value "_profile" spDeviceUseStatement__profile Profiles this resource claims to conform to }
    spDeviceUseStatement__query, {@enum.value "_query" spDeviceUseStatement__query A custom search profile that describes a specific defined query operation }
    spDeviceUseStatement__security, {@enum.value "_security" spDeviceUseStatement__security Security Labels applied to this resource }
    spDeviceUseStatement__tag, {@enum.value "_tag" spDeviceUseStatement__tag Tags applied to this resource }
    spDeviceUseStatement__text, {@enum.value "_text" spDeviceUseStatement__text Search on the narrative of the resource }
    spDeviceUseStatement_Device, {@enum.value "device" spDeviceUseStatement_Device Search by device }
    spDeviceUseStatement_Patient, {@enum.value "patient" spDeviceUseStatement_Patient Search by subject - a patient }
    spDeviceUseStatement_Subject); {@enum.value "subject" spDeviceUseStatement_Subject Search by subject }

  {@Enum TSearchParamsDiagnosticOrder
    Search Parameters for DiagnosticOrder
  }
  TSearchParamsDiagnosticOrder = (
    spDiagnosticOrder__content, {@enum.value "_content" spDiagnosticOrder__content Search on the entire content of the resource }
    spDiagnosticOrder__id, {@enum.value "_id" spDiagnosticOrder__id Logical id of this artifact }
    spDiagnosticOrder__lastUpdated, {@enum.value "_lastUpdated" spDiagnosticOrder__lastUpdated When the resource version last changed }
    spDiagnosticOrder__profile, {@enum.value "_profile" spDiagnosticOrder__profile Profiles this resource claims to conform to }
    spDiagnosticOrder__query, {@enum.value "_query" spDiagnosticOrder__query A custom search profile that describes a specific defined query operation }
    spDiagnosticOrder__security, {@enum.value "_security" spDiagnosticOrder__security Security Labels applied to this resource }
    spDiagnosticOrder__tag, {@enum.value "_tag" spDiagnosticOrder__tag Tags applied to this resource }
    spDiagnosticOrder__text, {@enum.value "_text" spDiagnosticOrder__text Search on the narrative of the resource }
    spDiagnosticOrder_Actor, {@enum.value "actor" spDiagnosticOrder_Actor Who recorded or did this }
    spDiagnosticOrder_Bodysite, {@enum.value "bodysite" spDiagnosticOrder_Bodysite Location of requested test (if applicable) }
    spDiagnosticOrder_Code, {@enum.value "code" spDiagnosticOrder_Code Code to indicate the item (test or panel) being ordered }
    spDiagnosticOrder_Encounter, {@enum.value "encounter" spDiagnosticOrder_Encounter The encounter that this diagnostic order is associated with }
    spDiagnosticOrder_Eventdate, {@enum.value "event-date" spDiagnosticOrder_Eventdate The date at which the event happened }
    spDiagnosticOrder_Eventstatus, {@enum.value "event-status" spDiagnosticOrder_Eventstatus proposed | draft | planned | requested | received | accepted | in-progress | review | completed | cancelled | suspended | rejected | failed | entered-in-error }
    spDiagnosticOrder_Eventstatusdate, {@enum.value "event-status-date" spDiagnosticOrder_Eventstatusdate A combination of past-status and date }
    spDiagnosticOrder_Identifier, {@enum.value "identifier" spDiagnosticOrder_Identifier Identifiers assigned to this order }
    spDiagnosticOrder_Itemdate, {@enum.value "item-date" spDiagnosticOrder_Itemdate The date at which the event happened }
    spDiagnosticOrder_Itempaststatus, {@enum.value "item-past-status" spDiagnosticOrder_Itempaststatus proposed | draft | planned | requested | received | accepted | in-progress | review | completed | cancelled | suspended | rejected | failed | entered-in-error }
    spDiagnosticOrder_Itemstatus, {@enum.value "item-status" spDiagnosticOrder_Itemstatus proposed | draft | planned | requested | received | accepted | in-progress | review | completed | cancelled | suspended | rejected | failed | entered-in-error }
    spDiagnosticOrder_Itemstatusdate, {@enum.value "item-status-date" spDiagnosticOrder_Itemstatusdate A combination of item-past-status and item-date }
    spDiagnosticOrder_Orderer, {@enum.value "orderer" spDiagnosticOrder_Orderer Who ordered the test }
    spDiagnosticOrder_Patient, {@enum.value "patient" spDiagnosticOrder_Patient Who and/or what test is about }
    spDiagnosticOrder_Specimen, {@enum.value "specimen" spDiagnosticOrder_Specimen If the whole order relates to specific specimens }
    spDiagnosticOrder_Status, {@enum.value "status" spDiagnosticOrder_Status proposed | draft | planned | requested | received | accepted | in-progress | review | completed | cancelled | suspended | rejected | failed | entered-in-error }
    spDiagnosticOrder_Subject); {@enum.value "subject" spDiagnosticOrder_Subject Who and/or what test is about }

  {@Enum TSearchParamsDiagnosticReport
    Search Parameters for DiagnosticReport
  }
  TSearchParamsDiagnosticReport = (
    spDiagnosticReport__content, {@enum.value "_content" spDiagnosticReport__content Search on the entire content of the resource }
    spDiagnosticReport__id, {@enum.value "_id" spDiagnosticReport__id Logical id of this artifact }
    spDiagnosticReport__lastUpdated, {@enum.value "_lastUpdated" spDiagnosticReport__lastUpdated When the resource version last changed }
    spDiagnosticReport__profile, {@enum.value "_profile" spDiagnosticReport__profile Profiles this resource claims to conform to }
    spDiagnosticReport__query, {@enum.value "_query" spDiagnosticReport__query A custom search profile that describes a specific defined query operation }
    spDiagnosticReport__security, {@enum.value "_security" spDiagnosticReport__security Security Labels applied to this resource }
    spDiagnosticReport__tag, {@enum.value "_tag" spDiagnosticReport__tag Tags applied to this resource }
    spDiagnosticReport__text, {@enum.value "_text" spDiagnosticReport__text Search on the narrative of the resource }
    spDiagnosticReport_Category, {@enum.value "category" spDiagnosticReport_Category Which diagnostic discipline/department created the report }
    spDiagnosticReport_Code, {@enum.value "code" spDiagnosticReport_Code The code for the report as a whole, as opposed to codes for the atomic results, which are the names on the observation resource referred to from the result }
    spDiagnosticReport_Date, {@enum.value "date" spDiagnosticReport_Date The clinically relevant time of the report }
    spDiagnosticReport_Diagnosis, {@enum.value "diagnosis" spDiagnosticReport_Diagnosis A coded diagnosis on the report }
    spDiagnosticReport_Encounter, {@enum.value "encounter" spDiagnosticReport_Encounter The Encounter when the order was made }
    spDiagnosticReport_Identifier, {@enum.value "identifier" spDiagnosticReport_Identifier An identifier for the report }
    spDiagnosticReport_Image, {@enum.value "image" spDiagnosticReport_Image A reference to the image source. }
    spDiagnosticReport_Issued, {@enum.value "issued" spDiagnosticReport_Issued When the report was issued }
    spDiagnosticReport_Patient, {@enum.value "patient" spDiagnosticReport_Patient The subject of the report if a patient }
    spDiagnosticReport_Performer, {@enum.value "performer" spDiagnosticReport_Performer Who was the source of the report (organization) }
    spDiagnosticReport_Request, {@enum.value "request" spDiagnosticReport_Request Reference to the test or procedure request. }
    spDiagnosticReport_Result, {@enum.value "result" spDiagnosticReport_Result Link to an atomic result (observation resource) }
    spDiagnosticReport_Specimen, {@enum.value "specimen" spDiagnosticReport_Specimen The specimen details }
    spDiagnosticReport_Status, {@enum.value "status" spDiagnosticReport_Status The status of the report }
    spDiagnosticReport_Subject); {@enum.value "subject" spDiagnosticReport_Subject The subject of the report }

  {@Enum TSearchParamsDocumentManifest
    Search Parameters for DocumentManifest
  }
  TSearchParamsDocumentManifest = (
    spDocumentManifest__content, {@enum.value "_content" spDocumentManifest__content Search on the entire content of the resource }
    spDocumentManifest__id, {@enum.value "_id" spDocumentManifest__id Logical id of this artifact }
    spDocumentManifest__lastUpdated, {@enum.value "_lastUpdated" spDocumentManifest__lastUpdated When the resource version last changed }
    spDocumentManifest__profile, {@enum.value "_profile" spDocumentManifest__profile Profiles this resource claims to conform to }
    spDocumentManifest__query, {@enum.value "_query" spDocumentManifest__query A custom search profile that describes a specific defined query operation }
    spDocumentManifest__security, {@enum.value "_security" spDocumentManifest__security Security Labels applied to this resource }
    spDocumentManifest__tag, {@enum.value "_tag" spDocumentManifest__tag Tags applied to this resource }
    spDocumentManifest__text, {@enum.value "_text" spDocumentManifest__text Search on the narrative of the resource }
    spDocumentManifest_Author, {@enum.value "author" spDocumentManifest_Author Who and/or what authored the manifest }
    spDocumentManifest_Contentref, {@enum.value "content-ref" spDocumentManifest_Contentref Contents of this set of documents }
    spDocumentManifest_Created, {@enum.value "created" spDocumentManifest_Created When this document manifest created }
    spDocumentManifest_Description, {@enum.value "description" spDocumentManifest_Description Human-readable description (title) }
    spDocumentManifest_Identifier, {@enum.value "identifier" spDocumentManifest_Identifier Unique Identifier for the set of documents }
    spDocumentManifest_Patient, {@enum.value "patient" spDocumentManifest_Patient The subject of the set of documents }
    spDocumentManifest_Recipient, {@enum.value "recipient" spDocumentManifest_Recipient Intended to get notified about this set of documents }
    spDocumentManifest_Relatedid, {@enum.value "related-id" spDocumentManifest_Relatedid Identifiers of things that are related }
    spDocumentManifest_Relatedref, {@enum.value "related-ref" spDocumentManifest_Relatedref Related Resource }
    spDocumentManifest_Source, {@enum.value "source" spDocumentManifest_Source The source system/application/software }
    spDocumentManifest_Status, {@enum.value "status" spDocumentManifest_Status current | superseded | entered-in-error }
    spDocumentManifest_Subject, {@enum.value "subject" spDocumentManifest_Subject The subject of the set of documents }
    spDocumentManifest_Type); {@enum.value "type" spDocumentManifest_Type Kind of document set }

  {@Enum TSearchParamsDocumentReference
    Search Parameters for DocumentReference
  }
  TSearchParamsDocumentReference = (
    spDocumentReference__content, {@enum.value "_content" spDocumentReference__content Search on the entire content of the resource }
    spDocumentReference__id, {@enum.value "_id" spDocumentReference__id Logical id of this artifact }
    spDocumentReference__lastUpdated, {@enum.value "_lastUpdated" spDocumentReference__lastUpdated When the resource version last changed }
    spDocumentReference__profile, {@enum.value "_profile" spDocumentReference__profile Profiles this resource claims to conform to }
    spDocumentReference__query, {@enum.value "_query" spDocumentReference__query A custom search profile that describes a specific defined query operation }
    spDocumentReference__security, {@enum.value "_security" spDocumentReference__security Security Labels applied to this resource }
    spDocumentReference__tag, {@enum.value "_tag" spDocumentReference__tag Tags applied to this resource }
    spDocumentReference__text, {@enum.value "_text" spDocumentReference__text Search on the narrative of the resource }
    spDocumentReference_Authenticator, {@enum.value "authenticator" spDocumentReference_Authenticator Who/what authenticated the document }
    spDocumentReference_Author, {@enum.value "author" spDocumentReference_Author Who and/or what authored the document }
    spDocumentReference_Class, {@enum.value "class" spDocumentReference_Class Categorization of document }
    spDocumentReference_Created, {@enum.value "created" spDocumentReference_Created Document creation time }
    spDocumentReference_Custodian, {@enum.value "custodian" spDocumentReference_Custodian Organization which maintains the document }
    spDocumentReference_Description, {@enum.value "description" spDocumentReference_Description Human-readable description (title) }
    spDocumentReference_Encounter, {@enum.value "encounter" spDocumentReference_Encounter Context of the document  content }
    spDocumentReference_Event, {@enum.value "event" spDocumentReference_Event Main Clinical Acts Documented }
    spDocumentReference_Facility, {@enum.value "facility" spDocumentReference_Facility Kind of facility where patient was seen }
    spDocumentReference_Format, {@enum.value "format" spDocumentReference_Format Format/content rules for the document }
    spDocumentReference_Identifier, {@enum.value "identifier" spDocumentReference_Identifier Master Version Specific Identifier }
    spDocumentReference_Indexed, {@enum.value "indexed" spDocumentReference_Indexed When this document reference created }
    spDocumentReference_Language, {@enum.value "language" spDocumentReference_Language Human language of the content (BCP-47) }
    spDocumentReference_Location, {@enum.value "location" spDocumentReference_Location Uri where the data can be found }
    spDocumentReference_Patient, {@enum.value "patient" spDocumentReference_Patient Who/what is the subject of the document }
    spDocumentReference_Period, {@enum.value "period" spDocumentReference_Period Time of service that is being documented }
    spDocumentReference_Relatedid, {@enum.value "related-id" spDocumentReference_Relatedid Identifier of related objects or events }
    spDocumentReference_Relatedref, {@enum.value "related-ref" spDocumentReference_Relatedref Related Resource }
    spDocumentReference_Relatesto, {@enum.value "relatesto" spDocumentReference_Relatesto Target of the relationship }
    spDocumentReference_Relation, {@enum.value "relation" spDocumentReference_Relation replaces | transforms | signs | appends }
    spDocumentReference_Relationship, {@enum.value "relationship" spDocumentReference_Relationship Combination of relation and relatesTo }
    spDocumentReference_Securitylabel, {@enum.value "securitylabel" spDocumentReference_Securitylabel Document security-tags }
    spDocumentReference_Setting, {@enum.value "setting" spDocumentReference_Setting Additional details about where the content was created (e.g. clinical specialty) }
    spDocumentReference_Status, {@enum.value "status" spDocumentReference_Status current | superseded | entered-in-error }
    spDocumentReference_Subject, {@enum.value "subject" spDocumentReference_Subject Who/what is the subject of the document }
    spDocumentReference_Type); {@enum.value "type" spDocumentReference_Type Kind of document (LOINC if possible) }

  {@Enum TSearchParamsEligibilityRequest
    Search Parameters for EligibilityRequest
  }
  TSearchParamsEligibilityRequest = (
    spEligibilityRequest__content, {@enum.value "_content" spEligibilityRequest__content Search on the entire content of the resource }
    spEligibilityRequest__id, {@enum.value "_id" spEligibilityRequest__id Logical id of this artifact }
    spEligibilityRequest__lastUpdated, {@enum.value "_lastUpdated" spEligibilityRequest__lastUpdated When the resource version last changed }
    spEligibilityRequest__profile, {@enum.value "_profile" spEligibilityRequest__profile Profiles this resource claims to conform to }
    spEligibilityRequest__query, {@enum.value "_query" spEligibilityRequest__query A custom search profile that describes a specific defined query operation }
    spEligibilityRequest__security, {@enum.value "_security" spEligibilityRequest__security Security Labels applied to this resource }
    spEligibilityRequest__tag, {@enum.value "_tag" spEligibilityRequest__tag Tags applied to this resource }
    spEligibilityRequest__text, {@enum.value "_text" spEligibilityRequest__text Search on the narrative of the resource }
    spEligibilityRequest_Created, {@enum.value "created" spEligibilityRequest_Created The creation date for the EOB }
    spEligibilityRequest_Facility, {@enum.value "facility" spEligibilityRequest_Facility Facility responsible for the goods and services }
    spEligibilityRequest_Identifier, {@enum.value "identifier" spEligibilityRequest_Identifier The business identifier of the Eligibility }
    spEligibilityRequest_Organization, {@enum.value "organization" spEligibilityRequest_Organization The reference to the providing organization }
    spEligibilityRequest_Patient, {@enum.value "patient" spEligibilityRequest_Patient The reference to the patient }
    spEligibilityRequest_Provider); {@enum.value "provider" spEligibilityRequest_Provider The reference to the provider }

  {@Enum TSearchParamsEligibilityResponse
    Search Parameters for EligibilityResponse
  }
  TSearchParamsEligibilityResponse = (
    spEligibilityResponse__content, {@enum.value "_content" spEligibilityResponse__content Search on the entire content of the resource }
    spEligibilityResponse__id, {@enum.value "_id" spEligibilityResponse__id Logical id of this artifact }
    spEligibilityResponse__lastUpdated, {@enum.value "_lastUpdated" spEligibilityResponse__lastUpdated When the resource version last changed }
    spEligibilityResponse__profile, {@enum.value "_profile" spEligibilityResponse__profile Profiles this resource claims to conform to }
    spEligibilityResponse__query, {@enum.value "_query" spEligibilityResponse__query A custom search profile that describes a specific defined query operation }
    spEligibilityResponse__security, {@enum.value "_security" spEligibilityResponse__security Security Labels applied to this resource }
    spEligibilityResponse__tag, {@enum.value "_tag" spEligibilityResponse__tag Tags applied to this resource }
    spEligibilityResponse__text, {@enum.value "_text" spEligibilityResponse__text Search on the narrative of the resource }
    spEligibilityResponse_Created, {@enum.value "created" spEligibilityResponse_Created The creation date }
    spEligibilityResponse_Disposition, {@enum.value "disposition" spEligibilityResponse_Disposition The contents of the disposition message }
    spEligibilityResponse_Identifier, {@enum.value "identifier" spEligibilityResponse_Identifier The business identifier }
    spEligibilityResponse_Organization, {@enum.value "organization" spEligibilityResponse_Organization The organization which generated this resource }
    spEligibilityResponse_Outcome, {@enum.value "outcome" spEligibilityResponse_Outcome The processing outcome }
    spEligibilityResponse_Request, {@enum.value "request" spEligibilityResponse_Request The EligibilityRequest reference }
    spEligibilityResponse_Requestorganization, {@enum.value "requestorganization" spEligibilityResponse_Requestorganization Reference to the EligibilityRequest organization }
    spEligibilityResponse_Requestprovider); {@enum.value "requestprovider" spEligibilityResponse_Requestprovider Reference to the EligibilityRequest provider }

  {@Enum TSearchParamsEncounter
    Search Parameters for Encounter
  }
  TSearchParamsEncounter = (
    spEncounter__content, {@enum.value "_content" spEncounter__content Search on the entire content of the resource }
    spEncounter__id, {@enum.value "_id" spEncounter__id Logical id of this artifact }
    spEncounter__lastUpdated, {@enum.value "_lastUpdated" spEncounter__lastUpdated When the resource version last changed }
    spEncounter__profile, {@enum.value "_profile" spEncounter__profile Profiles this resource claims to conform to }
    spEncounter__query, {@enum.value "_query" spEncounter__query A custom search profile that describes a specific defined query operation }
    spEncounter__security, {@enum.value "_security" spEncounter__security Security Labels applied to this resource }
    spEncounter__tag, {@enum.value "_tag" spEncounter__tag Tags applied to this resource }
    spEncounter__text, {@enum.value "_text" spEncounter__text Search on the narrative of the resource }
    spEncounter_Appointment, {@enum.value "appointment" spEncounter_Appointment The appointment that scheduled this encounter }
    spEncounter_Condition, {@enum.value "condition" spEncounter_Condition Reason the encounter takes place (resource) }
    spEncounter_Date, {@enum.value "date" spEncounter_Date A date within the period the Encounter lasted }
    spEncounter_Episodeofcare, {@enum.value "episodeofcare" spEncounter_Episodeofcare Episode(s) of care that this encounter should be recorded against }
    spEncounter_Identifier, {@enum.value "identifier" spEncounter_Identifier Identifier(s) by which this encounter is known }
    spEncounter_Incomingreferral, {@enum.value "incomingreferral" spEncounter_Incomingreferral The ReferralRequest that initiated this encounter }
    spEncounter_Indication, {@enum.value "indication" spEncounter_Indication Reason the encounter takes place (resource) }
    spEncounter_Length, {@enum.value "length" spEncounter_Length Length of encounter in days }
    spEncounter_Location, {@enum.value "location" spEncounter_Location Location the encounter takes place }
    spEncounter_Locationperiod, {@enum.value "location-period" spEncounter_Locationperiod Time period during which the patient was present at the location }
    spEncounter_Partof, {@enum.value "part-of" spEncounter_Partof Another Encounter this encounter is part of }
    spEncounter_Participant, {@enum.value "participant" spEncounter_Participant Persons involved in the encounter other than the patient }
    spEncounter_Participanttype, {@enum.value "participant-type" spEncounter_Participanttype Role of participant in encounter }
    spEncounter_Patient, {@enum.value "patient" spEncounter_Patient The patient present at the encounter }
    spEncounter_Practitioner, {@enum.value "practitioner" spEncounter_Practitioner Persons involved in the encounter other than the patient }
    spEncounter_Procedure, {@enum.value "procedure" spEncounter_Procedure Reason the encounter takes place (resource) }
    spEncounter_Reason, {@enum.value "reason" spEncounter_Reason Reason the encounter takes place (code) }
    spEncounter_Specialarrangement, {@enum.value "special-arrangement" spEncounter_Specialarrangement Wheelchair, translator, stretcher, etc. }
    spEncounter_Status, {@enum.value "status" spEncounter_Status planned | arrived | in-progress | onleave | finished | cancelled }
    spEncounter_Type); {@enum.value "type" spEncounter_Type Specific type of encounter }

  {@Enum TSearchParamsEnrollmentRequest
    Search Parameters for EnrollmentRequest
  }
  TSearchParamsEnrollmentRequest = (
    spEnrollmentRequest__content, {@enum.value "_content" spEnrollmentRequest__content Search on the entire content of the resource }
    spEnrollmentRequest__id, {@enum.value "_id" spEnrollmentRequest__id Logical id of this artifact }
    spEnrollmentRequest__lastUpdated, {@enum.value "_lastUpdated" spEnrollmentRequest__lastUpdated When the resource version last changed }
    spEnrollmentRequest__profile, {@enum.value "_profile" spEnrollmentRequest__profile Profiles this resource claims to conform to }
    spEnrollmentRequest__query, {@enum.value "_query" spEnrollmentRequest__query A custom search profile that describes a specific defined query operation }
    spEnrollmentRequest__security, {@enum.value "_security" spEnrollmentRequest__security Security Labels applied to this resource }
    spEnrollmentRequest__tag, {@enum.value "_tag" spEnrollmentRequest__tag Tags applied to this resource }
    spEnrollmentRequest__text, {@enum.value "_text" spEnrollmentRequest__text Search on the narrative of the resource }
    spEnrollmentRequest_Identifier, {@enum.value "identifier" spEnrollmentRequest_Identifier The business identifier of the Enrollment }
    spEnrollmentRequest_Patient, {@enum.value "patient" spEnrollmentRequest_Patient The party to be enrolled }
    spEnrollmentRequest_Subject); {@enum.value "subject" spEnrollmentRequest_Subject The party to be enrolled }

  {@Enum TSearchParamsEnrollmentResponse
    Search Parameters for EnrollmentResponse
  }
  TSearchParamsEnrollmentResponse = (
    spEnrollmentResponse__content, {@enum.value "_content" spEnrollmentResponse__content Search on the entire content of the resource }
    spEnrollmentResponse__id, {@enum.value "_id" spEnrollmentResponse__id Logical id of this artifact }
    spEnrollmentResponse__lastUpdated, {@enum.value "_lastUpdated" spEnrollmentResponse__lastUpdated When the resource version last changed }
    spEnrollmentResponse__profile, {@enum.value "_profile" spEnrollmentResponse__profile Profiles this resource claims to conform to }
    spEnrollmentResponse__query, {@enum.value "_query" spEnrollmentResponse__query A custom search profile that describes a specific defined query operation }
    spEnrollmentResponse__security, {@enum.value "_security" spEnrollmentResponse__security Security Labels applied to this resource }
    spEnrollmentResponse__tag, {@enum.value "_tag" spEnrollmentResponse__tag Tags applied to this resource }
    spEnrollmentResponse__text, {@enum.value "_text" spEnrollmentResponse__text Search on the narrative of the resource }
    spEnrollmentResponse_Identifier); {@enum.value "identifier" spEnrollmentResponse_Identifier The business identifier of the Explanation of Benefit }

  {@Enum TSearchParamsEpisodeOfCare
    Search Parameters for EpisodeOfCare
  }
  TSearchParamsEpisodeOfCare = (
    spEpisodeOfCare__content, {@enum.value "_content" spEpisodeOfCare__content Search on the entire content of the resource }
    spEpisodeOfCare__id, {@enum.value "_id" spEpisodeOfCare__id Logical id of this artifact }
    spEpisodeOfCare__lastUpdated, {@enum.value "_lastUpdated" spEpisodeOfCare__lastUpdated When the resource version last changed }
    spEpisodeOfCare__profile, {@enum.value "_profile" spEpisodeOfCare__profile Profiles this resource claims to conform to }
    spEpisodeOfCare__query, {@enum.value "_query" spEpisodeOfCare__query A custom search profile that describes a specific defined query operation }
    spEpisodeOfCare__security, {@enum.value "_security" spEpisodeOfCare__security Security Labels applied to this resource }
    spEpisodeOfCare__tag, {@enum.value "_tag" spEpisodeOfCare__tag Tags applied to this resource }
    spEpisodeOfCare__text, {@enum.value "_text" spEpisodeOfCare__text Search on the narrative of the resource }
    spEpisodeOfCare_Caremanager, {@enum.value "care-manager" spEpisodeOfCare_Caremanager Care manager/care co-ordinator for the patient }
    spEpisodeOfCare_Condition, {@enum.value "condition" spEpisodeOfCare_Condition Conditions/problems/diagnoses this episode of care is for }
    spEpisodeOfCare_Date, {@enum.value "date" spEpisodeOfCare_Date The provided date search value falls within the episode of care's period }
    spEpisodeOfCare_Identifier, {@enum.value "identifier" spEpisodeOfCare_Identifier Identifier(s) for the EpisodeOfCare }
    spEpisodeOfCare_Incomingreferral, {@enum.value "incomingreferral" spEpisodeOfCare_Incomingreferral Incoming Referral Request }
    spEpisodeOfCare_Organization, {@enum.value "organization" spEpisodeOfCare_Organization The organization that has assumed the specific responsibilities of this EpisodeOfCare }
    spEpisodeOfCare_Patient, {@enum.value "patient" spEpisodeOfCare_Patient Patient for this episode of care }
    spEpisodeOfCare_Status, {@enum.value "status" spEpisodeOfCare_Status The current status of the Episode of Care as provided (does not check the status history collection) }
    spEpisodeOfCare_Teammember, {@enum.value "team-member" spEpisodeOfCare_Teammember A Practitioner or Organization allocated to the care team for this EpisodeOfCare }
    spEpisodeOfCare_Type); {@enum.value "type" spEpisodeOfCare_Type Type/class  - e.g. specialist referral, disease management }

  {@Enum TSearchParamsExpansionProfile
    Search Parameters for ExpansionProfile
  }
  TSearchParamsExpansionProfile = (
    spExpansionProfile__content, {@enum.value "_content" spExpansionProfile__content Search on the entire content of the resource }
    spExpansionProfile__id, {@enum.value "_id" spExpansionProfile__id Logical id of this artifact }
    spExpansionProfile__lastUpdated, {@enum.value "_lastUpdated" spExpansionProfile__lastUpdated When the resource version last changed }
    spExpansionProfile__profile, {@enum.value "_profile" spExpansionProfile__profile Profiles this resource claims to conform to }
    spExpansionProfile__query, {@enum.value "_query" spExpansionProfile__query A custom search profile that describes a specific defined query operation }
    spExpansionProfile__security, {@enum.value "_security" spExpansionProfile__security Security Labels applied to this resource }
    spExpansionProfile__tag, {@enum.value "_tag" spExpansionProfile__tag Tags applied to this resource }
    spExpansionProfile__text, {@enum.value "_text" spExpansionProfile__text Search on the narrative of the resource }
    spExpansionProfile_Date, {@enum.value "date" spExpansionProfile_Date The expansion profile publication date }
    spExpansionProfile_Description, {@enum.value "description" spExpansionProfile_Description Text search in the description of the expansion profile }
    spExpansionProfile_Identifier, {@enum.value "identifier" spExpansionProfile_Identifier The identifier for the expansion profile }
    spExpansionProfile_Name, {@enum.value "name" spExpansionProfile_Name The name of the expansion profile }
    spExpansionProfile_Publisher, {@enum.value "publisher" spExpansionProfile_Publisher Name of the publisher of the expansion profile }
    spExpansionProfile_Status, {@enum.value "status" spExpansionProfile_Status The status of the expansion profile }
    spExpansionProfile_Url, {@enum.value "url" spExpansionProfile_Url The logical URL for the expansion profile }
    spExpansionProfile_Version); {@enum.value "version" spExpansionProfile_Version The version identifier of the expansion profile }

  {@Enum TSearchParamsExplanationOfBenefit
    Search Parameters for ExplanationOfBenefit
  }
  TSearchParamsExplanationOfBenefit = (
    spExplanationOfBenefit__content, {@enum.value "_content" spExplanationOfBenefit__content Search on the entire content of the resource }
    spExplanationOfBenefit__id, {@enum.value "_id" spExplanationOfBenefit__id Logical id of this artifact }
    spExplanationOfBenefit__lastUpdated, {@enum.value "_lastUpdated" spExplanationOfBenefit__lastUpdated When the resource version last changed }
    spExplanationOfBenefit__profile, {@enum.value "_profile" spExplanationOfBenefit__profile Profiles this resource claims to conform to }
    spExplanationOfBenefit__query, {@enum.value "_query" spExplanationOfBenefit__query A custom search profile that describes a specific defined query operation }
    spExplanationOfBenefit__security, {@enum.value "_security" spExplanationOfBenefit__security Security Labels applied to this resource }
    spExplanationOfBenefit__tag, {@enum.value "_tag" spExplanationOfBenefit__tag Tags applied to this resource }
    spExplanationOfBenefit__text, {@enum.value "_text" spExplanationOfBenefit__text Search on the narrative of the resource }
    spExplanationOfBenefit_Claim, {@enum.value "claim" spExplanationOfBenefit_Claim The reference to the claim }
    spExplanationOfBenefit_Created, {@enum.value "created" spExplanationOfBenefit_Created The creation date for the EOB }
    spExplanationOfBenefit_Disposition, {@enum.value "disposition" spExplanationOfBenefit_Disposition The contents of the disposition message }
    spExplanationOfBenefit_Facility, {@enum.value "facility" spExplanationOfBenefit_Facility Facility responsible for the goods and services }
    spExplanationOfBenefit_Identifier, {@enum.value "identifier" spExplanationOfBenefit_Identifier The business identifier of the Explanation of Benefit }
    spExplanationOfBenefit_Organization, {@enum.value "organization" spExplanationOfBenefit_Organization The reference to the providing organization }
    spExplanationOfBenefit_Patient, {@enum.value "patient" spExplanationOfBenefit_Patient The reference to the patient }
    spExplanationOfBenefit_Provider); {@enum.value "provider" spExplanationOfBenefit_Provider The reference to the provider }

  {@Enum TSearchParamsFamilyMemberHistory
    Search Parameters for FamilyMemberHistory
  }
  TSearchParamsFamilyMemberHistory = (
    spFamilyMemberHistory__content, {@enum.value "_content" spFamilyMemberHistory__content Search on the entire content of the resource }
    spFamilyMemberHistory__id, {@enum.value "_id" spFamilyMemberHistory__id Logical id of this artifact }
    spFamilyMemberHistory__lastUpdated, {@enum.value "_lastUpdated" spFamilyMemberHistory__lastUpdated When the resource version last changed }
    spFamilyMemberHistory__profile, {@enum.value "_profile" spFamilyMemberHistory__profile Profiles this resource claims to conform to }
    spFamilyMemberHistory__query, {@enum.value "_query" spFamilyMemberHistory__query A custom search profile that describes a specific defined query operation }
    spFamilyMemberHistory__security, {@enum.value "_security" spFamilyMemberHistory__security Security Labels applied to this resource }
    spFamilyMemberHistory__tag, {@enum.value "_tag" spFamilyMemberHistory__tag Tags applied to this resource }
    spFamilyMemberHistory__text, {@enum.value "_text" spFamilyMemberHistory__text Search on the narrative of the resource }
    spFamilyMemberHistory_Code, {@enum.value "code" spFamilyMemberHistory_Code A search by a condition code }
    spFamilyMemberHistory_Condition, {@enum.value "condition" spFamilyMemberHistory_Condition Search for a history of a particular condition within a patient's family. }
    spFamilyMemberHistory_Date, {@enum.value "date" spFamilyMemberHistory_Date When history was captured/updated }
    spFamilyMemberHistory_Gender, {@enum.value "gender" spFamilyMemberHistory_Gender A search by a gender code of a family member }
    spFamilyMemberHistory_Identifier, {@enum.value "identifier" spFamilyMemberHistory_Identifier A search by a record identifier }
    spFamilyMemberHistory_Patient, {@enum.value "patient" spFamilyMemberHistory_Patient The identity of a subject to list family member history items for }
    spFamilyMemberHistory_Relationship); {@enum.value "relationship" spFamilyMemberHistory_Relationship Search for family history of members based on relationship }

  {@Enum TSearchParamsFlag
    Search Parameters for Flag
  }
  TSearchParamsFlag = (
    spFlag__content, {@enum.value "_content" spFlag__content Search on the entire content of the resource }
    spFlag__id, {@enum.value "_id" spFlag__id Logical id of this artifact }
    spFlag__lastUpdated, {@enum.value "_lastUpdated" spFlag__lastUpdated When the resource version last changed }
    spFlag__profile, {@enum.value "_profile" spFlag__profile Profiles this resource claims to conform to }
    spFlag__query, {@enum.value "_query" spFlag__query A custom search profile that describes a specific defined query operation }
    spFlag__security, {@enum.value "_security" spFlag__security Security Labels applied to this resource }
    spFlag__tag, {@enum.value "_tag" spFlag__tag Tags applied to this resource }
    spFlag__text, {@enum.value "_text" spFlag__text Search on the narrative of the resource }
    spFlag_Author, {@enum.value "author" spFlag_Author Flag creator }
    spFlag_Date, {@enum.value "date" spFlag_Date Time period when flag is active }
    spFlag_Encounter, {@enum.value "encounter" spFlag_Encounter Alert relevant during encounter }
    spFlag_Patient, {@enum.value "patient" spFlag_Patient The identity of a subject to list flags for }
    spFlag_Subject); {@enum.value "subject" spFlag_Subject The identity of a subject to list flags for }

  {@Enum TSearchParamsGoal
    Search Parameters for Goal
  }
  TSearchParamsGoal = (
    spGoal__content, {@enum.value "_content" spGoal__content Search on the entire content of the resource }
    spGoal__id, {@enum.value "_id" spGoal__id Logical id of this artifact }
    spGoal__lastUpdated, {@enum.value "_lastUpdated" spGoal__lastUpdated When the resource version last changed }
    spGoal__profile, {@enum.value "_profile" spGoal__profile Profiles this resource claims to conform to }
    spGoal__query, {@enum.value "_query" spGoal__query A custom search profile that describes a specific defined query operation }
    spGoal__security, {@enum.value "_security" spGoal__security Security Labels applied to this resource }
    spGoal__tag, {@enum.value "_tag" spGoal__tag Tags applied to this resource }
    spGoal__text, {@enum.value "_text" spGoal__text Search on the narrative of the resource }
    spGoal_Category, {@enum.value "category" spGoal_Category E.g. Treatment, dietary, behavioral, etc. }
    spGoal_Identifier, {@enum.value "identifier" spGoal_Identifier External Ids for this goal }
    spGoal_Patient, {@enum.value "patient" spGoal_Patient Who this goal is intended for }
    spGoal_Status, {@enum.value "status" spGoal_Status proposed | planned | accepted | rejected | in-progress | achieved | sustaining | on-hold | cancelled }
    spGoal_Subject, {@enum.value "subject" spGoal_Subject Who this goal is intended for }
    spGoal_Targetdate); {@enum.value "targetdate" spGoal_Targetdate Reach goal on or before }

  {@Enum TSearchParamsGroup
    Search Parameters for Group
  }
  TSearchParamsGroup = (
    spGroup__content, {@enum.value "_content" spGroup__content Search on the entire content of the resource }
    spGroup__id, {@enum.value "_id" spGroup__id Logical id of this artifact }
    spGroup__lastUpdated, {@enum.value "_lastUpdated" spGroup__lastUpdated When the resource version last changed }
    spGroup__profile, {@enum.value "_profile" spGroup__profile Profiles this resource claims to conform to }
    spGroup__query, {@enum.value "_query" spGroup__query A custom search profile that describes a specific defined query operation }
    spGroup__security, {@enum.value "_security" spGroup__security Security Labels applied to this resource }
    spGroup__tag, {@enum.value "_tag" spGroup__tag Tags applied to this resource }
    spGroup__text, {@enum.value "_text" spGroup__text Search on the narrative of the resource }
    spGroup_Actual, {@enum.value "actual" spGroup_Actual Descriptive or actual }
    spGroup_Characteristic, {@enum.value "characteristic" spGroup_Characteristic Kind of characteristic }
    spGroup_Characteristicvalue, {@enum.value "characteristic-value" spGroup_Characteristicvalue A composite of both characteristic and value }
    spGroup_Code, {@enum.value "code" spGroup_Code The kind of resources contained }
    spGroup_Exclude, {@enum.value "exclude" spGroup_Exclude Group includes or excludes }
    spGroup_Identifier, {@enum.value "identifier" spGroup_Identifier Unique id }
    spGroup_Member, {@enum.value "member" spGroup_Member Reference to the group member }
    spGroup_Type, {@enum.value "type" spGroup_Type The type of resources the group contains }
    spGroup_Value); {@enum.value "value" spGroup_Value Value held by characteristic }

  {@Enum TSearchParamsGuidanceResponse
    Search Parameters for GuidanceResponse
  }
  TSearchParamsGuidanceResponse = (
    spGuidanceResponse__content, {@enum.value "_content" spGuidanceResponse__content Search on the entire content of the resource }
    spGuidanceResponse__id, {@enum.value "_id" spGuidanceResponse__id Logical id of this artifact }
    spGuidanceResponse__lastUpdated, {@enum.value "_lastUpdated" spGuidanceResponse__lastUpdated When the resource version last changed }
    spGuidanceResponse__profile, {@enum.value "_profile" spGuidanceResponse__profile Profiles this resource claims to conform to }
    spGuidanceResponse__query, {@enum.value "_query" spGuidanceResponse__query A custom search profile that describes a specific defined query operation }
    spGuidanceResponse__security, {@enum.value "_security" spGuidanceResponse__security Security Labels applied to this resource }
    spGuidanceResponse__tag, {@enum.value "_tag" spGuidanceResponse__tag Tags applied to this resource }
    spGuidanceResponse__text); {@enum.value "_text" spGuidanceResponse__text Search on the narrative of the resource }

  {@Enum TSearchParamsHealthcareService
    Search Parameters for HealthcareService
  }
  TSearchParamsHealthcareService = (
    spHealthcareService__content, {@enum.value "_content" spHealthcareService__content Search on the entire content of the resource }
    spHealthcareService__id, {@enum.value "_id" spHealthcareService__id Logical id of this artifact }
    spHealthcareService__lastUpdated, {@enum.value "_lastUpdated" spHealthcareService__lastUpdated When the resource version last changed }
    spHealthcareService__profile, {@enum.value "_profile" spHealthcareService__profile Profiles this resource claims to conform to }
    spHealthcareService__query, {@enum.value "_query" spHealthcareService__query A custom search profile that describes a specific defined query operation }
    spHealthcareService__security, {@enum.value "_security" spHealthcareService__security Security Labels applied to this resource }
    spHealthcareService__tag, {@enum.value "_tag" spHealthcareService__tag Tags applied to this resource }
    spHealthcareService__text, {@enum.value "_text" spHealthcareService__text Search on the narrative of the resource }
    spHealthcareService_Characteristic, {@enum.value "characteristic" spHealthcareService_Characteristic One of the HealthcareService's characteristics }
    spHealthcareService_Identifier, {@enum.value "identifier" spHealthcareService_Identifier External identifiers for this item }
    spHealthcareService_Location, {@enum.value "location" spHealthcareService_Location The location of the Healthcare Service }
    spHealthcareService_Name, {@enum.value "name" spHealthcareService_Name A portion of the Healthcare service name }
    spHealthcareService_Organization, {@enum.value "organization" spHealthcareService_Organization The organization that provides this Healthcare Service }
    spHealthcareService_Programname, {@enum.value "programname" spHealthcareService_Programname One of the Program Names serviced by this HealthcareService }
    spHealthcareService_Servicecategory, {@enum.value "servicecategory" spHealthcareService_Servicecategory Service Category of the Healthcare Service }
    spHealthcareService_Servicetype); {@enum.value "servicetype" spHealthcareService_Servicetype The type of service provided by this healthcare service }

  {@Enum TSearchParamsImagingObjectSelection
    Search Parameters for ImagingObjectSelection
  }
  TSearchParamsImagingObjectSelection = (
    spImagingObjectSelection__content, {@enum.value "_content" spImagingObjectSelection__content Search on the entire content of the resource }
    spImagingObjectSelection__id, {@enum.value "_id" spImagingObjectSelection__id Logical id of this artifact }
    spImagingObjectSelection__lastUpdated, {@enum.value "_lastUpdated" spImagingObjectSelection__lastUpdated When the resource version last changed }
    spImagingObjectSelection__profile, {@enum.value "_profile" spImagingObjectSelection__profile Profiles this resource claims to conform to }
    spImagingObjectSelection__query, {@enum.value "_query" spImagingObjectSelection__query A custom search profile that describes a specific defined query operation }
    spImagingObjectSelection__security, {@enum.value "_security" spImagingObjectSelection__security Security Labels applied to this resource }
    spImagingObjectSelection__tag, {@enum.value "_tag" spImagingObjectSelection__tag Tags applied to this resource }
    spImagingObjectSelection__text, {@enum.value "_text" spImagingObjectSelection__text Search on the narrative of the resource }
    spImagingObjectSelection_Author, {@enum.value "author" spImagingObjectSelection_Author Author of key DICOM object selection }
    spImagingObjectSelection_Authoringtime, {@enum.value "authoring-time" spImagingObjectSelection_Authoringtime Time of key DICOM object selection authoring }
    spImagingObjectSelection_Identifier, {@enum.value "identifier" spImagingObjectSelection_Identifier UID of key DICOM object selection }
    spImagingObjectSelection_Patient, {@enum.value "patient" spImagingObjectSelection_Patient Subject of key DICOM object selection }
    spImagingObjectSelection_Selectedstudy, {@enum.value "selected-study" spImagingObjectSelection_Selectedstudy Study selected in key DICOM object selection }
    spImagingObjectSelection_Title); {@enum.value "title" spImagingObjectSelection_Title Title of key DICOM object selection }

  {@Enum TSearchParamsImagingStudy
    Search Parameters for ImagingStudy
  }
  TSearchParamsImagingStudy = (
    spImagingStudy__content, {@enum.value "_content" spImagingStudy__content Search on the entire content of the resource }
    spImagingStudy__id, {@enum.value "_id" spImagingStudy__id Logical id of this artifact }
    spImagingStudy__lastUpdated, {@enum.value "_lastUpdated" spImagingStudy__lastUpdated When the resource version last changed }
    spImagingStudy__profile, {@enum.value "_profile" spImagingStudy__profile Profiles this resource claims to conform to }
    spImagingStudy__query, {@enum.value "_query" spImagingStudy__query A custom search profile that describes a specific defined query operation }
    spImagingStudy__security, {@enum.value "_security" spImagingStudy__security Security Labels applied to this resource }
    spImagingStudy__tag, {@enum.value "_tag" spImagingStudy__tag Tags applied to this resource }
    spImagingStudy__text, {@enum.value "_text" spImagingStudy__text Search on the narrative of the resource }
    spImagingStudy_Accession, {@enum.value "accession" spImagingStudy_Accession The accession identifier for the study }
    spImagingStudy_Bodysite, {@enum.value "bodysite" spImagingStudy_Bodysite The body site studied }
    spImagingStudy_Dicomclass, {@enum.value "dicom-class" spImagingStudy_Dicomclass The type of the instance }
    spImagingStudy_Identifier, {@enum.value "identifier" spImagingStudy_Identifier Other identifiers for the Study }
    spImagingStudy_Modality, {@enum.value "modality" spImagingStudy_Modality The modality of the series }
    spImagingStudy_Order, {@enum.value "order" spImagingStudy_Order The order for the image }
    spImagingStudy_Patient, {@enum.value "patient" spImagingStudy_Patient Who the study is about }
    spImagingStudy_Series, {@enum.value "series" spImagingStudy_Series The identifier of the series of images }
    spImagingStudy_Started, {@enum.value "started" spImagingStudy_Started When the study was started }
    spImagingStudy_Study, {@enum.value "study" spImagingStudy_Study The study identifier for the image }
    spImagingStudy_Uid); {@enum.value "uid" spImagingStudy_Uid The instance unique identifier }

  {@Enum TSearchParamsImmunization
    Search Parameters for Immunization
  }
  TSearchParamsImmunization = (
    spImmunization__content, {@enum.value "_content" spImmunization__content Search on the entire content of the resource }
    spImmunization__id, {@enum.value "_id" spImmunization__id Logical id of this artifact }
    spImmunization__lastUpdated, {@enum.value "_lastUpdated" spImmunization__lastUpdated When the resource version last changed }
    spImmunization__profile, {@enum.value "_profile" spImmunization__profile Profiles this resource claims to conform to }
    spImmunization__query, {@enum.value "_query" spImmunization__query A custom search profile that describes a specific defined query operation }
    spImmunization__security, {@enum.value "_security" spImmunization__security Security Labels applied to this resource }
    spImmunization__tag, {@enum.value "_tag" spImmunization__tag Tags applied to this resource }
    spImmunization__text, {@enum.value "_text" spImmunization__text Search on the narrative of the resource }
    spImmunization_Date, {@enum.value "date" spImmunization_Date Vaccination  (non)-Administration Date }
    spImmunization_Dosesequence, {@enum.value "dose-sequence" spImmunization_Dosesequence Dose number within series }
    spImmunization_Identifier, {@enum.value "identifier" spImmunization_Identifier Business identifier }
    spImmunization_Location, {@enum.value "location" spImmunization_Location The service delivery location or facility in which the vaccine was / was to be administered }
    spImmunization_Lotnumber, {@enum.value "lot-number" spImmunization_Lotnumber Vaccine Lot Number }
    spImmunization_Manufacturer, {@enum.value "manufacturer" spImmunization_Manufacturer Vaccine Manufacturer }
    spImmunization_Notgiven, {@enum.value "notgiven" spImmunization_Notgiven Administrations which were not given }
    spImmunization_Patient, {@enum.value "patient" spImmunization_Patient The patient for the vaccination record }
    spImmunization_Performer, {@enum.value "performer" spImmunization_Performer The practitioner who administered the vaccination }
    spImmunization_Reaction, {@enum.value "reaction" spImmunization_Reaction Additional information on reaction }
    spImmunization_Reactiondate, {@enum.value "reaction-date" spImmunization_Reactiondate When reaction started }
    spImmunization_Reason, {@enum.value "reason" spImmunization_Reason Why immunization occurred }
    spImmunization_Reasonnotgiven, {@enum.value "reason-not-given" spImmunization_Reasonnotgiven Explanation of reason vaccination was not administered }
    spImmunization_Requester, {@enum.value "requester" spImmunization_Requester The practitioner who ordered the vaccination }
    spImmunization_Status, {@enum.value "status" spImmunization_Status Immunization event status }
    spImmunization_Vaccinecode); {@enum.value "vaccine-code" spImmunization_Vaccinecode Vaccine Product Administered }

  {@Enum TSearchParamsImmunizationRecommendation
    Search Parameters for ImmunizationRecommendation
  }
  TSearchParamsImmunizationRecommendation = (
    spImmunizationRecommendation__content, {@enum.value "_content" spImmunizationRecommendation__content Search on the entire content of the resource }
    spImmunizationRecommendation__id, {@enum.value "_id" spImmunizationRecommendation__id Logical id of this artifact }
    spImmunizationRecommendation__lastUpdated, {@enum.value "_lastUpdated" spImmunizationRecommendation__lastUpdated When the resource version last changed }
    spImmunizationRecommendation__profile, {@enum.value "_profile" spImmunizationRecommendation__profile Profiles this resource claims to conform to }
    spImmunizationRecommendation__query, {@enum.value "_query" spImmunizationRecommendation__query A custom search profile that describes a specific defined query operation }
    spImmunizationRecommendation__security, {@enum.value "_security" spImmunizationRecommendation__security Security Labels applied to this resource }
    spImmunizationRecommendation__tag, {@enum.value "_tag" spImmunizationRecommendation__tag Tags applied to this resource }
    spImmunizationRecommendation__text, {@enum.value "_text" spImmunizationRecommendation__text Search on the narrative of the resource }
    spImmunizationRecommendation_Date, {@enum.value "date" spImmunizationRecommendation_Date Date recommendation created }
    spImmunizationRecommendation_Dosenumber, {@enum.value "dose-number" spImmunizationRecommendation_Dosenumber Recommended dose number }
    spImmunizationRecommendation_Dosesequence, {@enum.value "dose-sequence" spImmunizationRecommendation_Dosesequence Dose number within sequence }
    spImmunizationRecommendation_Identifier, {@enum.value "identifier" spImmunizationRecommendation_Identifier Business identifier }
    spImmunizationRecommendation_Information, {@enum.value "information" spImmunizationRecommendation_Information Patient observations supporting recommendation }
    spImmunizationRecommendation_Patient, {@enum.value "patient" spImmunizationRecommendation_Patient Who this profile is for }
    spImmunizationRecommendation_Status, {@enum.value "status" spImmunizationRecommendation_Status Vaccine administration status }
    spImmunizationRecommendation_Support, {@enum.value "support" spImmunizationRecommendation_Support Past immunizations supporting recommendation }
    spImmunizationRecommendation_Vaccinetype); {@enum.value "vaccine-type" spImmunizationRecommendation_Vaccinetype Vaccine recommendation applies to }

  {@Enum TSearchParamsImplementationGuide
    Search Parameters for ImplementationGuide
  }
  TSearchParamsImplementationGuide = (
    spImplementationGuide__content, {@enum.value "_content" spImplementationGuide__content Search on the entire content of the resource }
    spImplementationGuide__id, {@enum.value "_id" spImplementationGuide__id Logical id of this artifact }
    spImplementationGuide__lastUpdated, {@enum.value "_lastUpdated" spImplementationGuide__lastUpdated When the resource version last changed }
    spImplementationGuide__profile, {@enum.value "_profile" spImplementationGuide__profile Profiles this resource claims to conform to }
    spImplementationGuide__query, {@enum.value "_query" spImplementationGuide__query A custom search profile that describes a specific defined query operation }
    spImplementationGuide__security, {@enum.value "_security" spImplementationGuide__security Security Labels applied to this resource }
    spImplementationGuide__tag, {@enum.value "_tag" spImplementationGuide__tag Tags applied to this resource }
    spImplementationGuide__text, {@enum.value "_text" spImplementationGuide__text Search on the narrative of the resource }
    spImplementationGuide_Context, {@enum.value "context" spImplementationGuide_Context A use context assigned to the structure }
    spImplementationGuide_Date, {@enum.value "date" spImplementationGuide_Date The implementation guide publication date }
    spImplementationGuide_Dependency, {@enum.value "dependency" spImplementationGuide_Dependency Where to find dependency }
    spImplementationGuide_Description, {@enum.value "description" spImplementationGuide_Description Text search in the description of the implementation guide }
    spImplementationGuide_Experimental, {@enum.value "experimental" spImplementationGuide_Experimental If for testing purposes, not real usage }
    spImplementationGuide_Name, {@enum.value "name" spImplementationGuide_Name Name of the implementation guide }
    spImplementationGuide_Publisher, {@enum.value "publisher" spImplementationGuide_Publisher Name of the publisher of the implementation guide }
    spImplementationGuide_Status, {@enum.value "status" spImplementationGuide_Status The current status of the implementation guide }
    spImplementationGuide_Url, {@enum.value "url" spImplementationGuide_Url Absolute URL used to reference this Implementation Guide }
    spImplementationGuide_Version); {@enum.value "version" spImplementationGuide_Version The version identifier of the implementation guide }

  {@Enum TSearchParamsLibrary
    Search Parameters for Library
  }
  TSearchParamsLibrary = (
    spLibrary__content, {@enum.value "_content" spLibrary__content Search on the entire content of the resource }
    spLibrary__id, {@enum.value "_id" spLibrary__id Logical id of this artifact }
    spLibrary__lastUpdated, {@enum.value "_lastUpdated" spLibrary__lastUpdated When the resource version last changed }
    spLibrary__profile, {@enum.value "_profile" spLibrary__profile Profiles this resource claims to conform to }
    spLibrary__query, {@enum.value "_query" spLibrary__query A custom search profile that describes a specific defined query operation }
    spLibrary__security, {@enum.value "_security" spLibrary__security Security Labels applied to this resource }
    spLibrary__tag, {@enum.value "_tag" spLibrary__tag Tags applied to this resource }
    spLibrary__text); {@enum.value "_text" spLibrary__text Search on the narrative of the resource }

  {@Enum TSearchParamsLinkage
    Search Parameters for Linkage
  }
  TSearchParamsLinkage = (
    spLinkage__content, {@enum.value "_content" spLinkage__content Search on the entire content of the resource }
    spLinkage__id, {@enum.value "_id" spLinkage__id Logical id of this artifact }
    spLinkage__lastUpdated, {@enum.value "_lastUpdated" spLinkage__lastUpdated When the resource version last changed }
    spLinkage__profile, {@enum.value "_profile" spLinkage__profile Profiles this resource claims to conform to }
    spLinkage__query, {@enum.value "_query" spLinkage__query A custom search profile that describes a specific defined query operation }
    spLinkage__security, {@enum.value "_security" spLinkage__security Security Labels applied to this resource }
    spLinkage__tag, {@enum.value "_tag" spLinkage__tag Tags applied to this resource }
    spLinkage__text, {@enum.value "_text" spLinkage__text Search on the narrative of the resource }
    spLinkage_Author, {@enum.value "author" spLinkage_Author Author of the Linkage }
    spLinkage_Item, {@enum.value "item" spLinkage_Item Matches on any item in the Linkage }
    spLinkage_Source); {@enum.value "source" spLinkage_Source Matches on any item in the Linkage with a type of 'source' }

  {@Enum TSearchParamsList
    Search Parameters for List
  }
  TSearchParamsList = (
    spList__content, {@enum.value "_content" spList__content Search on the entire content of the resource }
    spList__id, {@enum.value "_id" spList__id Logical id of this artifact }
    spList__lastUpdated, {@enum.value "_lastUpdated" spList__lastUpdated When the resource version last changed }
    spList__profile, {@enum.value "_profile" spList__profile Profiles this resource claims to conform to }
    spList__query, {@enum.value "_query" spList__query A custom search profile that describes a specific defined query operation }
    spList__security, {@enum.value "_security" spList__security Security Labels applied to this resource }
    spList__tag, {@enum.value "_tag" spList__tag Tags applied to this resource }
    spList__text, {@enum.value "_text" spList__text Search on the narrative of the resource }
    spList_Code, {@enum.value "code" spList_Code What the purpose of this list is }
    spList_Date, {@enum.value "date" spList_Date When the list was prepared }
    spList_Emptyreason, {@enum.value "empty-reason" spList_Emptyreason Why list is empty }
    spList_Encounter, {@enum.value "encounter" spList_Encounter Context in which list created }
    spList_Identifier, {@enum.value "identifier" spList_Identifier Business identifier }
    spList_Item, {@enum.value "item" spList_Item Actual entry }
    spList_Notes, {@enum.value "notes" spList_Notes Comments about the list }
    spList_Patient, {@enum.value "patient" spList_Patient If all resources have the same subject }
    spList_Source, {@enum.value "source" spList_Source Who and/or what defined the list contents (aka Author) }
    spList_Status, {@enum.value "status" spList_Status current | retired | entered-in-error }
    spList_Subject, {@enum.value "subject" spList_Subject If all resources have the same subject }
    spList_Title); {@enum.value "title" spList_Title Descriptive name for the list }

  {@Enum TSearchParamsLocation
    Search Parameters for Location
  }
  TSearchParamsLocation = (
    spLocation__content, {@enum.value "_content" spLocation__content Search on the entire content of the resource }
    spLocation__id, {@enum.value "_id" spLocation__id Logical id of this artifact }
    spLocation__lastUpdated, {@enum.value "_lastUpdated" spLocation__lastUpdated When the resource version last changed }
    spLocation__profile, {@enum.value "_profile" spLocation__profile Profiles this resource claims to conform to }
    spLocation__query, {@enum.value "_query" spLocation__query A custom search profile that describes a specific defined query operation }
    spLocation__security, {@enum.value "_security" spLocation__security Security Labels applied to this resource }
    spLocation__tag, {@enum.value "_tag" spLocation__tag Tags applied to this resource }
    spLocation__text, {@enum.value "_text" spLocation__text Search on the narrative of the resource }
    spLocation_Address, {@enum.value "address" spLocation_Address A (part of the) address of the location }
    spLocation_Addresscity, {@enum.value "address-city" spLocation_Addresscity A city specified in an address }
    spLocation_Addresscountry, {@enum.value "address-country" spLocation_Addresscountry A country specified in an address }
    spLocation_Addresspostalcode, {@enum.value "address-postalcode" spLocation_Addresspostalcode A postal code specified in an address }
    spLocation_Addressstate, {@enum.value "address-state" spLocation_Addressstate A state specified in an address }
    spLocation_Addressuse, {@enum.value "address-use" spLocation_Addressuse A use code specified in an address }
    spLocation_Identifier, {@enum.value "identifier" spLocation_Identifier Unique code or number identifying the location to its users }
    spLocation_Name, {@enum.value "name" spLocation_Name A (portion of the) name of the location }
    spLocation_Near, {@enum.value "near" spLocation_Near The coordinates expressed as [lat],[long] (using the WGS84 datum, see notes) to find locations near to (servers may search using a square rather than a circle for efficiency) }
    spLocation_Neardistance, {@enum.value "near-distance" spLocation_Neardistance A distance quantity to limit the near search to locations within a specific distance }
    spLocation_Organization, {@enum.value "organization" spLocation_Organization Searches for locations that are managed by the provided organization }
    spLocation_Partof, {@enum.value "partof" spLocation_Partof The location of which this location is a part }
    spLocation_Status, {@enum.value "status" spLocation_Status Searches for locations with a specific kind of status }
    spLocation_Type); {@enum.value "type" spLocation_Type A code for the type of location }

  {@Enum TSearchParamsMeasure
    Search Parameters for Measure
  }
  TSearchParamsMeasure = (
    spMeasure__content, {@enum.value "_content" spMeasure__content Search on the entire content of the resource }
    spMeasure__id, {@enum.value "_id" spMeasure__id Logical id of this artifact }
    spMeasure__lastUpdated, {@enum.value "_lastUpdated" spMeasure__lastUpdated When the resource version last changed }
    spMeasure__profile, {@enum.value "_profile" spMeasure__profile Profiles this resource claims to conform to }
    spMeasure__query, {@enum.value "_query" spMeasure__query A custom search profile that describes a specific defined query operation }
    spMeasure__security, {@enum.value "_security" spMeasure__security Security Labels applied to this resource }
    spMeasure__tag, {@enum.value "_tag" spMeasure__tag Tags applied to this resource }
    spMeasure__text); {@enum.value "_text" spMeasure__text Search on the narrative of the resource }

  {@Enum TSearchParamsMeasureReport
    Search Parameters for MeasureReport
  }
  TSearchParamsMeasureReport = (
    spMeasureReport__content, {@enum.value "_content" spMeasureReport__content Search on the entire content of the resource }
    spMeasureReport__id, {@enum.value "_id" spMeasureReport__id Logical id of this artifact }
    spMeasureReport__lastUpdated, {@enum.value "_lastUpdated" spMeasureReport__lastUpdated When the resource version last changed }
    spMeasureReport__profile, {@enum.value "_profile" spMeasureReport__profile Profiles this resource claims to conform to }
    spMeasureReport__query, {@enum.value "_query" spMeasureReport__query A custom search profile that describes a specific defined query operation }
    spMeasureReport__security, {@enum.value "_security" spMeasureReport__security Security Labels applied to this resource }
    spMeasureReport__tag, {@enum.value "_tag" spMeasureReport__tag Tags applied to this resource }
    spMeasureReport__text, {@enum.value "_text" spMeasureReport__text Search on the narrative of the resource }
    spMeasureReport_Patient); {@enum.value "patient" spMeasureReport_Patient The identity of a patient to search for individual measure report results for }

  {@Enum TSearchParamsMedia
    Search Parameters for Media
  }
  TSearchParamsMedia = (
    spMedia__content, {@enum.value "_content" spMedia__content Search on the entire content of the resource }
    spMedia__id, {@enum.value "_id" spMedia__id Logical id of this artifact }
    spMedia__lastUpdated, {@enum.value "_lastUpdated" spMedia__lastUpdated When the resource version last changed }
    spMedia__profile, {@enum.value "_profile" spMedia__profile Profiles this resource claims to conform to }
    spMedia__query, {@enum.value "_query" spMedia__query A custom search profile that describes a specific defined query operation }
    spMedia__security, {@enum.value "_security" spMedia__security Security Labels applied to this resource }
    spMedia__tag, {@enum.value "_tag" spMedia__tag Tags applied to this resource }
    spMedia__text, {@enum.value "_text" spMedia__text Search on the narrative of the resource }
    spMedia_Created, {@enum.value "created" spMedia_Created Date attachment was first created }
    spMedia_Identifier, {@enum.value "identifier" spMedia_Identifier Identifier(s) for the image }
    spMedia_Operator, {@enum.value "operator" spMedia_Operator The person who generated the image }
    spMedia_Patient, {@enum.value "patient" spMedia_Patient Who/What this Media is a record of }
    spMedia_Subject, {@enum.value "subject" spMedia_Subject Who/What this Media is a record of }
    spMedia_Subtype, {@enum.value "subtype" spMedia_Subtype The type of acquisition equipment/process }
    spMedia_Type, {@enum.value "type" spMedia_Type photo | video | audio }
    spMedia_View); {@enum.value "view" spMedia_View Imaging view, e.g. Lateral or Antero-posterior }

  {@Enum TSearchParamsMedication
    Search Parameters for Medication
  }
  TSearchParamsMedication = (
    spMedication__content, {@enum.value "_content" spMedication__content Search on the entire content of the resource }
    spMedication__id, {@enum.value "_id" spMedication__id Logical id of this artifact }
    spMedication__lastUpdated, {@enum.value "_lastUpdated" spMedication__lastUpdated When the resource version last changed }
    spMedication__profile, {@enum.value "_profile" spMedication__profile Profiles this resource claims to conform to }
    spMedication__query, {@enum.value "_query" spMedication__query A custom search profile that describes a specific defined query operation }
    spMedication__security, {@enum.value "_security" spMedication__security Security Labels applied to this resource }
    spMedication__tag, {@enum.value "_tag" spMedication__tag Tags applied to this resource }
    spMedication__text, {@enum.value "_text" spMedication__text Search on the narrative of the resource }
    spMedication_Code, {@enum.value "code" spMedication_Code Codes that identify this medication }
    spMedication_Container, {@enum.value "container" spMedication_Container E.g. box, vial, blister-pack }
    spMedication_Form, {@enum.value "form" spMedication_Form powder | tablets | carton + }
    spMedication_Ingredient, {@enum.value "ingredient" spMedication_Ingredient The product contained }
    spMedication_Manufacturer, {@enum.value "manufacturer" spMedication_Manufacturer Manufacturer of the item }
    spMedication_Packageitem); {@enum.value "package-item" spMedication_Packageitem The item in the package }

  {@Enum TSearchParamsMedicationAdministration
    Search Parameters for MedicationAdministration
  }
  TSearchParamsMedicationAdministration = (
    spMedicationAdministration__content, {@enum.value "_content" spMedicationAdministration__content Search on the entire content of the resource }
    spMedicationAdministration__id, {@enum.value "_id" spMedicationAdministration__id Logical id of this artifact }
    spMedicationAdministration__lastUpdated, {@enum.value "_lastUpdated" spMedicationAdministration__lastUpdated When the resource version last changed }
    spMedicationAdministration__profile, {@enum.value "_profile" spMedicationAdministration__profile Profiles this resource claims to conform to }
    spMedicationAdministration__query, {@enum.value "_query" spMedicationAdministration__query A custom search profile that describes a specific defined query operation }
    spMedicationAdministration__security, {@enum.value "_security" spMedicationAdministration__security Security Labels applied to this resource }
    spMedicationAdministration__tag, {@enum.value "_tag" spMedicationAdministration__tag Tags applied to this resource }
    spMedicationAdministration__text, {@enum.value "_text" spMedicationAdministration__text Search on the narrative of the resource }
    spMedicationAdministration_Code, {@enum.value "code" spMedicationAdministration_Code Return administrations of this medication code }
    spMedicationAdministration_Device, {@enum.value "device" spMedicationAdministration_Device Return administrations with this administration device identity }
    spMedicationAdministration_Effectivetime, {@enum.value "effectivetime" spMedicationAdministration_Effectivetime Date administration happened (or did not happen) }
    spMedicationAdministration_Encounter, {@enum.value "encounter" spMedicationAdministration_Encounter Return administrations that share this encounter }
    spMedicationAdministration_Identifier, {@enum.value "identifier" spMedicationAdministration_Identifier Return administrations with this external identifier }
    spMedicationAdministration_Medication, {@enum.value "medication" spMedicationAdministration_Medication Return administrations of this medication resource }
    spMedicationAdministration_Patient, {@enum.value "patient" spMedicationAdministration_Patient The identity of a patient to list administrations  for }
    spMedicationAdministration_Practitioner, {@enum.value "practitioner" spMedicationAdministration_Practitioner Who administered substance }
    spMedicationAdministration_Prescription, {@enum.value "prescription" spMedicationAdministration_Prescription The identity of a prescription to list administrations from }
    spMedicationAdministration_Status, {@enum.value "status" spMedicationAdministration_Status MedicationAdministration event status (for example one of active/paused/completed/nullified) }
    spMedicationAdministration_Wasnotgiven); {@enum.value "wasnotgiven" spMedicationAdministration_Wasnotgiven Administrations that were not made }

  {@Enum TSearchParamsMedicationDispense
    Search Parameters for MedicationDispense
  }
  TSearchParamsMedicationDispense = (
    spMedicationDispense__content, {@enum.value "_content" spMedicationDispense__content Search on the entire content of the resource }
    spMedicationDispense__id, {@enum.value "_id" spMedicationDispense__id Logical id of this artifact }
    spMedicationDispense__lastUpdated, {@enum.value "_lastUpdated" spMedicationDispense__lastUpdated When the resource version last changed }
    spMedicationDispense__profile, {@enum.value "_profile" spMedicationDispense__profile Profiles this resource claims to conform to }
    spMedicationDispense__query, {@enum.value "_query" spMedicationDispense__query A custom search profile that describes a specific defined query operation }
    spMedicationDispense__security, {@enum.value "_security" spMedicationDispense__security Security Labels applied to this resource }
    spMedicationDispense__tag, {@enum.value "_tag" spMedicationDispense__tag Tags applied to this resource }
    spMedicationDispense__text, {@enum.value "_text" spMedicationDispense__text Search on the narrative of the resource }
    spMedicationDispense_Code, {@enum.value "code" spMedicationDispense_Code Return dispenses of this medicine code }
    spMedicationDispense_Destination, {@enum.value "destination" spMedicationDispense_Destination Return dispenses that should be sent to a specific destination }
    spMedicationDispense_Dispenser, {@enum.value "dispenser" spMedicationDispense_Dispenser Return all dispenses performed by a specific individual }
    spMedicationDispense_Identifier, {@enum.value "identifier" spMedicationDispense_Identifier Return dispenses with this external identifier }
    spMedicationDispense_Medication, {@enum.value "medication" spMedicationDispense_Medication Return dispenses of this medicine resource }
    spMedicationDispense_Patient, {@enum.value "patient" spMedicationDispense_Patient The identity of a patient to list dispenses  for }
    spMedicationDispense_Prescription, {@enum.value "prescription" spMedicationDispense_Prescription The identity of a prescription to list dispenses from }
    spMedicationDispense_Receiver, {@enum.value "receiver" spMedicationDispense_Receiver Who collected the medication }
    spMedicationDispense_Responsibleparty, {@enum.value "responsibleparty" spMedicationDispense_Responsibleparty Return all dispenses with the specified responsible party }
    spMedicationDispense_Status, {@enum.value "status" spMedicationDispense_Status Status of the dispense }
    spMedicationDispense_Type, {@enum.value "type" spMedicationDispense_Type Return all dispenses of a specific type }
    spMedicationDispense_Whenhandedover, {@enum.value "whenhandedover" spMedicationDispense_Whenhandedover Date when medication handed over to patient (outpatient setting), or supplied to ward or clinic (inpatient setting) }
    spMedicationDispense_Whenprepared); {@enum.value "whenprepared" spMedicationDispense_Whenprepared Date when medication prepared }

  {@Enum TSearchParamsMedicationOrder
    Search Parameters for MedicationOrder
  }
  TSearchParamsMedicationOrder = (
    spMedicationOrder__content, {@enum.value "_content" spMedicationOrder__content Search on the entire content of the resource }
    spMedicationOrder__id, {@enum.value "_id" spMedicationOrder__id Logical id of this artifact }
    spMedicationOrder__lastUpdated, {@enum.value "_lastUpdated" spMedicationOrder__lastUpdated When the resource version last changed }
    spMedicationOrder__profile, {@enum.value "_profile" spMedicationOrder__profile Profiles this resource claims to conform to }
    spMedicationOrder__query, {@enum.value "_query" spMedicationOrder__query A custom search profile that describes a specific defined query operation }
    spMedicationOrder__security, {@enum.value "_security" spMedicationOrder__security Security Labels applied to this resource }
    spMedicationOrder__tag, {@enum.value "_tag" spMedicationOrder__tag Tags applied to this resource }
    spMedicationOrder__text, {@enum.value "_text" spMedicationOrder__text Search on the narrative of the resource }
    spMedicationOrder_Code, {@enum.value "code" spMedicationOrder_Code Return administrations of this medication code }
    spMedicationOrder_Datewritten, {@enum.value "datewritten" spMedicationOrder_Datewritten Return prescriptions written on this date }
    spMedicationOrder_Encounter, {@enum.value "encounter" spMedicationOrder_Encounter Return prescriptions with this encounter identifier }
    spMedicationOrder_Identifier, {@enum.value "identifier" spMedicationOrder_Identifier Return prescriptions with this external identifier }
    spMedicationOrder_Medication, {@enum.value "medication" spMedicationOrder_Medication Return administrations of this medication reference }
    spMedicationOrder_Patient, {@enum.value "patient" spMedicationOrder_Patient The identity of a patient to list orders  for }
    spMedicationOrder_Prescriber, {@enum.value "prescriber" spMedicationOrder_Prescriber Who ordered the medication(s) }
    spMedicationOrder_Status); {@enum.value "status" spMedicationOrder_Status Status of the prescription }

  {@Enum TSearchParamsMedicationStatement
    Search Parameters for MedicationStatement
  }
  TSearchParamsMedicationStatement = (
    spMedicationStatement__content, {@enum.value "_content" spMedicationStatement__content Search on the entire content of the resource }
    spMedicationStatement__id, {@enum.value "_id" spMedicationStatement__id Logical id of this artifact }
    spMedicationStatement__lastUpdated, {@enum.value "_lastUpdated" spMedicationStatement__lastUpdated When the resource version last changed }
    spMedicationStatement__profile, {@enum.value "_profile" spMedicationStatement__profile Profiles this resource claims to conform to }
    spMedicationStatement__query, {@enum.value "_query" spMedicationStatement__query A custom search profile that describes a specific defined query operation }
    spMedicationStatement__security, {@enum.value "_security" spMedicationStatement__security Security Labels applied to this resource }
    spMedicationStatement__tag, {@enum.value "_tag" spMedicationStatement__tag Tags applied to this resource }
    spMedicationStatement__text, {@enum.value "_text" spMedicationStatement__text Search on the narrative of the resource }
    spMedicationStatement_Code, {@enum.value "code" spMedicationStatement_Code Return administrations of this medication code }
    spMedicationStatement_Effective, {@enum.value "effective" spMedicationStatement_Effective Date when patient was taking (or not taking) the medication }
    spMedicationStatement_Identifier, {@enum.value "identifier" spMedicationStatement_Identifier Return statements with this external identifier }
    spMedicationStatement_Medication, {@enum.value "medication" spMedicationStatement_Medication Return administrations of this medication reference }
    spMedicationStatement_Patient, {@enum.value "patient" spMedicationStatement_Patient The identity of a patient to list statements  for }
    spMedicationStatement_Source, {@enum.value "source" spMedicationStatement_Source Who the information in the statement came from }
    spMedicationStatement_Status); {@enum.value "status" spMedicationStatement_Status Return statements that match the given status }

  {@Enum TSearchParamsMessageHeader
    Search Parameters for MessageHeader
  }
  TSearchParamsMessageHeader = (
    spMessageHeader__content, {@enum.value "_content" spMessageHeader__content Search on the entire content of the resource }
    spMessageHeader__id, {@enum.value "_id" spMessageHeader__id Logical id of this artifact }
    spMessageHeader__lastUpdated, {@enum.value "_lastUpdated" spMessageHeader__lastUpdated When the resource version last changed }
    spMessageHeader__profile, {@enum.value "_profile" spMessageHeader__profile Profiles this resource claims to conform to }
    spMessageHeader__query, {@enum.value "_query" spMessageHeader__query A custom search profile that describes a specific defined query operation }
    spMessageHeader__security, {@enum.value "_security" spMessageHeader__security Security Labels applied to this resource }
    spMessageHeader__tag, {@enum.value "_tag" spMessageHeader__tag Tags applied to this resource }
    spMessageHeader__text, {@enum.value "_text" spMessageHeader__text Search on the narrative of the resource }
    spMessageHeader_Author, {@enum.value "author" spMessageHeader_Author The source of the decision }
    spMessageHeader_Code, {@enum.value "code" spMessageHeader_Code ok | transient-error | fatal-error }
    spMessageHeader_Data, {@enum.value "data" spMessageHeader_Data The actual content of the message }
    spMessageHeader_Destination, {@enum.value "destination" spMessageHeader_Destination Name of system }
    spMessageHeader_Destinationuri, {@enum.value "destination-uri" spMessageHeader_Destinationuri Actual destination address or id }
    spMessageHeader_Enterer, {@enum.value "enterer" spMessageHeader_Enterer The source of the data entry }
    spMessageHeader_Event, {@enum.value "event" spMessageHeader_Event Code for the event this message represents }
    spMessageHeader_Receiver, {@enum.value "receiver" spMessageHeader_Receiver Intended "real-world" recipient for the data }
    spMessageHeader_Responseid, {@enum.value "response-id" spMessageHeader_Responseid Id of original message }
    spMessageHeader_Responsible, {@enum.value "responsible" spMessageHeader_Responsible Final responsibility for event }
    spMessageHeader_Source, {@enum.value "source" spMessageHeader_Source Name of system }
    spMessageHeader_Sourceuri, {@enum.value "source-uri" spMessageHeader_Sourceuri Actual message source address or id }
    spMessageHeader_Target, {@enum.value "target" spMessageHeader_Target Particular delivery destination within the destination }
    spMessageHeader_Timestamp); {@enum.value "timestamp" spMessageHeader_Timestamp Time that the message was sent }

  {@Enum TSearchParamsModuleDefinition
    Search Parameters for ModuleDefinition
  }
  TSearchParamsModuleDefinition = (
    spModuleDefinition__content, {@enum.value "_content" spModuleDefinition__content Search on the entire content of the resource }
    spModuleDefinition__id, {@enum.value "_id" spModuleDefinition__id Logical id of this artifact }
    spModuleDefinition__lastUpdated, {@enum.value "_lastUpdated" spModuleDefinition__lastUpdated When the resource version last changed }
    spModuleDefinition__profile, {@enum.value "_profile" spModuleDefinition__profile Profiles this resource claims to conform to }
    spModuleDefinition__query, {@enum.value "_query" spModuleDefinition__query A custom search profile that describes a specific defined query operation }
    spModuleDefinition__security, {@enum.value "_security" spModuleDefinition__security Security Labels applied to this resource }
    spModuleDefinition__tag, {@enum.value "_tag" spModuleDefinition__tag Tags applied to this resource }
    spModuleDefinition__text); {@enum.value "_text" spModuleDefinition__text Search on the narrative of the resource }

  {@Enum TSearchParamsNamingSystem
    Search Parameters for NamingSystem
  }
  TSearchParamsNamingSystem = (
    spNamingSystem__content, {@enum.value "_content" spNamingSystem__content Search on the entire content of the resource }
    spNamingSystem__id, {@enum.value "_id" spNamingSystem__id Logical id of this artifact }
    spNamingSystem__lastUpdated, {@enum.value "_lastUpdated" spNamingSystem__lastUpdated When the resource version last changed }
    spNamingSystem__profile, {@enum.value "_profile" spNamingSystem__profile Profiles this resource claims to conform to }
    spNamingSystem__query, {@enum.value "_query" spNamingSystem__query A custom search profile that describes a specific defined query operation }
    spNamingSystem__security, {@enum.value "_security" spNamingSystem__security Security Labels applied to this resource }
    spNamingSystem__tag, {@enum.value "_tag" spNamingSystem__tag Tags applied to this resource }
    spNamingSystem__text, {@enum.value "_text" spNamingSystem__text Search on the narrative of the resource }
    spNamingSystem_Contact, {@enum.value "contact" spNamingSystem_Contact Name of a individual to contact }
    spNamingSystem_Context, {@enum.value "context" spNamingSystem_Context Content intends to support these contexts }
    spNamingSystem_Date, {@enum.value "date" spNamingSystem_Date Publication Date(/time) }
    spNamingSystem_Idtype, {@enum.value "id-type" spNamingSystem_Idtype oid | uuid | uri | other }
    spNamingSystem_Kind, {@enum.value "kind" spNamingSystem_Kind codesystem | identifier | root }
    spNamingSystem_Name, {@enum.value "name" spNamingSystem_Name Human-readable label }
    spNamingSystem_Period, {@enum.value "period" spNamingSystem_Period When is identifier valid? }
    spNamingSystem_Publisher, {@enum.value "publisher" spNamingSystem_Publisher Name of the publisher (Organization or individual) }
    spNamingSystem_Replacedby, {@enum.value "replaced-by" spNamingSystem_Replacedby Use this instead }
    spNamingSystem_Responsible, {@enum.value "responsible" spNamingSystem_Responsible Who maintains system namespace? }
    spNamingSystem_Status, {@enum.value "status" spNamingSystem_Status draft | active | retired }
    spNamingSystem_Telecom, {@enum.value "telecom" spNamingSystem_Telecom Contact details for individual or publisher }
    spNamingSystem_Type, {@enum.value "type" spNamingSystem_Type e.g. driver,  provider,  patient, bank etc. }
    spNamingSystem_Value); {@enum.value "value" spNamingSystem_Value The unique identifier }

  {@Enum TSearchParamsNutritionOrder
    Search Parameters for NutritionOrder
  }
  TSearchParamsNutritionOrder = (
    spNutritionOrder__content, {@enum.value "_content" spNutritionOrder__content Search on the entire content of the resource }
    spNutritionOrder__id, {@enum.value "_id" spNutritionOrder__id Logical id of this artifact }
    spNutritionOrder__lastUpdated, {@enum.value "_lastUpdated" spNutritionOrder__lastUpdated When the resource version last changed }
    spNutritionOrder__profile, {@enum.value "_profile" spNutritionOrder__profile Profiles this resource claims to conform to }
    spNutritionOrder__query, {@enum.value "_query" spNutritionOrder__query A custom search profile that describes a specific defined query operation }
    spNutritionOrder__security, {@enum.value "_security" spNutritionOrder__security Security Labels applied to this resource }
    spNutritionOrder__tag, {@enum.value "_tag" spNutritionOrder__tag Tags applied to this resource }
    spNutritionOrder__text, {@enum.value "_text" spNutritionOrder__text Search on the narrative of the resource }
    spNutritionOrder_Additive, {@enum.value "additive" spNutritionOrder_Additive Type of module component to add to the feeding }
    spNutritionOrder_Datetime, {@enum.value "datetime" spNutritionOrder_Datetime Return nutrition orders requested on this date }
    spNutritionOrder_Encounter, {@enum.value "encounter" spNutritionOrder_Encounter Return nutrition orders with this encounter identifier }
    spNutritionOrder_Formula, {@enum.value "formula" spNutritionOrder_Formula Type of enteral or infant formula }
    spNutritionOrder_Identifier, {@enum.value "identifier" spNutritionOrder_Identifier Return nutrition orders with this external identifier }
    spNutritionOrder_Oraldiet, {@enum.value "oraldiet" spNutritionOrder_Oraldiet Type of diet that can be consumed orally (i.e., take via the mouth). }
    spNutritionOrder_Patient, {@enum.value "patient" spNutritionOrder_Patient The identity of the person who requires the diet, formula or nutritional supplement }
    spNutritionOrder_Provider, {@enum.value "provider" spNutritionOrder_Provider The identify of the provider who placed the nutrition order }
    spNutritionOrder_Status, {@enum.value "status" spNutritionOrder_Status Status of the nutrition order. }
    spNutritionOrder_Supplement); {@enum.value "supplement" spNutritionOrder_Supplement Type of supplement product requested }

  {@Enum TSearchParamsObservation
    Search Parameters for Observation
  }
  TSearchParamsObservation = (
    spObservation__content, {@enum.value "_content" spObservation__content Search on the entire content of the resource }
    spObservation__id, {@enum.value "_id" spObservation__id Logical id of this artifact }
    spObservation__lastUpdated, {@enum.value "_lastUpdated" spObservation__lastUpdated When the resource version last changed }
    spObservation__profile, {@enum.value "_profile" spObservation__profile Profiles this resource claims to conform to }
    spObservation__query, {@enum.value "_query" spObservation__query A custom search profile that describes a specific defined query operation }
    spObservation__security, {@enum.value "_security" spObservation__security Security Labels applied to this resource }
    spObservation__tag, {@enum.value "_tag" spObservation__tag Tags applied to this resource }
    spObservation__text, {@enum.value "_text" spObservation__text Search on the narrative of the resource }
    spObservation_Category, {@enum.value "category" spObservation_Category The classification of the type of observation }
    spObservation_Code, {@enum.value "code" spObservation_Code The code of the observation type }
    spObservation_Codevaluex, {@enum.value "code-value-[x]" spObservation_Codevaluex Both code and one of the value parameters }
    spObservation_Componentcode, {@enum.value "component-code" spObservation_Componentcode The component code of the observation type }
    spObservation_Componentcodevaluex, {@enum.value "component-code-value-[x]" spObservation_Componentcodevaluex Both component code and one of the component value parameters }
    spObservation_Componentdataabsentreason, {@enum.value "component-data-absent-reason" spObservation_Componentdataabsentreason The reason why the expected value in the element Observation.component.value[x] is missing. }
    spObservation_Componentvalueconcept, {@enum.value "component-value-concept" spObservation_Componentvalueconcept The value of the component observation, if the value is a CodeableConcept }
    spObservation_Componentvaluequantity, {@enum.value "component-value-quantity" spObservation_Componentvaluequantity The value of the component observation, if the value is a Quantity, or a SampledData (just search on the bounds of the values in sampled data) }
    spObservation_Componentvaluestring, {@enum.value "component-value-string" spObservation_Componentvaluestring The value of the component observation, if the value is a string, and also searches in CodeableConcept.text }
    spObservation_Dataabsentreason, {@enum.value "data-absent-reason" spObservation_Dataabsentreason The reason why the expected value in the element Observation.value[x] is missing. }
    spObservation_Date, {@enum.value "date" spObservation_Date Obtained date/time. If the obtained element is a period, a date that falls in the period }
    spObservation_Device, {@enum.value "device" spObservation_Device The Device that generated the observation data. }
    spObservation_Encounter, {@enum.value "encounter" spObservation_Encounter Healthcare event related to the observation }
    spObservation_Identifier, {@enum.value "identifier" spObservation_Identifier The unique id for a particular observation }
    spObservation_Patient, {@enum.value "patient" spObservation_Patient The subject that the observation is about (if patient) }
    spObservation_Performer, {@enum.value "performer" spObservation_Performer Who performed the observation }
    spObservation_Related, {@enum.value "related" spObservation_Related Related Observations - search on related-type and related-target together }
    spObservation_Relatedtarget, {@enum.value "related-target" spObservation_Relatedtarget Resource that is related to this one }
    spObservation_Relatedtype, {@enum.value "related-type" spObservation_Relatedtype has-member | derived-from | sequel-to | replaces | qualified-by | interfered-by }
    spObservation_Specimen, {@enum.value "specimen" spObservation_Specimen Specimen used for this observation }
    spObservation_Status, {@enum.value "status" spObservation_Status The status of the observation }
    spObservation_Subject, {@enum.value "subject" spObservation_Subject The subject that the observation is about }
    spObservation_Valueconcept, {@enum.value "value-concept" spObservation_Valueconcept The value of the observation, if the value is a CodeableConcept }
    spObservation_Valuedate, {@enum.value "value-date" spObservation_Valuedate The value of the observation, if the value is a date or period of time }
    spObservation_Valuequantity, {@enum.value "value-quantity" spObservation_Valuequantity The value of the observation, if the value is a Quantity, or a SampledData (just search on the bounds of the values in sampled data) }
    spObservation_Valuestring); {@enum.value "value-string" spObservation_Valuestring The value of the observation, if the value is a string, and also searches in CodeableConcept.text }

  {@Enum TSearchParamsOperationDefinition
    Search Parameters for OperationDefinition
  }
  TSearchParamsOperationDefinition = (
    spOperationDefinition__content, {@enum.value "_content" spOperationDefinition__content Search on the entire content of the resource }
    spOperationDefinition__id, {@enum.value "_id" spOperationDefinition__id Logical id of this artifact }
    spOperationDefinition__lastUpdated, {@enum.value "_lastUpdated" spOperationDefinition__lastUpdated When the resource version last changed }
    spOperationDefinition__profile, {@enum.value "_profile" spOperationDefinition__profile Profiles this resource claims to conform to }
    spOperationDefinition__query, {@enum.value "_query" spOperationDefinition__query A custom search profile that describes a specific defined query operation }
    spOperationDefinition__security, {@enum.value "_security" spOperationDefinition__security Security Labels applied to this resource }
    spOperationDefinition__tag, {@enum.value "_tag" spOperationDefinition__tag Tags applied to this resource }
    spOperationDefinition__text, {@enum.value "_text" spOperationDefinition__text Search on the narrative of the resource }
    spOperationDefinition_Base, {@enum.value "base" spOperationDefinition_Base Marks this as a profile of the base }
    spOperationDefinition_Code, {@enum.value "code" spOperationDefinition_Code Name used to invoke the operation }
    spOperationDefinition_Date, {@enum.value "date" spOperationDefinition_Date Date for this version of the operation definition }
    spOperationDefinition_Instance, {@enum.value "instance" spOperationDefinition_Instance Invoke on an instance? }
    spOperationDefinition_Kind, {@enum.value "kind" spOperationDefinition_Kind operation | query }
    spOperationDefinition_Name, {@enum.value "name" spOperationDefinition_Name Informal name for this operation }
    spOperationDefinition_Profile, {@enum.value "profile" spOperationDefinition_Profile Profile on the type }
    spOperationDefinition_Publisher, {@enum.value "publisher" spOperationDefinition_Publisher Name of the publisher (Organization or individual) }
    spOperationDefinition_Status, {@enum.value "status" spOperationDefinition_Status draft | active | retired }
    spOperationDefinition_System, {@enum.value "system" spOperationDefinition_System Invoke at the system level? }
    spOperationDefinition_Type, {@enum.value "type" spOperationDefinition_Type Invoke at resource level for these type }
    spOperationDefinition_Url, {@enum.value "url" spOperationDefinition_Url Logical URL to reference this operation definition }
    spOperationDefinition_Version); {@enum.value "version" spOperationDefinition_Version Logical id for this version of the operation definition }

  {@Enum TSearchParamsOperationOutcome
    Search Parameters for OperationOutcome
  }
  TSearchParamsOperationOutcome = (
    spOperationOutcome__content, {@enum.value "_content" spOperationOutcome__content Search on the entire content of the resource }
    spOperationOutcome__id, {@enum.value "_id" spOperationOutcome__id Logical id of this artifact }
    spOperationOutcome__lastUpdated, {@enum.value "_lastUpdated" spOperationOutcome__lastUpdated When the resource version last changed }
    spOperationOutcome__profile, {@enum.value "_profile" spOperationOutcome__profile Profiles this resource claims to conform to }
    spOperationOutcome__query, {@enum.value "_query" spOperationOutcome__query A custom search profile that describes a specific defined query operation }
    spOperationOutcome__security, {@enum.value "_security" spOperationOutcome__security Security Labels applied to this resource }
    spOperationOutcome__tag, {@enum.value "_tag" spOperationOutcome__tag Tags applied to this resource }
    spOperationOutcome__text); {@enum.value "_text" spOperationOutcome__text Search on the narrative of the resource }

  {@Enum TSearchParamsOrder
    Search Parameters for Order
  }
  TSearchParamsOrder = (
    spOrder__content, {@enum.value "_content" spOrder__content Search on the entire content of the resource }
    spOrder__id, {@enum.value "_id" spOrder__id Logical id of this artifact }
    spOrder__lastUpdated, {@enum.value "_lastUpdated" spOrder__lastUpdated When the resource version last changed }
    spOrder__profile, {@enum.value "_profile" spOrder__profile Profiles this resource claims to conform to }
    spOrder__query, {@enum.value "_query" spOrder__query A custom search profile that describes a specific defined query operation }
    spOrder__security, {@enum.value "_security" spOrder__security Security Labels applied to this resource }
    spOrder__tag, {@enum.value "_tag" spOrder__tag Tags applied to this resource }
    spOrder__text, {@enum.value "_text" spOrder__text Search on the narrative of the resource }
    spOrder_Date, {@enum.value "date" spOrder_Date When the order was made }
    spOrder_Detail, {@enum.value "detail" spOrder_Detail What action is being ordered }
    spOrder_Identifier, {@enum.value "identifier" spOrder_Identifier Instance id from source, target, and/or  others }
    spOrder_Patient, {@enum.value "patient" spOrder_Patient Patient this order is about }
    spOrder_Source, {@enum.value "source" spOrder_Source Who initiated the order }
    spOrder_Subject, {@enum.value "subject" spOrder_Subject Patient this order is about }
    spOrder_Target, {@enum.value "target" spOrder_Target Who is intended to fulfill the order }
    spOrder_When, {@enum.value "when" spOrder_When A formal schedule }
    spOrder_When_code); {@enum.value "when_code" spOrder_When_code Code specifies when request should be done. The code may simply be a priority code }

  {@Enum TSearchParamsOrderResponse
    Search Parameters for OrderResponse
  }
  TSearchParamsOrderResponse = (
    spOrderResponse__content, {@enum.value "_content" spOrderResponse__content Search on the entire content of the resource }
    spOrderResponse__id, {@enum.value "_id" spOrderResponse__id Logical id of this artifact }
    spOrderResponse__lastUpdated, {@enum.value "_lastUpdated" spOrderResponse__lastUpdated When the resource version last changed }
    spOrderResponse__profile, {@enum.value "_profile" spOrderResponse__profile Profiles this resource claims to conform to }
    spOrderResponse__query, {@enum.value "_query" spOrderResponse__query A custom search profile that describes a specific defined query operation }
    spOrderResponse__security, {@enum.value "_security" spOrderResponse__security Security Labels applied to this resource }
    spOrderResponse__tag, {@enum.value "_tag" spOrderResponse__tag Tags applied to this resource }
    spOrderResponse__text, {@enum.value "_text" spOrderResponse__text Search on the narrative of the resource }
    spOrderResponse_Code, {@enum.value "code" spOrderResponse_Code pending | review | rejected | error | accepted | cancelled | replaced | aborted | completed }
    spOrderResponse_Date, {@enum.value "date" spOrderResponse_Date When the response was made }
    spOrderResponse_Fulfillment, {@enum.value "fulfillment" spOrderResponse_Fulfillment Details of the outcome of performing the order }
    spOrderResponse_Identifier, {@enum.value "identifier" spOrderResponse_Identifier Identifiers assigned to this order by the orderer or by the receiver }
    spOrderResponse_Request, {@enum.value "request" spOrderResponse_Request The order that this is a response to }
    spOrderResponse_Who); {@enum.value "who" spOrderResponse_Who Who made the response }

  {@Enum TSearchParamsOrderSet
    Search Parameters for OrderSet
  }
  TSearchParamsOrderSet = (
    spOrderSet__content, {@enum.value "_content" spOrderSet__content Search on the entire content of the resource }
    spOrderSet__id, {@enum.value "_id" spOrderSet__id Logical id of this artifact }
    spOrderSet__lastUpdated, {@enum.value "_lastUpdated" spOrderSet__lastUpdated When the resource version last changed }
    spOrderSet__profile, {@enum.value "_profile" spOrderSet__profile Profiles this resource claims to conform to }
    spOrderSet__query, {@enum.value "_query" spOrderSet__query A custom search profile that describes a specific defined query operation }
    spOrderSet__security, {@enum.value "_security" spOrderSet__security Security Labels applied to this resource }
    spOrderSet__tag, {@enum.value "_tag" spOrderSet__tag Tags applied to this resource }
    spOrderSet__text); {@enum.value "_text" spOrderSet__text Search on the narrative of the resource }

  {@Enum TSearchParamsOrganization
    Search Parameters for Organization
  }
  TSearchParamsOrganization = (
    spOrganization__content, {@enum.value "_content" spOrganization__content Search on the entire content of the resource }
    spOrganization__id, {@enum.value "_id" spOrganization__id Logical id of this artifact }
    spOrganization__lastUpdated, {@enum.value "_lastUpdated" spOrganization__lastUpdated When the resource version last changed }
    spOrganization__profile, {@enum.value "_profile" spOrganization__profile Profiles this resource claims to conform to }
    spOrganization__query, {@enum.value "_query" spOrganization__query A custom search profile that describes a specific defined query operation }
    spOrganization__security, {@enum.value "_security" spOrganization__security Security Labels applied to this resource }
    spOrganization__tag, {@enum.value "_tag" spOrganization__tag Tags applied to this resource }
    spOrganization__text, {@enum.value "_text" spOrganization__text Search on the narrative of the resource }
    spOrganization_Active, {@enum.value "active" spOrganization_Active Whether the organization's record is active }
    spOrganization_Address, {@enum.value "address" spOrganization_Address A (part of the) address of the Organization }
    spOrganization_Addresscity, {@enum.value "address-city" spOrganization_Addresscity A city specified in an address }
    spOrganization_Addresscountry, {@enum.value "address-country" spOrganization_Addresscountry A country specified in an address }
    spOrganization_Addresspostalcode, {@enum.value "address-postalcode" spOrganization_Addresspostalcode A postal code specified in an address }
    spOrganization_Addressstate, {@enum.value "address-state" spOrganization_Addressstate A state specified in an address }
    spOrganization_Addressuse, {@enum.value "address-use" spOrganization_Addressuse A use code specified in an address }
    spOrganization_Identifier, {@enum.value "identifier" spOrganization_Identifier Any identifier for the organization (not the accreditation issuer's identifier) }
    spOrganization_Name, {@enum.value "name" spOrganization_Name A portion of the organization's name }
    spOrganization_Partof, {@enum.value "partof" spOrganization_Partof Search all organizations that are part of the given organization }
    spOrganization_Phonetic, {@enum.value "phonetic" spOrganization_Phonetic A portion of the organization's name using some kind of phonetic matching algorithm }
    spOrganization_Type); {@enum.value "type" spOrganization_Type A code for the type of organization }

  {@Enum TSearchParamsPatient
    Search Parameters for Patient
  }
  TSearchParamsPatient = (
    spPatient__content, {@enum.value "_content" spPatient__content Search on the entire content of the resource }
    spPatient__id, {@enum.value "_id" spPatient__id Logical id of this artifact }
    spPatient__lastUpdated, {@enum.value "_lastUpdated" spPatient__lastUpdated When the resource version last changed }
    spPatient__profile, {@enum.value "_profile" spPatient__profile Profiles this resource claims to conform to }
    spPatient__query, {@enum.value "_query" spPatient__query A custom search profile that describes a specific defined query operation }
    spPatient__security, {@enum.value "_security" spPatient__security Security Labels applied to this resource }
    spPatient__tag, {@enum.value "_tag" spPatient__tag Tags applied to this resource }
    spPatient__text, {@enum.value "_text" spPatient__text Search on the narrative of the resource }
    spPatient_Active, {@enum.value "active" spPatient_Active Whether the patient record is active }
    spPatient_Address, {@enum.value "address" spPatient_Address An address in any kind of address/part of the patient }
    spPatient_Addresscity, {@enum.value "address-city" spPatient_Addresscity A city specified in an address }
    spPatient_Addresscountry, {@enum.value "address-country" spPatient_Addresscountry A country specified in an address }
    spPatient_Addresspostalcode, {@enum.value "address-postalcode" spPatient_Addresspostalcode A postalCode specified in an address }
    spPatient_Addressstate, {@enum.value "address-state" spPatient_Addressstate A state specified in an address }
    spPatient_Addressuse, {@enum.value "address-use" spPatient_Addressuse A use code specified in an address }
    spPatient_Animalbreed, {@enum.value "animal-breed" spPatient_Animalbreed The breed for animal patients }
    spPatient_Animalspecies, {@enum.value "animal-species" spPatient_Animalspecies The species for animal patients }
    spPatient_Birthdate, {@enum.value "birthdate" spPatient_Birthdate The patient's date of birth }
    spPatient_Careprovider, {@enum.value "careprovider" spPatient_Careprovider Patient's nominated care provider, could be a care manager, not the organization that manages the record }
    spPatient_Deathdate, {@enum.value "deathdate" spPatient_Deathdate The date of death has been provided and satisfies this search value }
    spPatient_Deceased, {@enum.value "deceased" spPatient_Deceased This patient has been marked as deceased, or as a death date entered }
    spPatient_Email, {@enum.value "email" spPatient_Email A value in an email contact }
    spPatient_Ethnicity, {@enum.value "ethnicity" spPatient_Ethnicity Returns patients with an ethnicity extension matching the specified code. }
    spPatient_Family, {@enum.value "family" spPatient_Family A portion of the family name of the patient }
    spPatient_Gender, {@enum.value "gender" spPatient_Gender Gender of the patient }
    spPatient_Given, {@enum.value "given" spPatient_Given A portion of the given name of the patient }
    spPatient_Identifier, {@enum.value "identifier" spPatient_Identifier A patient identifier }
    spPatient_Language, {@enum.value "language" spPatient_Language Language code (irrespective of use value) }
    spPatient_Link, {@enum.value "link" spPatient_Link All patients linked to the given patient }
    spPatient_Name, {@enum.value "name" spPatient_Name A portion of either family or given name of the patient }
    spPatient_Organization, {@enum.value "organization" spPatient_Organization The organization at which this person is a patient }
    spPatient_Phone, {@enum.value "phone" spPatient_Phone A value in a phone contact }
    spPatient_Phonetic, {@enum.value "phonetic" spPatient_Phonetic A portion of either family or given name using some kind of phonetic matching algorithm }
    spPatient_Race, {@enum.value "race" spPatient_Race Returns patients with a race extension matching the specified code. }
    spPatient_Telecom); {@enum.value "telecom" spPatient_Telecom The value in any kind of telecom details of the patient }

  {@Enum TSearchParamsPaymentNotice
    Search Parameters for PaymentNotice
  }
  TSearchParamsPaymentNotice = (
    spPaymentNotice__content, {@enum.value "_content" spPaymentNotice__content Search on the entire content of the resource }
    spPaymentNotice__id, {@enum.value "_id" spPaymentNotice__id Logical id of this artifact }
    spPaymentNotice__lastUpdated, {@enum.value "_lastUpdated" spPaymentNotice__lastUpdated When the resource version last changed }
    spPaymentNotice__profile, {@enum.value "_profile" spPaymentNotice__profile Profiles this resource claims to conform to }
    spPaymentNotice__query, {@enum.value "_query" spPaymentNotice__query A custom search profile that describes a specific defined query operation }
    spPaymentNotice__security, {@enum.value "_security" spPaymentNotice__security Security Labels applied to this resource }
    spPaymentNotice__tag, {@enum.value "_tag" spPaymentNotice__tag Tags applied to this resource }
    spPaymentNotice__text, {@enum.value "_text" spPaymentNotice__text Search on the narrative of the resource }
    spPaymentNotice_Created, {@enum.value "created" spPaymentNotice_Created Creation date fro the notice }
    spPaymentNotice_Identifier, {@enum.value "identifier" spPaymentNotice_Identifier The business identifier of the notice }
    spPaymentNotice_Organization, {@enum.value "organization" spPaymentNotice_Organization The organization who generated this resource }
    spPaymentNotice_Paymentstatus, {@enum.value "paymentstatus" spPaymentNotice_Paymentstatus The type of payment notice }
    spPaymentNotice_Provider, {@enum.value "provider" spPaymentNotice_Provider The reference to the provider }
    spPaymentNotice_Request, {@enum.value "request" spPaymentNotice_Request The Claim }
    spPaymentNotice_Response, {@enum.value "response" spPaymentNotice_Response The ClaimResponse }
    spPaymentNotice_Statusdate); {@enum.value "statusdate" spPaymentNotice_Statusdate The date of the payment action }

  {@Enum TSearchParamsPaymentReconciliation
    Search Parameters for PaymentReconciliation
  }
  TSearchParamsPaymentReconciliation = (
    spPaymentReconciliation__content, {@enum.value "_content" spPaymentReconciliation__content Search on the entire content of the resource }
    spPaymentReconciliation__id, {@enum.value "_id" spPaymentReconciliation__id Logical id of this artifact }
    spPaymentReconciliation__lastUpdated, {@enum.value "_lastUpdated" spPaymentReconciliation__lastUpdated When the resource version last changed }
    spPaymentReconciliation__profile, {@enum.value "_profile" spPaymentReconciliation__profile Profiles this resource claims to conform to }
    spPaymentReconciliation__query, {@enum.value "_query" spPaymentReconciliation__query A custom search profile that describes a specific defined query operation }
    spPaymentReconciliation__security, {@enum.value "_security" spPaymentReconciliation__security Security Labels applied to this resource }
    spPaymentReconciliation__tag, {@enum.value "_tag" spPaymentReconciliation__tag Tags applied to this resource }
    spPaymentReconciliation__text, {@enum.value "_text" spPaymentReconciliation__text Search on the narrative of the resource }
    spPaymentReconciliation_Created, {@enum.value "created" spPaymentReconciliation_Created The creation date }
    spPaymentReconciliation_Disposition, {@enum.value "disposition" spPaymentReconciliation_Disposition The contents of the disposition message }
    spPaymentReconciliation_Identifier, {@enum.value "identifier" spPaymentReconciliation_Identifier The business identifier of the Explanation of Benefit }
    spPaymentReconciliation_Organization, {@enum.value "organization" spPaymentReconciliation_Organization The organization who generated this resource }
    spPaymentReconciliation_Outcome, {@enum.value "outcome" spPaymentReconciliation_Outcome The processing outcome }
    spPaymentReconciliation_Request, {@enum.value "request" spPaymentReconciliation_Request The reference to the claim }
    spPaymentReconciliation_Requestorganization, {@enum.value "requestorganization" spPaymentReconciliation_Requestorganization The organization who generated this resource }
    spPaymentReconciliation_Requestprovider); {@enum.value "requestprovider" spPaymentReconciliation_Requestprovider The reference to the provider who sumbitted the claim }

  {@Enum TSearchParamsPerson
    Search Parameters for Person
  }
  TSearchParamsPerson = (
    spPerson__content, {@enum.value "_content" spPerson__content Search on the entire content of the resource }
    spPerson__id, {@enum.value "_id" spPerson__id Logical id of this artifact }
    spPerson__lastUpdated, {@enum.value "_lastUpdated" spPerson__lastUpdated When the resource version last changed }
    spPerson__profile, {@enum.value "_profile" spPerson__profile Profiles this resource claims to conform to }
    spPerson__query, {@enum.value "_query" spPerson__query A custom search profile that describes a specific defined query operation }
    spPerson__security, {@enum.value "_security" spPerson__security Security Labels applied to this resource }
    spPerson__tag, {@enum.value "_tag" spPerson__tag Tags applied to this resource }
    spPerson__text, {@enum.value "_text" spPerson__text Search on the narrative of the resource }
    spPerson_Address, {@enum.value "address" spPerson_Address An address in any kind of address/part }
    spPerson_Addresscity, {@enum.value "address-city" spPerson_Addresscity A city specified in an address }
    spPerson_Addresscountry, {@enum.value "address-country" spPerson_Addresscountry A country specified in an address }
    spPerson_Addresspostalcode, {@enum.value "address-postalcode" spPerson_Addresspostalcode A postal code specified in an address }
    spPerson_Addressstate, {@enum.value "address-state" spPerson_Addressstate A state specified in an address }
    spPerson_Addressuse, {@enum.value "address-use" spPerson_Addressuse A use code specified in an address }
    spPerson_Birthdate, {@enum.value "birthdate" spPerson_Birthdate The person's date of birth }
    spPerson_Email, {@enum.value "email" spPerson_Email A value in an email contact }
    spPerson_Gender, {@enum.value "gender" spPerson_Gender The gender of the person }
    spPerson_Identifier, {@enum.value "identifier" spPerson_Identifier A person Identifier }
    spPerson_Link, {@enum.value "link" spPerson_Link Any link has this Patient, Person, RelatedPerson or Practitioner reference }
    spPerson_Name, {@enum.value "name" spPerson_Name A portion of name in any name part }
    spPerson_Organization, {@enum.value "organization" spPerson_Organization The organization at which this person record is being managed }
    spPerson_Patient, {@enum.value "patient" spPerson_Patient The Person links to this Patient }
    spPerson_Phone, {@enum.value "phone" spPerson_Phone A value in a phone contact }
    spPerson_Phonetic, {@enum.value "phonetic" spPerson_Phonetic A portion of name using some kind of phonetic matching algorithm }
    spPerson_Practitioner, {@enum.value "practitioner" spPerson_Practitioner The Person links to this Practitioner }
    spPerson_Relatedperson, {@enum.value "relatedperson" spPerson_Relatedperson The Person links to this RelatedPerson }
    spPerson_Telecom); {@enum.value "telecom" spPerson_Telecom The value in any kind of contact }

  {@Enum TSearchParamsPractitioner
    Search Parameters for Practitioner
  }
  TSearchParamsPractitioner = (
    spPractitioner__content, {@enum.value "_content" spPractitioner__content Search on the entire content of the resource }
    spPractitioner__id, {@enum.value "_id" spPractitioner__id Logical id of this artifact }
    spPractitioner__lastUpdated, {@enum.value "_lastUpdated" spPractitioner__lastUpdated When the resource version last changed }
    spPractitioner__profile, {@enum.value "_profile" spPractitioner__profile Profiles this resource claims to conform to }
    spPractitioner__query, {@enum.value "_query" spPractitioner__query A custom search profile that describes a specific defined query operation }
    spPractitioner__security, {@enum.value "_security" spPractitioner__security Security Labels applied to this resource }
    spPractitioner__tag, {@enum.value "_tag" spPractitioner__tag Tags applied to this resource }
    spPractitioner__text, {@enum.value "_text" spPractitioner__text Search on the narrative of the resource }
    spPractitioner_Address, {@enum.value "address" spPractitioner_Address An address in any kind of address/part }
    spPractitioner_Addresscity, {@enum.value "address-city" spPractitioner_Addresscity A city specified in an address }
    spPractitioner_Addresscountry, {@enum.value "address-country" spPractitioner_Addresscountry A country specified in an address }
    spPractitioner_Addresspostalcode, {@enum.value "address-postalcode" spPractitioner_Addresspostalcode A postalCode specified in an address }
    spPractitioner_Addressstate, {@enum.value "address-state" spPractitioner_Addressstate A state specified in an address }
    spPractitioner_Addressuse, {@enum.value "address-use" spPractitioner_Addressuse A use code specified in an address }
    spPractitioner_Communication, {@enum.value "communication" spPractitioner_Communication One of the languages that the practitioner can communicate with }
    spPractitioner_Email, {@enum.value "email" spPractitioner_Email A value in an email contact }
    spPractitioner_Family, {@enum.value "family" spPractitioner_Family A portion of the family name }
    spPractitioner_Gender, {@enum.value "gender" spPractitioner_Gender Gender of the practitioner }
    spPractitioner_Given, {@enum.value "given" spPractitioner_Given A portion of the given name }
    spPractitioner_Identifier, {@enum.value "identifier" spPractitioner_Identifier A practitioner's Identifier }
    spPractitioner_Location, {@enum.value "location" spPractitioner_Location One of the locations at which this practitioner provides care }
    spPractitioner_Name, {@enum.value "name" spPractitioner_Name A portion of either family or given name }
    spPractitioner_Organization, {@enum.value "organization" spPractitioner_Organization The identity of the organization the practitioner represents / acts on behalf of }
    spPractitioner_Phone, {@enum.value "phone" spPractitioner_Phone A value in a phone contact }
    spPractitioner_Phonetic, {@enum.value "phonetic" spPractitioner_Phonetic A portion of either family or given name using some kind of phonetic matching algorithm }
    spPractitioner_Role, {@enum.value "role" spPractitioner_Role The practitioner can perform this role at for the organization }
    spPractitioner_Specialty, {@enum.value "specialty" spPractitioner_Specialty The practitioner has this specialty at an organization }
    spPractitioner_Telecom); {@enum.value "telecom" spPractitioner_Telecom The value in any kind of contact }

  {@Enum TSearchParamsProcedure
    Search Parameters for Procedure
  }
  TSearchParamsProcedure = (
    spProcedure__content, {@enum.value "_content" spProcedure__content Search on the entire content of the resource }
    spProcedure__id, {@enum.value "_id" spProcedure__id Logical id of this artifact }
    spProcedure__lastUpdated, {@enum.value "_lastUpdated" spProcedure__lastUpdated When the resource version last changed }
    spProcedure__profile, {@enum.value "_profile" spProcedure__profile Profiles this resource claims to conform to }
    spProcedure__query, {@enum.value "_query" spProcedure__query A custom search profile that describes a specific defined query operation }
    spProcedure__security, {@enum.value "_security" spProcedure__security Security Labels applied to this resource }
    spProcedure__tag, {@enum.value "_tag" spProcedure__tag Tags applied to this resource }
    spProcedure__text, {@enum.value "_text" spProcedure__text Search on the narrative of the resource }
    spProcedure_Code, {@enum.value "code" spProcedure_Code A code to identify a  procedure }
    spProcedure_Date, {@enum.value "date" spProcedure_Date Date/Period the procedure was performed }
    spProcedure_Encounter, {@enum.value "encounter" spProcedure_Encounter The encounter associated with the procedure }
    spProcedure_Identifier, {@enum.value "identifier" spProcedure_Identifier A unique identifier for a procedure }
    spProcedure_Location, {@enum.value "location" spProcedure_Location Where the procedure happened }
    spProcedure_Patient, {@enum.value "patient" spProcedure_Patient Search by subject - a patient }
    spProcedure_Performer, {@enum.value "performer" spProcedure_Performer The reference to the practitioner }
    spProcedure_Subject); {@enum.value "subject" spProcedure_Subject Search by subject }

  {@Enum TSearchParamsProcedureRequest
    Search Parameters for ProcedureRequest
  }
  TSearchParamsProcedureRequest = (
    spProcedureRequest__content, {@enum.value "_content" spProcedureRequest__content Search on the entire content of the resource }
    spProcedureRequest__id, {@enum.value "_id" spProcedureRequest__id Logical id of this artifact }
    spProcedureRequest__lastUpdated, {@enum.value "_lastUpdated" spProcedureRequest__lastUpdated When the resource version last changed }
    spProcedureRequest__profile, {@enum.value "_profile" spProcedureRequest__profile Profiles this resource claims to conform to }
    spProcedureRequest__query, {@enum.value "_query" spProcedureRequest__query A custom search profile that describes a specific defined query operation }
    spProcedureRequest__security, {@enum.value "_security" spProcedureRequest__security Security Labels applied to this resource }
    spProcedureRequest__tag, {@enum.value "_tag" spProcedureRequest__tag Tags applied to this resource }
    spProcedureRequest__text, {@enum.value "_text" spProcedureRequest__text Search on the narrative of the resource }
    spProcedureRequest_Encounter, {@enum.value "encounter" spProcedureRequest_Encounter Encounter request created during }
    spProcedureRequest_Identifier, {@enum.value "identifier" spProcedureRequest_Identifier A unique identifier of the Procedure Request }
    spProcedureRequest_Orderer, {@enum.value "orderer" spProcedureRequest_Orderer Who made request }
    spProcedureRequest_Patient, {@enum.value "patient" spProcedureRequest_Patient Search by subject - a patient }
    spProcedureRequest_Performer, {@enum.value "performer" spProcedureRequest_Performer Who should perform the procedure }
    spProcedureRequest_Subject); {@enum.value "subject" spProcedureRequest_Subject Search by subject }

  {@Enum TSearchParamsProcessRequest
    Search Parameters for ProcessRequest
  }
  TSearchParamsProcessRequest = (
    spProcessRequest__content, {@enum.value "_content" spProcessRequest__content Search on the entire content of the resource }
    spProcessRequest__id, {@enum.value "_id" spProcessRequest__id Logical id of this artifact }
    spProcessRequest__lastUpdated, {@enum.value "_lastUpdated" spProcessRequest__lastUpdated When the resource version last changed }
    spProcessRequest__profile, {@enum.value "_profile" spProcessRequest__profile Profiles this resource claims to conform to }
    spProcessRequest__query, {@enum.value "_query" spProcessRequest__query A custom search profile that describes a specific defined query operation }
    spProcessRequest__security, {@enum.value "_security" spProcessRequest__security Security Labels applied to this resource }
    spProcessRequest__tag, {@enum.value "_tag" spProcessRequest__tag Tags applied to this resource }
    spProcessRequest__text, {@enum.value "_text" spProcessRequest__text Search on the narrative of the resource }
    spProcessRequest_Action, {@enum.value "action" spProcessRequest_Action The action requested by this resource }
    spProcessRequest_Identifier, {@enum.value "identifier" spProcessRequest_Identifier The business identifier of the ProcessRequest }
    spProcessRequest_Organization, {@enum.value "organization" spProcessRequest_Organization The organization who generated this request }
    spProcessRequest_Provider); {@enum.value "provider" spProcessRequest_Provider The provider who regenerated this request }

  {@Enum TSearchParamsProcessResponse
    Search Parameters for ProcessResponse
  }
  TSearchParamsProcessResponse = (
    spProcessResponse__content, {@enum.value "_content" spProcessResponse__content Search on the entire content of the resource }
    spProcessResponse__id, {@enum.value "_id" spProcessResponse__id Logical id of this artifact }
    spProcessResponse__lastUpdated, {@enum.value "_lastUpdated" spProcessResponse__lastUpdated When the resource version last changed }
    spProcessResponse__profile, {@enum.value "_profile" spProcessResponse__profile Profiles this resource claims to conform to }
    spProcessResponse__query, {@enum.value "_query" spProcessResponse__query A custom search profile that describes a specific defined query operation }
    spProcessResponse__security, {@enum.value "_security" spProcessResponse__security Security Labels applied to this resource }
    spProcessResponse__tag, {@enum.value "_tag" spProcessResponse__tag Tags applied to this resource }
    spProcessResponse__text, {@enum.value "_text" spProcessResponse__text Search on the narrative of the resource }
    spProcessResponse_Identifier, {@enum.value "identifier" spProcessResponse_Identifier The business identifier of the Explanation of Benefit }
    spProcessResponse_Organization, {@enum.value "organization" spProcessResponse_Organization The organization who generated this resource }
    spProcessResponse_Request, {@enum.value "request" spProcessResponse_Request The reference to the claim }
    spProcessResponse_Requestorganization, {@enum.value "requestorganization" spProcessResponse_Requestorganization The Organization who is responsible the request transaction }
    spProcessResponse_Requestprovider); {@enum.value "requestprovider" spProcessResponse_Requestprovider The Provider who is responsible the request transaction }

  {@Enum TSearchParamsProtocol
    Search Parameters for Protocol
  }
  TSearchParamsProtocol = (
    spProtocol__content, {@enum.value "_content" spProtocol__content Search on the entire content of the resource }
    spProtocol__id, {@enum.value "_id" spProtocol__id Logical id of this artifact }
    spProtocol__lastUpdated, {@enum.value "_lastUpdated" spProtocol__lastUpdated When the resource version last changed }
    spProtocol__profile, {@enum.value "_profile" spProtocol__profile Profiles this resource claims to conform to }
    spProtocol__query, {@enum.value "_query" spProtocol__query A custom search profile that describes a specific defined query operation }
    spProtocol__security, {@enum.value "_security" spProtocol__security Security Labels applied to this resource }
    spProtocol__tag, {@enum.value "_tag" spProtocol__tag Tags applied to this resource }
    spProtocol__text, {@enum.value "_text" spProtocol__text Search on the narrative of the resource }
    spProtocol_Identifier, {@enum.value "identifier" spProtocol_Identifier The unique id for a particular protocol }
    spProtocol_Subject); {@enum.value "subject" spProtocol_Subject Protocols with specified subject }

  {@Enum TSearchParamsProvenance
    Search Parameters for Provenance
  }
  TSearchParamsProvenance = (
    spProvenance__content, {@enum.value "_content" spProvenance__content Search on the entire content of the resource }
    spProvenance__id, {@enum.value "_id" spProvenance__id Logical id of this artifact }
    spProvenance__lastUpdated, {@enum.value "_lastUpdated" spProvenance__lastUpdated When the resource version last changed }
    spProvenance__profile, {@enum.value "_profile" spProvenance__profile Profiles this resource claims to conform to }
    spProvenance__query, {@enum.value "_query" spProvenance__query A custom search profile that describes a specific defined query operation }
    spProvenance__security, {@enum.value "_security" spProvenance__security Security Labels applied to this resource }
    spProvenance__tag, {@enum.value "_tag" spProvenance__tag Tags applied to this resource }
    spProvenance__text, {@enum.value "_text" spProvenance__text Search on the narrative of the resource }
    spProvenance_Agent, {@enum.value "agent" spProvenance_Agent Individual, device or organization playing role }
    spProvenance_End, {@enum.value "end" spProvenance_End End time with inclusive boundary, if not ongoing }
    spProvenance_Entity, {@enum.value "entity" spProvenance_Entity Identity of entity }
    spProvenance_Entitytype, {@enum.value "entity-type" spProvenance_Entitytype The type of resource in this entity }
    spProvenance_Location, {@enum.value "location" spProvenance_Location Where the activity occurred, if relevant }
    spProvenance_Patient, {@enum.value "patient" spProvenance_Patient Target Reference(s) (usually version specific) }
    spProvenance_Sig, {@enum.value "sig" spProvenance_Sig Indication of the reason the entity signed the object(s) }
    spProvenance_Start, {@enum.value "start" spProvenance_Start Starting time with inclusive boundary }
    spProvenance_Target, {@enum.value "target" spProvenance_Target Target Reference(s) (usually version specific) }
    spProvenance_Userid); {@enum.value "userid" spProvenance_Userid Authorization-system identifier for the agent }

  {@Enum TSearchParamsQuestionnaire
    Search Parameters for Questionnaire
  }
  TSearchParamsQuestionnaire = (
    spQuestionnaire__content, {@enum.value "_content" spQuestionnaire__content Search on the entire content of the resource }
    spQuestionnaire__id, {@enum.value "_id" spQuestionnaire__id Logical id of this artifact }
    spQuestionnaire__lastUpdated, {@enum.value "_lastUpdated" spQuestionnaire__lastUpdated When the resource version last changed }
    spQuestionnaire__profile, {@enum.value "_profile" spQuestionnaire__profile Profiles this resource claims to conform to }
    spQuestionnaire__query, {@enum.value "_query" spQuestionnaire__query A custom search profile that describes a specific defined query operation }
    spQuestionnaire__security, {@enum.value "_security" spQuestionnaire__security Security Labels applied to this resource }
    spQuestionnaire__tag, {@enum.value "_tag" spQuestionnaire__tag Tags applied to this resource }
    spQuestionnaire__text, {@enum.value "_text" spQuestionnaire__text Search on the narrative of the resource }
    spQuestionnaire_Code, {@enum.value "code" spQuestionnaire_Code A code that corresponds to the questionnaire or one of its groups }
    spQuestionnaire_Date, {@enum.value "date" spQuestionnaire_Date When the questionnaire was last changed }
    spQuestionnaire_Identifier, {@enum.value "identifier" spQuestionnaire_Identifier An identifier for the questionnaire }
    spQuestionnaire_Publisher, {@enum.value "publisher" spQuestionnaire_Publisher The author of the questionnaire }
    spQuestionnaire_Status, {@enum.value "status" spQuestionnaire_Status The status of the questionnaire }
    spQuestionnaire_Title, {@enum.value "title" spQuestionnaire_Title All or part of the name of the questionnaire }
    spQuestionnaire_Version); {@enum.value "version" spQuestionnaire_Version The business version of the questionnaire }

  {@Enum TSearchParamsQuestionnaireResponse
    Search Parameters for QuestionnaireResponse
  }
  TSearchParamsQuestionnaireResponse = (
    spQuestionnaireResponse__content, {@enum.value "_content" spQuestionnaireResponse__content Search on the entire content of the resource }
    spQuestionnaireResponse__id, {@enum.value "_id" spQuestionnaireResponse__id Logical id of this artifact }
    spQuestionnaireResponse__lastUpdated, {@enum.value "_lastUpdated" spQuestionnaireResponse__lastUpdated When the resource version last changed }
    spQuestionnaireResponse__profile, {@enum.value "_profile" spQuestionnaireResponse__profile Profiles this resource claims to conform to }
    spQuestionnaireResponse__query, {@enum.value "_query" spQuestionnaireResponse__query A custom search profile that describes a specific defined query operation }
    spQuestionnaireResponse__security, {@enum.value "_security" spQuestionnaireResponse__security Security Labels applied to this resource }
    spQuestionnaireResponse__tag, {@enum.value "_tag" spQuestionnaireResponse__tag Tags applied to this resource }
    spQuestionnaireResponse__text, {@enum.value "_text" spQuestionnaireResponse__text Search on the narrative of the resource }
    spQuestionnaireResponse_Author, {@enum.value "author" spQuestionnaireResponse_Author The author of the questionnaire }
    spQuestionnaireResponse_Authored, {@enum.value "authored" spQuestionnaireResponse_Authored When the questionnaire was authored }
    spQuestionnaireResponse_Encounter, {@enum.value "encounter" spQuestionnaireResponse_Encounter Encounter during which questionnaire was authored }
    spQuestionnaireResponse_Patient, {@enum.value "patient" spQuestionnaireResponse_Patient The patient that is the subject of the questionnaire }
    spQuestionnaireResponse_Questionnaire, {@enum.value "questionnaire" spQuestionnaireResponse_Questionnaire The questionnaire the answers are provided for }
    spQuestionnaireResponse_Source, {@enum.value "source" spQuestionnaireResponse_Source The person who answered the questions }
    spQuestionnaireResponse_Status, {@enum.value "status" spQuestionnaireResponse_Status The status of the questionnaire response }
    spQuestionnaireResponse_Subject); {@enum.value "subject" spQuestionnaireResponse_Subject The subject of the questionnaire }

  {@Enum TSearchParamsReferralRequest
    Search Parameters for ReferralRequest
  }
  TSearchParamsReferralRequest = (
    spReferralRequest__content, {@enum.value "_content" spReferralRequest__content Search on the entire content of the resource }
    spReferralRequest__id, {@enum.value "_id" spReferralRequest__id Logical id of this artifact }
    spReferralRequest__lastUpdated, {@enum.value "_lastUpdated" spReferralRequest__lastUpdated When the resource version last changed }
    spReferralRequest__profile, {@enum.value "_profile" spReferralRequest__profile Profiles this resource claims to conform to }
    spReferralRequest__query, {@enum.value "_query" spReferralRequest__query A custom search profile that describes a specific defined query operation }
    spReferralRequest__security, {@enum.value "_security" spReferralRequest__security Security Labels applied to this resource }
    spReferralRequest__tag, {@enum.value "_tag" spReferralRequest__tag Tags applied to this resource }
    spReferralRequest__text, {@enum.value "_text" spReferralRequest__text Search on the narrative of the resource }
    spReferralRequest_Date, {@enum.value "date" spReferralRequest_Date Creation or activation date }
    spReferralRequest_Patient, {@enum.value "patient" spReferralRequest_Patient Who the referral is about }
    spReferralRequest_Priority, {@enum.value "priority" spReferralRequest_Priority The priority assigned to the referral }
    spReferralRequest_Recipient, {@enum.value "recipient" spReferralRequest_Recipient The person that the referral was sent to }
    spReferralRequest_Requester, {@enum.value "requester" spReferralRequest_Requester Requester of referral / transfer of care }
    spReferralRequest_Specialty, {@enum.value "specialty" spReferralRequest_Specialty The specialty that the referral is for }
    spReferralRequest_Status, {@enum.value "status" spReferralRequest_Status The status of the referral }
    spReferralRequest_Type); {@enum.value "type" spReferralRequest_Type The type of the referral }

  {@Enum TSearchParamsRelatedPerson
    Search Parameters for RelatedPerson
  }
  TSearchParamsRelatedPerson = (
    spRelatedPerson__content, {@enum.value "_content" spRelatedPerson__content Search on the entire content of the resource }
    spRelatedPerson__id, {@enum.value "_id" spRelatedPerson__id Logical id of this artifact }
    spRelatedPerson__lastUpdated, {@enum.value "_lastUpdated" spRelatedPerson__lastUpdated When the resource version last changed }
    spRelatedPerson__profile, {@enum.value "_profile" spRelatedPerson__profile Profiles this resource claims to conform to }
    spRelatedPerson__query, {@enum.value "_query" spRelatedPerson__query A custom search profile that describes a specific defined query operation }
    spRelatedPerson__security, {@enum.value "_security" spRelatedPerson__security Security Labels applied to this resource }
    spRelatedPerson__tag, {@enum.value "_tag" spRelatedPerson__tag Tags applied to this resource }
    spRelatedPerson__text, {@enum.value "_text" spRelatedPerson__text Search on the narrative of the resource }
    spRelatedPerson_Address, {@enum.value "address" spRelatedPerson_Address An address in any kind of address/part }
    spRelatedPerson_Addresscity, {@enum.value "address-city" spRelatedPerson_Addresscity A city specified in an address }
    spRelatedPerson_Addresscountry, {@enum.value "address-country" spRelatedPerson_Addresscountry A country specified in an address }
    spRelatedPerson_Addresspostalcode, {@enum.value "address-postalcode" spRelatedPerson_Addresspostalcode A postal code specified in an address }
    spRelatedPerson_Addressstate, {@enum.value "address-state" spRelatedPerson_Addressstate A state specified in an address }
    spRelatedPerson_Addressuse, {@enum.value "address-use" spRelatedPerson_Addressuse A use code specified in an address }
    spRelatedPerson_Birthdate, {@enum.value "birthdate" spRelatedPerson_Birthdate The Related Person's date of birth }
    spRelatedPerson_Email, {@enum.value "email" spRelatedPerson_Email A value in an email contact }
    spRelatedPerson_Gender, {@enum.value "gender" spRelatedPerson_Gender Gender of the person }
    spRelatedPerson_Identifier, {@enum.value "identifier" spRelatedPerson_Identifier A patient Identifier }
    spRelatedPerson_Name, {@enum.value "name" spRelatedPerson_Name A portion of name in any name part }
    spRelatedPerson_Patient, {@enum.value "patient" spRelatedPerson_Patient The patient this person is related to }
    spRelatedPerson_Phone, {@enum.value "phone" spRelatedPerson_Phone A value in a phone contact }
    spRelatedPerson_Phonetic, {@enum.value "phonetic" spRelatedPerson_Phonetic A portion of name using some kind of phonetic matching algorithm }
    spRelatedPerson_Telecom); {@enum.value "telecom" spRelatedPerson_Telecom The value in any kind of contact }

  {@Enum TSearchParamsRiskAssessment
    Search Parameters for RiskAssessment
  }
  TSearchParamsRiskAssessment = (
    spRiskAssessment__content, {@enum.value "_content" spRiskAssessment__content Search on the entire content of the resource }
    spRiskAssessment__id, {@enum.value "_id" spRiskAssessment__id Logical id of this artifact }
    spRiskAssessment__lastUpdated, {@enum.value "_lastUpdated" spRiskAssessment__lastUpdated When the resource version last changed }
    spRiskAssessment__profile, {@enum.value "_profile" spRiskAssessment__profile Profiles this resource claims to conform to }
    spRiskAssessment__query, {@enum.value "_query" spRiskAssessment__query A custom search profile that describes a specific defined query operation }
    spRiskAssessment__security, {@enum.value "_security" spRiskAssessment__security Security Labels applied to this resource }
    spRiskAssessment__tag, {@enum.value "_tag" spRiskAssessment__tag Tags applied to this resource }
    spRiskAssessment__text, {@enum.value "_text" spRiskAssessment__text Search on the narrative of the resource }
    spRiskAssessment_Condition, {@enum.value "condition" spRiskAssessment_Condition Condition assessed }
    spRiskAssessment_Date, {@enum.value "date" spRiskAssessment_Date When was assessment made? }
    spRiskAssessment_Encounter, {@enum.value "encounter" spRiskAssessment_Encounter Where was assessment performed? }
    spRiskAssessment_Identifier, {@enum.value "identifier" spRiskAssessment_Identifier Unique identifier for the assessment }
    spRiskAssessment_Method, {@enum.value "method" spRiskAssessment_Method Evaluation mechanism }
    spRiskAssessment_Patient, {@enum.value "patient" spRiskAssessment_Patient Who/what does assessment apply to? }
    spRiskAssessment_Performer, {@enum.value "performer" spRiskAssessment_Performer Who did assessment? }
    spRiskAssessment_Subject); {@enum.value "subject" spRiskAssessment_Subject Who/what does assessment apply to? }

  {@Enum TSearchParamsSchedule
    Search Parameters for Schedule
  }
  TSearchParamsSchedule = (
    spSchedule__content, {@enum.value "_content" spSchedule__content Search on the entire content of the resource }
    spSchedule__id, {@enum.value "_id" spSchedule__id Logical id of this artifact }
    spSchedule__lastUpdated, {@enum.value "_lastUpdated" spSchedule__lastUpdated When the resource version last changed }
    spSchedule__profile, {@enum.value "_profile" spSchedule__profile Profiles this resource claims to conform to }
    spSchedule__query, {@enum.value "_query" spSchedule__query A custom search profile that describes a specific defined query operation }
    spSchedule__security, {@enum.value "_security" spSchedule__security Security Labels applied to this resource }
    spSchedule__tag, {@enum.value "_tag" spSchedule__tag Tags applied to this resource }
    spSchedule__text, {@enum.value "_text" spSchedule__text Search on the narrative of the resource }
    spSchedule_Actor, {@enum.value "actor" spSchedule_Actor The individual(HealthcareService, Practitioner, Location, ...) to find a Schedule for }
    spSchedule_Date, {@enum.value "date" spSchedule_Date Search for Schedule resources that have a period that contains this date specified }
    spSchedule_Identifier, {@enum.value "identifier" spSchedule_Identifier A Schedule Identifier }
    spSchedule_Type); {@enum.value "type" spSchedule_Type The type of appointments that can be booked into associated slot(s) }

  {@Enum TSearchParamsSearchParameter
    Search Parameters for SearchParameter
  }
  TSearchParamsSearchParameter = (
    spSearchParameter__content, {@enum.value "_content" spSearchParameter__content Search on the entire content of the resource }
    spSearchParameter__id, {@enum.value "_id" spSearchParameter__id Logical id of this artifact }
    spSearchParameter__lastUpdated, {@enum.value "_lastUpdated" spSearchParameter__lastUpdated When the resource version last changed }
    spSearchParameter__profile, {@enum.value "_profile" spSearchParameter__profile Profiles this resource claims to conform to }
    spSearchParameter__query, {@enum.value "_query" spSearchParameter__query A custom search profile that describes a specific defined query operation }
    spSearchParameter__security, {@enum.value "_security" spSearchParameter__security Security Labels applied to this resource }
    spSearchParameter__tag, {@enum.value "_tag" spSearchParameter__tag Tags applied to this resource }
    spSearchParameter__text, {@enum.value "_text" spSearchParameter__text Search on the narrative of the resource }
    spSearchParameter_Base, {@enum.value "base" spSearchParameter_Base The resource type this search parameter applies to }
    spSearchParameter_Code, {@enum.value "code" spSearchParameter_Code Code used in URL }
    spSearchParameter_Description, {@enum.value "description" spSearchParameter_Description Documentation for  search parameter }
    spSearchParameter_Name, {@enum.value "name" spSearchParameter_Name Informal name for this search parameter }
    spSearchParameter_Target, {@enum.value "target" spSearchParameter_Target Types of resource (if a resource reference) }
    spSearchParameter_Type, {@enum.value "type" spSearchParameter_Type number | date | string | token | reference | composite | quantity | uri }
    spSearchParameter_Url); {@enum.value "url" spSearchParameter_Url Absolute URL used to reference this search parameter }

  {@Enum TSearchParamsSequence
    Search Parameters for Sequence
  }
  TSearchParamsSequence = (
    spSequence__content, {@enum.value "_content" spSequence__content Search on the entire content of the resource }
    spSequence__id, {@enum.value "_id" spSequence__id Logical id of this artifact }
    spSequence__lastUpdated, {@enum.value "_lastUpdated" spSequence__lastUpdated When the resource version last changed }
    spSequence__profile, {@enum.value "_profile" spSequence__profile Profiles this resource claims to conform to }
    spSequence__query, {@enum.value "_query" spSequence__query A custom search profile that describes a specific defined query operation }
    spSequence__security, {@enum.value "_security" spSequence__security Security Labels applied to this resource }
    spSequence__tag, {@enum.value "_tag" spSequence__tag Tags applied to this resource }
    spSequence__text, {@enum.value "_text" spSequence__text Search on the narrative of the resource }
    spSequence_Chromosome, {@enum.value "chromosome" spSequence_Chromosome Chromosome of the sequence }
    spSequence_Coordinate, {@enum.value "coordinate" spSequence_Coordinate Genomic coordinate of the sequence. For example, a search for sequence in region 1:123-345 can be represented as `coordinate=1$lt345$gt123` }
    spSequence_End, {@enum.value "end" spSequence_End End position (0-based exclusive) of the sequence }
    spSequence_Species, {@enum.value "species" spSequence_Species The organism from which sample of the sequence was extracted. }
    spSequence_Start, {@enum.value "start" spSequence_Start Start position (0-based inclusive) of the sequence }
    spSequence_Type, {@enum.value "type" spSequence_Type The type of the variant: Amino acid / cDNA transcript / RNA variation. }
    spSequence_Variationid); {@enum.value "variationid" spSequence_Variationid Identifier for variant }

  {@Enum TSearchParamsSlot
    Search Parameters for Slot
  }
  TSearchParamsSlot = (
    spSlot__content, {@enum.value "_content" spSlot__content Search on the entire content of the resource }
    spSlot__id, {@enum.value "_id" spSlot__id Logical id of this artifact }
    spSlot__lastUpdated, {@enum.value "_lastUpdated" spSlot__lastUpdated When the resource version last changed }
    spSlot__profile, {@enum.value "_profile" spSlot__profile Profiles this resource claims to conform to }
    spSlot__query, {@enum.value "_query" spSlot__query A custom search profile that describes a specific defined query operation }
    spSlot__security, {@enum.value "_security" spSlot__security Security Labels applied to this resource }
    spSlot__tag, {@enum.value "_tag" spSlot__tag Tags applied to this resource }
    spSlot__text, {@enum.value "_text" spSlot__text Search on the narrative of the resource }
    spSlot_Fbtype, {@enum.value "fb-type" spSlot_Fbtype The free/busy status of the appointment }
    spSlot_Identifier, {@enum.value "identifier" spSlot_Identifier A Slot Identifier }
    spSlot_Schedule, {@enum.value "schedule" spSlot_Schedule The Schedule Resource that we are seeking a slot within }
    spSlot_Slottype, {@enum.value "slot-type" spSlot_Slottype The type of appointments that can be booked into the slot }
    spSlot_Start); {@enum.value "start" spSlot_Start Appointment date/time. }

  {@Enum TSearchParamsSpecimen
    Search Parameters for Specimen
  }
  TSearchParamsSpecimen = (
    spSpecimen__content, {@enum.value "_content" spSpecimen__content Search on the entire content of the resource }
    spSpecimen__id, {@enum.value "_id" spSpecimen__id Logical id of this artifact }
    spSpecimen__lastUpdated, {@enum.value "_lastUpdated" spSpecimen__lastUpdated When the resource version last changed }
    spSpecimen__profile, {@enum.value "_profile" spSpecimen__profile Profiles this resource claims to conform to }
    spSpecimen__query, {@enum.value "_query" spSpecimen__query A custom search profile that describes a specific defined query operation }
    spSpecimen__security, {@enum.value "_security" spSpecimen__security Security Labels applied to this resource }
    spSpecimen__tag, {@enum.value "_tag" spSpecimen__tag Tags applied to this resource }
    spSpecimen__text, {@enum.value "_text" spSpecimen__text Search on the narrative of the resource }
    spSpecimen_Accession, {@enum.value "accession" spSpecimen_Accession The accession number associated with the specimen }
    spSpecimen_Bodysite, {@enum.value "bodysite" spSpecimen_Bodysite The code for the body site from where the specimen originated }
    spSpecimen_Collected, {@enum.value "collected" spSpecimen_Collected The date the specimen was collected }
    spSpecimen_Collector, {@enum.value "collector" spSpecimen_Collector Who collected the specimen }
    spSpecimen_Container, {@enum.value "container" spSpecimen_Container The kind of specimen container }
    spSpecimen_Containerid, {@enum.value "container-id" spSpecimen_Containerid The unique identifier associated with the specimen container }
    spSpecimen_Identifier, {@enum.value "identifier" spSpecimen_Identifier The unique identifier associated with the specimen }
    spSpecimen_Parent, {@enum.value "parent" spSpecimen_Parent The parent of the specimen }
    spSpecimen_Patient, {@enum.value "patient" spSpecimen_Patient The patient the specimen comes from }
    spSpecimen_Subject, {@enum.value "subject" spSpecimen_Subject The subject of the specimen }
    spSpecimen_Type); {@enum.value "type" spSpecimen_Type The specimen type }

  {@Enum TSearchParamsStructureDefinition
    Search Parameters for StructureDefinition
  }
  TSearchParamsStructureDefinition = (
    spStructureDefinition__content, {@enum.value "_content" spStructureDefinition__content Search on the entire content of the resource }
    spStructureDefinition__id, {@enum.value "_id" spStructureDefinition__id Logical id of this artifact }
    spStructureDefinition__lastUpdated, {@enum.value "_lastUpdated" spStructureDefinition__lastUpdated When the resource version last changed }
    spStructureDefinition__profile, {@enum.value "_profile" spStructureDefinition__profile Profiles this resource claims to conform to }
    spStructureDefinition__query, {@enum.value "_query" spStructureDefinition__query A custom search profile that describes a specific defined query operation }
    spStructureDefinition__security, {@enum.value "_security" spStructureDefinition__security Security Labels applied to this resource }
    spStructureDefinition__tag, {@enum.value "_tag" spStructureDefinition__tag Tags applied to this resource }
    spStructureDefinition__text, {@enum.value "_text" spStructureDefinition__text Search on the narrative of the resource }
    spStructureDefinition_Abstract, {@enum.value "abstract" spStructureDefinition_Abstract Whether the structure is abstract }
    spStructureDefinition_Base, {@enum.value "base" spStructureDefinition_Base Structure that this set of constraints applies to }
    spStructureDefinition_Basepath, {@enum.value "base-path" spStructureDefinition_Basepath Path that identifies the base element }
    spStructureDefinition_Code, {@enum.value "code" spStructureDefinition_Code A code for the profile }
    spStructureDefinition_Context, {@enum.value "context" spStructureDefinition_Context A use context assigned to the structure }
    spStructureDefinition_Contexttype, {@enum.value "context-type" spStructureDefinition_Contexttype resource | datatype | mapping | extension }
    spStructureDefinition_Date, {@enum.value "date" spStructureDefinition_Date The profile publication date }
    spStructureDefinition_Description, {@enum.value "description" spStructureDefinition_Description Text search in the description of the profile }
    spStructureDefinition_Display, {@enum.value "display" spStructureDefinition_Display Use this name when displaying the value }
    spStructureDefinition_Experimental, {@enum.value "experimental" spStructureDefinition_Experimental If for testing purposes, not real usage }
    spStructureDefinition_Extcontext, {@enum.value "ext-context" spStructureDefinition_Extcontext Where the extension can be used in instances }
    spStructureDefinition_Identifier, {@enum.value "identifier" spStructureDefinition_Identifier The identifier of the profile }
    spStructureDefinition_Kind, {@enum.value "kind" spStructureDefinition_Kind datatype | resource | logical }
    spStructureDefinition_Name, {@enum.value "name" spStructureDefinition_Name Name of the profile }
    spStructureDefinition_Path, {@enum.value "path" spStructureDefinition_Path A path that is constrained in the profile }
    spStructureDefinition_Publisher, {@enum.value "publisher" spStructureDefinition_Publisher Name of the publisher of the profile }
    spStructureDefinition_Status, {@enum.value "status" spStructureDefinition_Status The current status of the profile }
    spStructureDefinition_Type, {@enum.value "type" spStructureDefinition_Type Any datatype or resource, including abstract ones }
    spStructureDefinition_Url, {@enum.value "url" spStructureDefinition_Url Absolute URL used to reference this StructureDefinition }
    spStructureDefinition_Valueset, {@enum.value "valueset" spStructureDefinition_Valueset A vocabulary binding reference }
    spStructureDefinition_Version); {@enum.value "version" spStructureDefinition_Version The version identifier of the profile }

  {@Enum TSearchParamsStructureMap
    Search Parameters for StructureMap
  }
  TSearchParamsStructureMap = (
    spStructureMap__content, {@enum.value "_content" spStructureMap__content Search on the entire content of the resource }
    spStructureMap__id, {@enum.value "_id" spStructureMap__id Logical id of this artifact }
    spStructureMap__lastUpdated, {@enum.value "_lastUpdated" spStructureMap__lastUpdated When the resource version last changed }
    spStructureMap__profile, {@enum.value "_profile" spStructureMap__profile Profiles this resource claims to conform to }
    spStructureMap__query, {@enum.value "_query" spStructureMap__query A custom search profile that describes a specific defined query operation }
    spStructureMap__security, {@enum.value "_security" spStructureMap__security Security Labels applied to this resource }
    spStructureMap__tag, {@enum.value "_tag" spStructureMap__tag Tags applied to this resource }
    spStructureMap__text, {@enum.value "_text" spStructureMap__text Search on the narrative of the resource }
    spStructureMap_Context, {@enum.value "context" spStructureMap_Context A use context assigned to the structure }
    spStructureMap_Date, {@enum.value "date" spStructureMap_Date The profile publication date }
    spStructureMap_Description, {@enum.value "description" spStructureMap_Description Text search in the description of the profile }
    spStructureMap_Experimental, {@enum.value "experimental" spStructureMap_Experimental Whether the map is defined purely for experimental reasons }
    spStructureMap_Identifier, {@enum.value "identifier" spStructureMap_Identifier The identifier of the profile }
    spStructureMap_Name, {@enum.value "name" spStructureMap_Name Name of the profile }
    spStructureMap_Publisher, {@enum.value "publisher" spStructureMap_Publisher Name of the publisher of the profile }
    spStructureMap_Status, {@enum.value "status" spStructureMap_Status The current status of the profile }
    spStructureMap_Url, {@enum.value "url" spStructureMap_Url The url that identifies the structure map }
    spStructureMap_Version); {@enum.value "version" spStructureMap_Version The version identifier of the profile }

  {@Enum TSearchParamsSubscription
    Search Parameters for Subscription
  }
  TSearchParamsSubscription = (
    spSubscription__content, {@enum.value "_content" spSubscription__content Search on the entire content of the resource }
    spSubscription__id, {@enum.value "_id" spSubscription__id Logical id of this artifact }
    spSubscription__lastUpdated, {@enum.value "_lastUpdated" spSubscription__lastUpdated When the resource version last changed }
    spSubscription__profile, {@enum.value "_profile" spSubscription__profile Profiles this resource claims to conform to }
    spSubscription__query, {@enum.value "_query" spSubscription__query A custom search profile that describes a specific defined query operation }
    spSubscription__security, {@enum.value "_security" spSubscription__security Security Labels applied to this resource }
    spSubscription__tag, {@enum.value "_tag" spSubscription__tag Tags applied to this resource }
    spSubscription__text, {@enum.value "_text" spSubscription__text Search on the narrative of the resource }
    spSubscription_Contact, {@enum.value "contact" spSubscription_Contact Contact details for source (e.g. troubleshooting) }
    spSubscription_Criteria, {@enum.value "criteria" spSubscription_Criteria Rule for server push criteria }
    spSubscription_Payload, {@enum.value "payload" spSubscription_Payload Mimetype to send, or blank for no payload }
    spSubscription_Status, {@enum.value "status" spSubscription_Status requested | active | error | off }
    spSubscription_Tag, {@enum.value "tag" spSubscription_Tag A tag to add to matching resources }
    spSubscription_Type, {@enum.value "type" spSubscription_Type rest-hook | websocket | email | sms | message }
    spSubscription_Url); {@enum.value "url" spSubscription_Url Where the channel points to }

  {@Enum TSearchParamsSubstance
    Search Parameters for Substance
  }
  TSearchParamsSubstance = (
    spSubstance__content, {@enum.value "_content" spSubstance__content Search on the entire content of the resource }
    spSubstance__id, {@enum.value "_id" spSubstance__id Logical id of this artifact }
    spSubstance__lastUpdated, {@enum.value "_lastUpdated" spSubstance__lastUpdated When the resource version last changed }
    spSubstance__profile, {@enum.value "_profile" spSubstance__profile Profiles this resource claims to conform to }
    spSubstance__query, {@enum.value "_query" spSubstance__query A custom search profile that describes a specific defined query operation }
    spSubstance__security, {@enum.value "_security" spSubstance__security Security Labels applied to this resource }
    spSubstance__tag, {@enum.value "_tag" spSubstance__tag Tags applied to this resource }
    spSubstance__text, {@enum.value "_text" spSubstance__text Search on the narrative of the resource }
    spSubstance_Category, {@enum.value "category" spSubstance_Category The category of the substance }
    spSubstance_Code, {@enum.value "code" spSubstance_Code The code of the substance }
    spSubstance_Containeridentifier, {@enum.value "container-identifier" spSubstance_Containeridentifier Identifier of the package/container }
    spSubstance_Expiry, {@enum.value "expiry" spSubstance_Expiry Expiry date of package or container of substance }
    spSubstance_Identifier, {@enum.value "identifier" spSubstance_Identifier Unique identifier for the substance }
    spSubstance_Quantity, {@enum.value "quantity" spSubstance_Quantity Amount of substance in the package }
    spSubstance_Substance); {@enum.value "substance" spSubstance_Substance A component of the substance }

  {@Enum TSearchParamsSupplyDelivery
    Search Parameters for SupplyDelivery
  }
  TSearchParamsSupplyDelivery = (
    spSupplyDelivery__content, {@enum.value "_content" spSupplyDelivery__content Search on the entire content of the resource }
    spSupplyDelivery__id, {@enum.value "_id" spSupplyDelivery__id Logical id of this artifact }
    spSupplyDelivery__lastUpdated, {@enum.value "_lastUpdated" spSupplyDelivery__lastUpdated When the resource version last changed }
    spSupplyDelivery__profile, {@enum.value "_profile" spSupplyDelivery__profile Profiles this resource claims to conform to }
    spSupplyDelivery__query, {@enum.value "_query" spSupplyDelivery__query A custom search profile that describes a specific defined query operation }
    spSupplyDelivery__security, {@enum.value "_security" spSupplyDelivery__security Security Labels applied to this resource }
    spSupplyDelivery__tag, {@enum.value "_tag" spSupplyDelivery__tag Tags applied to this resource }
    spSupplyDelivery__text, {@enum.value "_text" spSupplyDelivery__text Search on the narrative of the resource }
    spSupplyDelivery_Identifier, {@enum.value "identifier" spSupplyDelivery_Identifier External identifier }
    spSupplyDelivery_Patient, {@enum.value "patient" spSupplyDelivery_Patient Patient for whom the item is supplied }
    spSupplyDelivery_Receiver, {@enum.value "receiver" spSupplyDelivery_Receiver Who collected the Supply }
    spSupplyDelivery_Status, {@enum.value "status" spSupplyDelivery_Status in-progress | completed | abandoned }
    spSupplyDelivery_Supplier); {@enum.value "supplier" spSupplyDelivery_Supplier Dispenser }

  {@Enum TSearchParamsSupplyRequest
    Search Parameters for SupplyRequest
  }
  TSearchParamsSupplyRequest = (
    spSupplyRequest__content, {@enum.value "_content" spSupplyRequest__content Search on the entire content of the resource }
    spSupplyRequest__id, {@enum.value "_id" spSupplyRequest__id Logical id of this artifact }
    spSupplyRequest__lastUpdated, {@enum.value "_lastUpdated" spSupplyRequest__lastUpdated When the resource version last changed }
    spSupplyRequest__profile, {@enum.value "_profile" spSupplyRequest__profile Profiles this resource claims to conform to }
    spSupplyRequest__query, {@enum.value "_query" spSupplyRequest__query A custom search profile that describes a specific defined query operation }
    spSupplyRequest__security, {@enum.value "_security" spSupplyRequest__security Security Labels applied to this resource }
    spSupplyRequest__tag, {@enum.value "_tag" spSupplyRequest__tag Tags applied to this resource }
    spSupplyRequest__text, {@enum.value "_text" spSupplyRequest__text Search on the narrative of the resource }
    spSupplyRequest_Date, {@enum.value "date" spSupplyRequest_Date When the request was made }
    spSupplyRequest_Identifier, {@enum.value "identifier" spSupplyRequest_Identifier Unique identifier }
    spSupplyRequest_Kind, {@enum.value "kind" spSupplyRequest_Kind The kind of supply (central, non-stock, etc.) }
    spSupplyRequest_Patient, {@enum.value "patient" spSupplyRequest_Patient Patient for whom the item is supplied }
    spSupplyRequest_Source, {@enum.value "source" spSupplyRequest_Source Who initiated this order }
    spSupplyRequest_Status, {@enum.value "status" spSupplyRequest_Status requested | completed | failed | cancelled }
    spSupplyRequest_Supplier); {@enum.value "supplier" spSupplyRequest_Supplier Who is intended to fulfill the request }

  {@Enum TSearchParamsTestScript
    Search Parameters for TestScript
  }
  TSearchParamsTestScript = (
    spTestScript__content, {@enum.value "_content" spTestScript__content Search on the entire content of the resource }
    spTestScript__id, {@enum.value "_id" spTestScript__id Logical id of this artifact }
    spTestScript__lastUpdated, {@enum.value "_lastUpdated" spTestScript__lastUpdated When the resource version last changed }
    spTestScript__profile, {@enum.value "_profile" spTestScript__profile Profiles this resource claims to conform to }
    spTestScript__query, {@enum.value "_query" spTestScript__query A custom search profile that describes a specific defined query operation }
    spTestScript__security, {@enum.value "_security" spTestScript__security Security Labels applied to this resource }
    spTestScript__tag, {@enum.value "_tag" spTestScript__tag Tags applied to this resource }
    spTestScript__text, {@enum.value "_text" spTestScript__text Search on the narrative of the resource }
    spTestScript_Description, {@enum.value "description" spTestScript_Description Natural language description of the TestScript }
    spTestScript_Identifier, {@enum.value "identifier" spTestScript_Identifier External identifier }
    spTestScript_Name, {@enum.value "name" spTestScript_Name Informal name for this TestScript }
    spTestScript_Testscriptcapability, {@enum.value "testscript-capability" spTestScript_Testscriptcapability TestScript required and validated capability }
    spTestScript_Testscriptsetupcapability, {@enum.value "testscript-setup-capability" spTestScript_Testscriptsetupcapability TestScript setup required and validated capability }
    spTestScript_Testscripttestcapability, {@enum.value "testscript-test-capability" spTestScript_Testscripttestcapability TestScript test required and validated capability }
    spTestScript_Url); {@enum.value "url" spTestScript_Url Absolute URL used to reference this TestScript }

  {@Enum TSearchParamsValueSet
    Search Parameters for ValueSet
  }
  TSearchParamsValueSet = (
    spValueSet__content, {@enum.value "_content" spValueSet__content Search on the entire content of the resource }
    spValueSet__id, {@enum.value "_id" spValueSet__id Logical id of this artifact }
    spValueSet__lastUpdated, {@enum.value "_lastUpdated" spValueSet__lastUpdated When the resource version last changed }
    spValueSet__profile, {@enum.value "_profile" spValueSet__profile Profiles this resource claims to conform to }
    spValueSet__query, {@enum.value "_query" spValueSet__query A custom search profile that describes a specific defined query operation }
    spValueSet__security, {@enum.value "_security" spValueSet__security Security Labels applied to this resource }
    spValueSet__tag, {@enum.value "_tag" spValueSet__tag Tags applied to this resource }
    spValueSet__text, {@enum.value "_text" spValueSet__text Search on the narrative of the resource }
    spValueSet_Context, {@enum.value "context" spValueSet_Context A use context assigned to the value set }
    spValueSet_Date, {@enum.value "date" spValueSet_Date The value set publication date }
    spValueSet_Description, {@enum.value "description" spValueSet_Description Text search in the description of the value set }
    spValueSet_Expansion, {@enum.value "expansion" spValueSet_Expansion Uniquely identifies this expansion }
    spValueSet_Identifier, {@enum.value "identifier" spValueSet_Identifier The identifier for the value set }
    spValueSet_Name, {@enum.value "name" spValueSet_Name The name of the value set }
    spValueSet_Publisher, {@enum.value "publisher" spValueSet_Publisher Name of the publisher of the value set }
    spValueSet_Reference, {@enum.value "reference" spValueSet_Reference A code system included or excluded in the value set or an imported value set }
    spValueSet_Status, {@enum.value "status" spValueSet_Status The status of the value set }
    spValueSet_Url, {@enum.value "url" spValueSet_Url The logical URL for the value set }
    spValueSet_Version); {@enum.value "version" spValueSet_Version The version identifier of the value set }

  {@Enum TSearchParamsVisionPrescription
    Search Parameters for VisionPrescription
  }
  TSearchParamsVisionPrescription = (
    spVisionPrescription__content, {@enum.value "_content" spVisionPrescription__content Search on the entire content of the resource }
    spVisionPrescription__id, {@enum.value "_id" spVisionPrescription__id Logical id of this artifact }
    spVisionPrescription__lastUpdated, {@enum.value "_lastUpdated" spVisionPrescription__lastUpdated When the resource version last changed }
    spVisionPrescription__profile, {@enum.value "_profile" spVisionPrescription__profile Profiles this resource claims to conform to }
    spVisionPrescription__query, {@enum.value "_query" spVisionPrescription__query A custom search profile that describes a specific defined query operation }
    spVisionPrescription__security, {@enum.value "_security" spVisionPrescription__security Security Labels applied to this resource }
    spVisionPrescription__tag, {@enum.value "_tag" spVisionPrescription__tag Tags applied to this resource }
    spVisionPrescription__text, {@enum.value "_text" spVisionPrescription__text Search on the narrative of the resource }
    spVisionPrescription_Datewritten, {@enum.value "datewritten" spVisionPrescription_Datewritten Return prescriptions written on this date }
    spVisionPrescription_Encounter, {@enum.value "encounter" spVisionPrescription_Encounter Return prescriptions with this encounter identifier }
    spVisionPrescription_Identifier, {@enum.value "identifier" spVisionPrescription_Identifier Return prescriptions with this external identifier }
    spVisionPrescription_Patient, {@enum.value "patient" spVisionPrescription_Patient The identity of a patient to list dispenses for }
    spVisionPrescription_Prescriber); {@enum.value "prescriber" spVisionPrescription_Prescriber Who authorizes the vision product }

Const
  CODES_TFhirResourceType : Array[TFhirResourceType] of String = ('', 'Account', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BodySite', 'Bundle', 'CarePlan', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Conformance', 'Contract', 'Coverage', 'DataElement', 'DecisionSupportRule', 'DecisionSupportServiceModule', 'DetectedIssue', 'Device', 'DeviceComponent', 'DeviceMetric', 'DeviceUseRequest', 'DeviceUseStatement', 'DiagnosticOrder', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'EligibilityRequest', 'EligibilityResponse', 'Encounter', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'ExpansionProfile', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingObjectSelection', 'ImagingStudy', 'Immunization', 'ImmunizationRecommendation', 
      'ImplementationGuide', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationOrder', 'MedicationStatement', 'MessageHeader', 'ModuleDefinition', 'NamingSystem', 'NutritionOrder', 'Observation', 'OperationDefinition', 'OperationOutcome', 'Order', 'OrderResponse', 'OrderSet', 'Organization', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'Practitioner', 'Procedure', 'ProcedureRequest', 'ProcessRequest', 'ProcessResponse', 'Protocol', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'ReferralRequest', 'RelatedPerson', 'RiskAssessment', 'Schedule', 'SearchParameter', 'Sequence', 'Slot', 'Specimen', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SupplyDelivery', 'SupplyRequest', 'TestScript', 'ValueSet', 'VisionPrescription');
  PLURAL_CODES_TFhirResourceType : Array[TFhirResourceType] of String = ('', 'accounts',
     'allergyintolerances',
     'appointments',
     'appointmentresponses',
     'auditevents',
     'basics',
     'binaries',
     'bodysites',
     'bundles',
     'careplans',
     'claims',
     'claimresponses',
     'clinicalimpressions',
     'codesystems',
     'communications',
     'communicationrequests',
     'compartmentdefinitions',
     'compositions',
     'conceptmaps',
     'conditions',
     'conformances',
     'contracts',
     'coverages',
     'dataelements',
     'decisionsupportrules',
     'decisionsupportservicemodules',
     'detectedissues',
     'devices',
     'devicecomponents',
     'devicemetrics',
     'deviceuserequests',
     'deviceusestatements',
     'diagnosticorders',
     'diagnosticreports',
     'documentmanifests',
     'documentreferences',
     'eligibilityrequests',
     'eligibilityresponses',
     'encounters',
     'enrollmentrequests',
     'enrollmentresponses',
     'episodeofcares',
     'expansionprofiles',
     'explanationofbenefits',
     'familymemberhistories',
     'flags',
     'goals',
     'groups',
     'guidanceresponses',
     'healthcareservices',
     'imagingobjectselections',
     'imagingstudies',
     'immunizations',
     'immunizationrecommendations',
     'implementationguides',
     'libraries',
     'linkages',
     'lists',
     'locations',
     'measures',
     'measurereports',
     'media',
     'medications',
     'medicationadministrations',
     'medicationdispenses',
     'medicationorders',
     'medicationstatements',
     'messageheaders',
     'moduledefinitions',
     'namingsystems',
     'nutritionorders',
     'observations',
     'operationdefinitions',
     'operationoutcomes',
     'orders',
     'orderresponses',
     'ordersets',
     'organizations',
     'parameters',
     'patients',
     'paymentnotices',
     'paymentreconciliations',
     'people',
     'practitioners',
     'procedures',
     'procedurerequests',
     'processrequests',
     'processresponses',
     'protocols',
     'provenances',
     'questionnaires',
     'questionnaireresponses',
     'referralrequests',
     'relatedpeople',
     'riskassessments',
     'schedules',
     'searchparameters',
     'sequences',
     'slots',
     'specimen',
     'structuredefinitions',
     'structuremaps',
     'subscriptions',
     'substances',
     'supplydeliveries',
     'supplyrequests',
     'testscripts',
     'valuesets',
     'visionprescriptions');
     
  LOWERCASE_CODES_TFhirResourceType : Array[TFhirResourceType] of String = ('', 'account',
     'allergyintolerance',
     'appointment',
     'appointmentresponse',
     'auditevent',
     'basic',
     'binary',
     'bodysite',
     'bundle',
     'careplan',
     'claim',
     'claimresponse',
     'clinicalimpression',
     'codesystem',
     'communication',
     'communicationrequest',
     'compartmentdefinition',
     'composition',
     'conceptmap',
     'condition',
     'conformance',
     'contract',
     'coverage',
     'dataelement',
     'decisionsupportrule',
     'decisionsupportservicemodule',
     'detectedissue',
     'device',
     'devicecomponent',
     'devicemetric',
     'deviceuserequest',
     'deviceusestatement',
     'diagnosticorder',
     'diagnosticreport',
     'documentmanifest',
     'documentreference',
     'eligibilityrequest',
     'eligibilityresponse',
     'encounter',
     'enrollmentrequest',
     'enrollmentresponse',
     'episodeofcare',
     'expansionprofile',
     'explanationofbenefit',
     'familymemberhistory',
     'flag',
     'goal',
     'group',
     'guidanceresponse',
     'healthcareservice',
     'imagingobjectselection',
     'imagingstudy',
     'immunization',
     'immunizationrecommendation',
     'implementationguide',
     'library',
     'linkage',
     'list',
     'location',
     'measure',
     'measurereport',
     'media',
     'medication',
     'medicationadministration',
     'medicationdispense',
     'medicationorder',
     'medicationstatement',
     'messageheader',
     'moduledefinition',
     'namingsystem',
     'nutritionorder',
     'observation',
     'operationdefinition',
     'operationoutcome',
     'order',
     'orderresponse',
     'orderset',
     'organization',
     'parameters',
     'patient',
     'paymentnotice',
     'paymentreconciliation',
     'person',
     'practitioner',
     'procedure',
     'procedurerequest',
     'processrequest',
     'processresponse',
     'protocol',
     'provenance',
     'questionnaire',
     'questionnaireresponse',
     'referralrequest',
     'relatedperson',
     'riskassessment',
     'schedule',
     'searchparameter',
     'sequence',
     'slot',
     'specimen',
     'structuredefinition',
     'structuremap',
     'subscription',
     'substance',
     'supplydelivery',
     'supplyrequest',
     'testscript',
     'valueset',
     'visionprescription');
     
  CLASSES_TFhirResourceType : Array[TFhirResourceType] of TFhirResourceClass = (nil, TFhirAccount,
     TFhirAllergyIntolerance,
     TFhirAppointment,
     TFhirAppointmentResponse,
     TFhirAuditEvent,
     TFhirBasic,
     TFhirBinary,
     TFhirBodySite,
     TFhirBundle,
     TFhirCarePlan,
     TFhirClaim,
     TFhirClaimResponse,
     TFhirClinicalImpression,
     TFhirCodeSystem,
     TFhirCommunication,
     TFhirCommunicationRequest,
     TFhirCompartmentDefinition,
     TFhirComposition,
     TFhirConceptMap,
     TFhirCondition,
     TFhirConformance,
     TFhirContract,
     TFhirCoverage,
     TFhirDataElement,
     TFhirDecisionSupportRule,
     TFhirDecisionSupportServiceModule,
     TFhirDetectedIssue,
     TFhirDevice,
     TFhirDeviceComponent,
     TFhirDeviceMetric,
     TFhirDeviceUseRequest,
     TFhirDeviceUseStatement,
     TFhirDiagnosticOrder,
     TFhirDiagnosticReport,
     TFhirDocumentManifest,
     TFhirDocumentReference,
     TFhirEligibilityRequest,
     TFhirEligibilityResponse,
     TFhirEncounter,
     TFhirEnrollmentRequest,
     TFhirEnrollmentResponse,
     TFhirEpisodeOfCare,
     TFhirExpansionProfile,
     TFhirExplanationOfBenefit,
     TFhirFamilyMemberHistory,
     TFhirFlag,
     TFhirGoal,
     TFhirGroup,
     TFhirGuidanceResponse,
     TFhirHealthcareService,
     TFhirImagingObjectSelection,
     TFhirImagingStudy,
     TFhirImmunization,
     TFhirImmunizationRecommendation,
     TFhirImplementationGuide,
     TFhirLibrary,
     TFhirLinkage,
     TFhirList,
     TFhirLocation,
     TFhirMeasure,
     TFhirMeasureReport,
     TFhirMedia,
     TFhirMedication,
     TFhirMedicationAdministration,
     TFhirMedicationDispense,
     TFhirMedicationOrder,
     TFhirMedicationStatement,
     TFhirMessageHeader,
     TFhirModuleDefinition,
     TFhirNamingSystem,
     TFhirNutritionOrder,
     TFhirObservation,
     TFhirOperationDefinition,
     TFhirOperationOutcome,
     TFhirOrder,
     TFhirOrderResponse,
     TFhirOrderSet,
     TFhirOrganization,
     TFhirParameters,
     TFhirPatient,
     TFhirPaymentNotice,
     TFhirPaymentReconciliation,
     TFhirPerson,
     TFhirPractitioner,
     TFhirProcedure,
     TFhirProcedureRequest,
     TFhirProcessRequest,
     TFhirProcessResponse,
     TFhirProtocol,
     TFhirProvenance,
     TFhirQuestionnaire,
     TFhirQuestionnaireResponse,
     TFhirReferralRequest,
     TFhirRelatedPerson,
     TFhirRiskAssessment,
     TFhirSchedule,
     TFhirSearchParameter,
     TFhirSequence,
     TFhirSlot,
     TFhirSpecimen,
     TFhirStructureDefinition,
     TFhirStructureMap,
     TFhirSubscription,
     TFhirSubstance,
     TFhirSupplyDelivery,
     TFhirSupplyRequest,
     TFhirTestScript,
     TFhirValueSet,
     TFhirVisionPrescription);
     
  ALL_RESOURCE_TYPES = [frtAccount,
     frtAllergyIntolerance,
     frtAppointment,
     frtAppointmentResponse,
     frtAuditEvent,
     frtBasic,
     frtBinary,
     frtBodySite,
     frtBundle,
     frtCarePlan,
     frtClaim,
     frtClaimResponse,
     frtClinicalImpression,
     frtCodeSystem,
     frtCommunication,
     frtCommunicationRequest,
     frtCompartmentDefinition,
     frtComposition,
     frtConceptMap,
     frtCondition,
     frtConformance,
     frtContract,
     frtCoverage,
     frtDataElement,
     frtDecisionSupportRule,
     frtDecisionSupportServiceModule,
     frtDetectedIssue,
     frtDevice,
     frtDeviceComponent,
     frtDeviceMetric,
     frtDeviceUseRequest,
     frtDeviceUseStatement,
     frtDiagnosticOrder,
     frtDiagnosticReport,
     frtDocumentManifest,
     frtDocumentReference,
     frtEligibilityRequest,
     frtEligibilityResponse,
     frtEncounter,
     frtEnrollmentRequest,
     frtEnrollmentResponse,
     frtEpisodeOfCare,
     frtExpansionProfile,
     frtExplanationOfBenefit,
     frtFamilyMemberHistory,
     frtFlag,
     frtGoal,
     frtGroup,
     frtGuidanceResponse,
     frtHealthcareService,
     frtImagingObjectSelection,
     frtImagingStudy,
     frtImmunization,
     frtImmunizationRecommendation,
     frtImplementationGuide,
     frtLibrary,
     frtLinkage,
     frtList,
     frtLocation,
     frtMeasure,
     frtMeasureReport,
     frtMedia,
     frtMedication,
     frtMedicationAdministration,
     frtMedicationDispense,
     frtMedicationOrder,
     frtMedicationStatement,
     frtMessageHeader,
     frtModuleDefinition,
     frtNamingSystem,
     frtNutritionOrder,
     frtObservation,
     frtOperationDefinition,
     frtOperationOutcome,
     frtOrder,
     frtOrderResponse,
     frtOrderSet,
     frtOrganization,
     frtParameters,
     frtPatient,
     frtPaymentNotice,
     frtPaymentReconciliation,
     frtPerson,
     frtPractitioner,
     frtProcedure,
     frtProcedureRequest,
     frtProcessRequest,
     frtProcessResponse,
     frtProtocol,
     frtProvenance,
     frtQuestionnaire,
     frtQuestionnaireResponse,
     frtReferralRequest,
     frtRelatedPerson,
     frtRiskAssessment,
     frtSchedule,
     frtSearchParameter,
     frtSequence,
     frtSlot,
     frtSpecimen,
     frtStructureDefinition,
     frtStructureMap,
     frtSubscription,
     frtSubstance,
     frtSupplyDelivery,
     frtSupplyRequest,
     frtTestScript,
     frtValueSet,
     frtVisionPrescription];
     

  COMPARTMENT_PARAM_NAMES : Array[TFhirResourceType, TFhirResourceType] of String = (('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
     ('', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
      , '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''));

  CODES_TSearchParamsAccount : Array[TSearchParamsAccount] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'balance', 'identifier', 'name', 'owner', 'patient', 'period', 'status', 'subject', 'type');
  DESC_TSearchParamsAccount : Array[TSearchParamsAccount] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'How much is in account?',
     'Account number',
     'Human-readable label',
     'Who is responsible?',
     'What is account tied to?',
     'Transaction window',
     'active | inactive',
     'What is account tied to?',
     'E.g. patient, expense, depreciation');
//  CHECK_TSearchParamsAccount : Array[TSearchParamsAccount] of TSearchParamsAccount = ( spAccount__content,  spAccount__id,  spAccount__lastUpdated,  spAccount__profile,  spAccount__query,  spAccount__security,  spAccount__tag,  spAccount__text,  spAccount_Balance, 
      //  spAccount_Identifier,  spAccount_Name,  spAccount_Owner,  spAccount_Patient,  spAccount_Period,  spAccount_Status,  spAccount_Subject,  spAccount_Type);
  CODES_TSearchParamsAllergyIntolerance : Array[TSearchParamsAllergyIntolerance] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'category', 'criticality', 'date', 'identifier', 'last-date', 'manifestation', 'onset', 'patient', 'recorder', 'reporter', 'route', 'severity', 'status', 'substance', 'type');
  DESC_TSearchParamsAllergyIntolerance : Array[TSearchParamsAllergyIntolerance] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'food | medication | environment | other - Category of Substance',
     'low | high | unable-to-assess',
     'When recorded',
     'External ids for this item',
     'Date(/time) of last known occurrence of a reaction',
     'Clinical symptoms/signs associated with the Event',
     'Date(/time) when manifestations showed',
     'Who the sensitivity is for',
     'Who recorded the sensitivity',
     'Source of the information about the allergy',
     'How the subject was exposed to the substance',
     'mild | moderate | severe (of event as a whole)',
     'active | unconfirmed | confirmed | inactive | resolved | refuted | entered-in-error',
     'Substance, (or class) considered to be responsible for risk',
     'allergy | intolerance - Underlying mechanism (if known)');
//  CHECK_TSearchParamsAllergyIntolerance : Array[TSearchParamsAllergyIntolerance] of TSearchParamsAllergyIntolerance = ( spAllergyIntolerance__content,  spAllergyIntolerance__id,  spAllergyIntolerance__lastUpdated,  spAllergyIntolerance__profile,  spAllergyIntolerance__query, 
      //  spAllergyIntolerance__security,  spAllergyIntolerance__tag,  spAllergyIntolerance__text,  spAllergyIntolerance_Category,  spAllergyIntolerance_Criticality,  spAllergyIntolerance_Date,  spAllergyIntolerance_Identifier,  spAllergyIntolerance_Lastdate, 
      //  spAllergyIntolerance_Manifestation,  spAllergyIntolerance_Onset,  spAllergyIntolerance_Patient,  spAllergyIntolerance_Recorder,  spAllergyIntolerance_Reporter,  spAllergyIntolerance_Route,  spAllergyIntolerance_Severity,  spAllergyIntolerance_Status, 
      //  spAllergyIntolerance_Substance,  spAllergyIntolerance_Type);
  CODES_TSearchParamsAppointment : Array[TSearchParamsAppointment] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'actor', 'date', 'identifier', 'location', 'part-status', 'patient', 'practitioner', 'status');
  DESC_TSearchParamsAppointment : Array[TSearchParamsAppointment] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Any one of the individuals participating in the appointment',
     'Appointment date/time.',
     'An Identifier of the Appointment',
     'This location is listed in the participants of the appointment',
     'The Participation status of the subject, or other participant on the appointment. Can be used to locate participants that have not responded to meeting requests.',
     'One of the individuals of the appointment is this patient',
     'One of the individuals of the appointment is this practitioner',
     'The overall status of the appointment');
//  CHECK_TSearchParamsAppointment : Array[TSearchParamsAppointment] of TSearchParamsAppointment = ( spAppointment__content,  spAppointment__id,  spAppointment__lastUpdated,  spAppointment__profile,  spAppointment__query,  spAppointment__security,  spAppointment__tag, 
      //  spAppointment__text,  spAppointment_Actor,  spAppointment_Date,  spAppointment_Identifier,  spAppointment_Location,  spAppointment_Partstatus,  spAppointment_Patient,  spAppointment_Practitioner,  spAppointment_Status);
  CODES_TSearchParamsAppointmentResponse : Array[TSearchParamsAppointmentResponse] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'actor', 'appointment', 'identifier', 'location', 'part-status', 'patient', 'practitioner');
  DESC_TSearchParamsAppointmentResponse : Array[TSearchParamsAppointmentResponse] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'The Person, Location/HealthcareService or Device that this appointment response replies for',
     'The appointment that the response is attached to',
     'An Identifier in this appointment response',
     'This Response is for this Location',
     'The participants acceptance status for this appointment',
     'This Response is for this Patient',
     'This Response is for this Practitioner');
//  CHECK_TSearchParamsAppointmentResponse : Array[TSearchParamsAppointmentResponse] of TSearchParamsAppointmentResponse = ( spAppointmentResponse__content,  spAppointmentResponse__id,  spAppointmentResponse__lastUpdated,  spAppointmentResponse__profile, 
      //  spAppointmentResponse__query,  spAppointmentResponse__security,  spAppointmentResponse__tag,  spAppointmentResponse__text,  spAppointmentResponse_Actor,  spAppointmentResponse_Appointment,  spAppointmentResponse_Identifier,  spAppointmentResponse_Location, 
      //  spAppointmentResponse_Partstatus,  spAppointmentResponse_Patient,  spAppointmentResponse_Practitioner);
  CODES_TSearchParamsAuditEvent : Array[TSearchParamsAuditEvent] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'action', 'address', 'agent', 'agent-name', 'altid', 'date', 'entity', 'entity-id', 'entity-name', 'entity-type', 'patient', 'policy', 'site', 'source', 'subtype', 'type', 'user');
  DESC_TSearchParamsAuditEvent : Array[TSearchParamsAuditEvent] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Type of action performed during the event',
     'Identifier for the network access point of the user device',
     'Direct reference to resource',
     'Human-meaningful name for the agent',
     'Alternative User id e.g. authentication',
     'Time when the event occurred on source',
     'Specific instance of resource (e.g. versioned)',
     'Specific instance of object (e.g. versioned)',
     'Descriptor for entity',
     'Type of object involved',
     'Direct reference to resource',
     'Policy that authorized event',
     'Logical source location within the enterprise',
     'The identity of source detecting the event',
     'More specific type/id for the event',
     'Type/identifier of event',
     'Unique identifier for the user');
//  CHECK_TSearchParamsAuditEvent : Array[TSearchParamsAuditEvent] of TSearchParamsAuditEvent = ( spAuditEvent__content,  spAuditEvent__id,  spAuditEvent__lastUpdated,  spAuditEvent__profile,  spAuditEvent__query,  spAuditEvent__security,  spAuditEvent__tag, 
      //  spAuditEvent__text,  spAuditEvent_Action,  spAuditEvent_Address,  spAuditEvent_Agent,  spAuditEvent_Agentname,  spAuditEvent_Altid,  spAuditEvent_Date,  spAuditEvent_Entity,  spAuditEvent_Entityid,  spAuditEvent_Entityname,  spAuditEvent_Entitytype, 
      //  spAuditEvent_Patient,  spAuditEvent_Policy,  spAuditEvent_Site,  spAuditEvent_Source,  spAuditEvent_Subtype,  spAuditEvent_Type,  spAuditEvent_User);
  CODES_TSearchParamsBasic : Array[TSearchParamsBasic] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'author', 'code', 'created', 'identifier', 'patient', 'subject');
  DESC_TSearchParamsBasic : Array[TSearchParamsBasic] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Who created',
     'Kind of Resource',
     'When created',
     'Business identifier',
     'Identifies the focus of this resource',
     'Identifies the focus of this resource');
//  CHECK_TSearchParamsBasic : Array[TSearchParamsBasic] of TSearchParamsBasic = ( spBasic__content,  spBasic__id,  spBasic__lastUpdated,  spBasic__profile,  spBasic__query,  spBasic__security,  spBasic__tag,  spBasic__text,  spBasic_Author,  spBasic_Code, 
      //  spBasic_Created,  spBasic_Identifier,  spBasic_Patient,  spBasic_Subject);
  CODES_TSearchParamsBinary : Array[TSearchParamsBinary] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'contenttype');
  DESC_TSearchParamsBinary : Array[TSearchParamsBinary] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'MimeType of the binary content');
//  CHECK_TSearchParamsBinary : Array[TSearchParamsBinary] of TSearchParamsBinary = ( spBinary__content,  spBinary__id,  spBinary__lastUpdated,  spBinary__profile,  spBinary__query,  spBinary__security,  spBinary__tag,  spBinary__text,  spBinary_Contenttype);
  CODES_TSearchParamsBodySite : Array[TSearchParamsBodySite] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'code', 'identifier', 'patient');
  DESC_TSearchParamsBodySite : Array[TSearchParamsBodySite] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Named anatomical location',
     'Identifier for this instance of the anatomical location',
     'Patient to whom bodysite belongs');
//  CHECK_TSearchParamsBodySite : Array[TSearchParamsBodySite] of TSearchParamsBodySite = ( spBodySite__content,  spBodySite__id,  spBodySite__lastUpdated,  spBodySite__profile,  spBodySite__query,  spBodySite__security,  spBodySite__tag,  spBodySite__text, 
      //  spBodySite_Code,  spBodySite_Identifier,  spBodySite_Patient);
  CODES_TSearchParamsBundle : Array[TSearchParamsBundle] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'composition', 'message', 'type');
  DESC_TSearchParamsBundle : Array[TSearchParamsBundle] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'The first resource in the bundle, if the bundle type is "document" - this is a composition, and this parameter provides access to searches its contents',
     'The first resource in the bundle, if the bundle type is "message" - this is a message header, and this parameter provides access to search its contents',
     'document | message | transaction | transaction-response | batch | batch-response | history | searchset | collection');
//  CHECK_TSearchParamsBundle : Array[TSearchParamsBundle] of TSearchParamsBundle = ( spBundle__content,  spBundle__id,  spBundle__lastUpdated,  spBundle__profile,  spBundle__query,  spBundle__security,  spBundle__tag,  spBundle__text,  spBundle_Composition, 
      //  spBundle_Message,  spBundle_Type);
  CODES_TSearchParamsCarePlan : Array[TSearchParamsCarePlan] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'activitycode', 'activitydate', 'activityreference', 'condition', 'date', 'goal', 'participant', 'patient', 'performer', 'related', 'relatedcode', 'relatedplan', 'subject');
  DESC_TSearchParamsCarePlan : Array[TSearchParamsCarePlan] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Detail type of activity',
     'Specified date occurs within period specified by CarePlan.activity.timingSchedule',
     'Activity details defined in specific resource',
     'Health issues this plan addresses',
     'Time period plan covers',
     'Desired outcome of plan',
     'Who is involved',
     'Who care plan is for',
     'Matches if the practitioner is listed as a performer in any of the "simple" activities.  (For performers of the detailed activities, chain through the activitydetail search parameter.)',
     'A combination of the type of relationship and the related plan',
     'includes | replaces | fulfills',
     'Plan relationship exists with',
     'Who care plan is for');
//  CHECK_TSearchParamsCarePlan : Array[TSearchParamsCarePlan] of TSearchParamsCarePlan = ( spCarePlan__content,  spCarePlan__id,  spCarePlan__lastUpdated,  spCarePlan__profile,  spCarePlan__query,  spCarePlan__security,  spCarePlan__tag,  spCarePlan__text, 
      //  spCarePlan_Activitycode,  spCarePlan_Activitydate,  spCarePlan_Activityreference,  spCarePlan_Condition,  spCarePlan_Date,  spCarePlan_Goal,  spCarePlan_Participant,  spCarePlan_Patient,  spCarePlan_Performer,  spCarePlan_Related,  spCarePlan_Relatedcode, 
      //  spCarePlan_Relatedplan,  spCarePlan_Subject);
  CODES_TSearchParamsClaim : Array[TSearchParamsClaim] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'created', 'facilityidentifier', 'facilityreference', 'identifier', 'organizationidentifier', 'organizationreference', 'patientidentifier', 'patientreference', 'priority', 'provideridentifier', 'providerreference', 'targetidentifier', 'targetreference', 'use');
  DESC_TSearchParamsClaim : Array[TSearchParamsClaim] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'The creation date for the Claim',
     'Facility responsible for the goods and services',
     'Facility responsible for the goods and services',
     'The primary identifier of the financial resource',
     'The reference to the providing organization',
     'The reference to the providing organization',
     'Patient receiving the services',
     'Patient receiving the services',
     'Processing priority requested',
     'Provider responsible for the Claim',
     'Provider responsible for the Claim',
     'The target payor/insurer for the Claim',
     'The target payor/insurer for the Claim',
     'The kind of financial resource');
//  CHECK_TSearchParamsClaim : Array[TSearchParamsClaim] of TSearchParamsClaim = ( spClaim__content,  spClaim__id,  spClaim__lastUpdated,  spClaim__profile,  spClaim__query,  spClaim__security,  spClaim__tag,  spClaim__text,  spClaim_Created,  spClaim_Facilityidentifier, 
      //  spClaim_Facilityreference,  spClaim_Identifier,  spClaim_Organizationidentifier,  spClaim_Organizationreference,  spClaim_Patientidentifier,  spClaim_Patientreference,  spClaim_Priority,  spClaim_Provideridentifier,  spClaim_Providerreference,  spClaim_Targetidentifier, 
      //  spClaim_Targetreference,  spClaim_Use);
  CODES_TSearchParamsClaimResponse : Array[TSearchParamsClaimResponse] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'created', 'disposition', 'identifier', 'organization', 'outcome', 'paymentdate', 'request');
  DESC_TSearchParamsClaimResponse : Array[TSearchParamsClaimResponse] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'The creation date',
     'The contents of the disposition message',
     'The identity of the insurer',
     'The organization who generated this resource',
     'The processing outcome',
     'The expected paymentDate',
     'The claim reference');
//  CHECK_TSearchParamsClaimResponse : Array[TSearchParamsClaimResponse] of TSearchParamsClaimResponse = ( spClaimResponse__content,  spClaimResponse__id,  spClaimResponse__lastUpdated,  spClaimResponse__profile,  spClaimResponse__query,  spClaimResponse__security, 
      //  spClaimResponse__tag,  spClaimResponse__text,  spClaimResponse_Created,  spClaimResponse_Disposition,  spClaimResponse_Identifier,  spClaimResponse_Organization,  spClaimResponse_Outcome,  spClaimResponse_Paymentdate,  spClaimResponse_Request);
  CODES_TSearchParamsClinicalImpression : Array[TSearchParamsClinicalImpression] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'action', 'assessor', 'date', 'finding', 'investigation', 'patient', 'plan', 'previous', 'problem', 'resolved', 'ruledout', 'status', 'trigger', 'trigger-code');
  DESC_TSearchParamsClinicalImpression : Array[TSearchParamsClinicalImpression] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Actions taken during assessment',
     'The clinician performing the assessment',
     'When the assessment occurred',
     'Specific text or code for finding',
     'Record of a specific investigation',
     'The patient being assessed',
     'Plan of action after assessment',
     'Reference to last assessment',
     'General assessment of patient state',
     'Diagnoses/conditions resolved since previous assessment',
     'Specific text of code for diagnosis',
     'in-progress | completed | entered-in-error',
     'Request or event that necessitated this assessment',
     'Request or event that necessitated this assessment');
//  CHECK_TSearchParamsClinicalImpression : Array[TSearchParamsClinicalImpression] of TSearchParamsClinicalImpression = ( spClinicalImpression__content,  spClinicalImpression__id,  spClinicalImpression__lastUpdated,  spClinicalImpression__profile,  spClinicalImpression__query, 
      //  spClinicalImpression__security,  spClinicalImpression__tag,  spClinicalImpression__text,  spClinicalImpression_Action,  spClinicalImpression_Assessor,  spClinicalImpression_Date,  spClinicalImpression_Finding,  spClinicalImpression_Investigation,  spClinicalImpression_Patient, 
      //  spClinicalImpression_Plan,  spClinicalImpression_Previous,  spClinicalImpression_Problem,  spClinicalImpression_Resolved,  spClinicalImpression_Ruledout,  spClinicalImpression_Status,  spClinicalImpression_Trigger,  spClinicalImpression_Triggercode);
  CODES_TSearchParamsCodeSystem : Array[TSearchParamsCodeSystem] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'code', 'context', 'date', 'description', 'identifier', 'language', 'name', 'publisher', 'status', 'system', 'url', 'version');
  DESC_TSearchParamsCodeSystem : Array[TSearchParamsCodeSystem] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'A code defined in the code system',
     'A use context assigned to the code system',
     'The code system publication date',
     'Text search in the description of the code system',
     'The identifier for the code system',
     'A language in which a designation is provided',
     'The name of the code system',
     'Name of the publisher of the code system',
     'The status of the code system',
     'The system for any codes defined by this code system (same as ''url'')',
     'The logical URL for the code system',
     'The version identifier of the code system');
//  CHECK_TSearchParamsCodeSystem : Array[TSearchParamsCodeSystem] of TSearchParamsCodeSystem = ( spCodeSystem__content,  spCodeSystem__id,  spCodeSystem__lastUpdated,  spCodeSystem__profile,  spCodeSystem__query,  spCodeSystem__security,  spCodeSystem__tag, 
      //  spCodeSystem__text,  spCodeSystem_Code,  spCodeSystem_Context,  spCodeSystem_Date,  spCodeSystem_Description,  spCodeSystem_Identifier,  spCodeSystem_Language,  spCodeSystem_Name,  spCodeSystem_Publisher,  spCodeSystem_Status,  spCodeSystem_System,  spCodeSystem_Url, 
      //  spCodeSystem_Version);
  CODES_TSearchParamsCommunication : Array[TSearchParamsCommunication] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'category', 'encounter', 'identifier', 'medium', 'patient', 'received', 'recipient', 'request', 'sender', 'sent', 'status', 'subject');
  DESC_TSearchParamsCommunication : Array[TSearchParamsCommunication] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Message category',
     'Encounter leading to message',
     'Unique identifier',
     'A channel of communication',
     'Focus of message',
     'When received',
     'Message recipient',
     'CommunicationRequest producing this message',
     'Message sender',
     'When sent',
     'in-progress | completed | suspended | rejected | failed',
     'Focus of message');
//  CHECK_TSearchParamsCommunication : Array[TSearchParamsCommunication] of TSearchParamsCommunication = ( spCommunication__content,  spCommunication__id,  spCommunication__lastUpdated,  spCommunication__profile,  spCommunication__query,  spCommunication__security, 
      //  spCommunication__tag,  spCommunication__text,  spCommunication_Category,  spCommunication_Encounter,  spCommunication_Identifier,  spCommunication_Medium,  spCommunication_Patient,  spCommunication_Received,  spCommunication_Recipient,  spCommunication_Request, 
      //  spCommunication_Sender,  spCommunication_Sent,  spCommunication_Status,  spCommunication_Subject);
  CODES_TSearchParamsCommunicationRequest : Array[TSearchParamsCommunicationRequest] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'category', 'encounter', 'identifier', 'medium', 'patient', 'priority', 'recipient', 'requested', 'requester', 'sender', 'status', 'subject', 'time');
  DESC_TSearchParamsCommunicationRequest : Array[TSearchParamsCommunicationRequest] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Message category',
     'Encounter leading to message',
     'Unique identifier',
     'A channel of communication',
     'Focus of message',
     'Message urgency',
     'Message recipient',
     'When ordered or proposed',
     'An individual who requested a communication',
     'Message sender',
     'proposed | planned | requested | received | accepted | in-progress | completed | suspended | rejected | failed',
     'Focus of message',
     'When scheduled');
//  CHECK_TSearchParamsCommunicationRequest : Array[TSearchParamsCommunicationRequest] of TSearchParamsCommunicationRequest = ( spCommunicationRequest__content,  spCommunicationRequest__id,  spCommunicationRequest__lastUpdated,  spCommunicationRequest__profile, 
      //  spCommunicationRequest__query,  spCommunicationRequest__security,  spCommunicationRequest__tag,  spCommunicationRequest__text,  spCommunicationRequest_Category,  spCommunicationRequest_Encounter,  spCommunicationRequest_Identifier,  spCommunicationRequest_Medium, 
      //  spCommunicationRequest_Patient,  spCommunicationRequest_Priority,  spCommunicationRequest_Recipient,  spCommunicationRequest_Requested,  spCommunicationRequest_Requester,  spCommunicationRequest_Sender,  spCommunicationRequest_Status,  spCommunicationRequest_Subject, 
      //  spCommunicationRequest_Time);
  CODES_TSearchParamsCompartmentDefinition : Array[TSearchParamsCompartmentDefinition] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'code', 'date', 'name', 'resource', 'status', 'url');
  DESC_TSearchParamsCompartmentDefinition : Array[TSearchParamsCompartmentDefinition] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Patient | Encounter | RelatedPerson | Practitioner | Device',
     'Publication Date(/time)',
     'Informal name for this compartment definition',
     'Name of resource type',
     'draft | active | retired',
     'Absolute URL used to reference this compartment definition');
//  CHECK_TSearchParamsCompartmentDefinition : Array[TSearchParamsCompartmentDefinition] of TSearchParamsCompartmentDefinition = ( spCompartmentDefinition__content,  spCompartmentDefinition__id,  spCompartmentDefinition__lastUpdated,  spCompartmentDefinition__profile, 
      //  spCompartmentDefinition__query,  spCompartmentDefinition__security,  spCompartmentDefinition__tag,  spCompartmentDefinition__text,  spCompartmentDefinition_Code,  spCompartmentDefinition_Date,  spCompartmentDefinition_Name,  spCompartmentDefinition_Resource, 
      //  spCompartmentDefinition_Status,  spCompartmentDefinition_Url);
  CODES_TSearchParamsComposition : Array[TSearchParamsComposition] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'attester', 'author', 'class', 'confidentiality', 'context', 'date', 'encounter', 'entry', 'identifier', 'patient', 'period', 'section', 'status', 'subject', 'title', 'type');
  DESC_TSearchParamsComposition : Array[TSearchParamsComposition] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Who attested the composition',
     'Who and/or what authored the composition',
     'Categorization of Composition',
     'As defined by affinity domain',
     'Code(s) that apply to the event being documented',
     'Composition editing time',
     'Context of the Composition',
     'A reference to data that supports this section',
     'Logical identifier of composition (version-independent)',
     'Who and/or what the composition is about',
     'The period covered by the documentation',
     'Classification of section (recommended)',
     'preliminary | final | amended | entered-in-error',
     'Who and/or what the composition is about',
     'Human Readable name/title',
     'Kind of composition (LOINC if possible)');
//  CHECK_TSearchParamsComposition : Array[TSearchParamsComposition] of TSearchParamsComposition = ( spComposition__content,  spComposition__id,  spComposition__lastUpdated,  spComposition__profile,  spComposition__query,  spComposition__security,  spComposition__tag, 
      //  spComposition__text,  spComposition_Attester,  spComposition_Author,  spComposition_Class,  spComposition_Confidentiality,  spComposition_Context,  spComposition_Date,  spComposition_Encounter,  spComposition_Entry,  spComposition_Identifier,  spComposition_Patient, 
      //  spComposition_Period,  spComposition_Section,  spComposition_Status,  spComposition_Subject,  spComposition_Title,  spComposition_Type);
  CODES_TSearchParamsConceptMap : Array[TSearchParamsConceptMap] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'context', 'date', 'dependson', 'description', 'identifier', 'name', 'product', 'publisher', 'source', 'source-code', 'source-system', 'source-uri', 'status', 'target', 'target-code', 'target-system', 'url', 'version');
  DESC_TSearchParamsConceptMap : Array[TSearchParamsConceptMap] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'A use context assigned to the concept map',
     'The concept map publication date',
     'Reference to element/field/ValueSet mapping depends on',
     'Text search in the description of the concept map',
     'Additional identifier for the concept map',
     'Name of the concept map',
     'Reference to element/field/ValueSet mapping depends on',
     'Name of the publisher of the concept map',
     'Identifies the source of the concepts which are being mapped',
     'Identifies element being mapped',
     'Code System (if value set crosses code systems)',
     'Identifies the source of the concepts which are being mapped',
     'Status of the concept map',
     'Provides context to the mappings',
     'Code that identifies the target element',
     'System of the target (if necessary)',
     'The URL of the concept map',
     'The version identifier of the concept map');
//  CHECK_TSearchParamsConceptMap : Array[TSearchParamsConceptMap] of TSearchParamsConceptMap = ( spConceptMap__content,  spConceptMap__id,  spConceptMap__lastUpdated,  spConceptMap__profile,  spConceptMap__query,  spConceptMap__security,  spConceptMap__tag, 
      //  spConceptMap__text,  spConceptMap_Context,  spConceptMap_Date,  spConceptMap_Dependson,  spConceptMap_Description,  spConceptMap_Identifier,  spConceptMap_Name,  spConceptMap_Product,  spConceptMap_Publisher,  spConceptMap_Source,  spConceptMap_Sourcecode, 
      //  spConceptMap_Sourcesystem,  spConceptMap_Sourceuri,  spConceptMap_Status,  spConceptMap_Target,  spConceptMap_Targetcode,  spConceptMap_Targetsystem,  spConceptMap_Url,  spConceptMap_Version);
  CODES_TSearchParamsCondition : Array[TSearchParamsCondition] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'age', 'asserter', 'body-site', 'category', 'clinicalstatus', 'code', 'date-recorded', 'encounter', 'evidence', 'identifier', 'onset', 'onset-info', 'patient', 'severity', 'stage');
  DESC_TSearchParamsCondition : Array[TSearchParamsCondition] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Search based on Condition onsetAge',
     'Person who asserts this condition',
     'Anatomical location, if relevant',
     'The category of the condition',
     'The clinical status of the condition',
     'Code for the condition',
     'A date, when the Condition statement was documented',
     'Encounter when condition first asserted',
     'Manifestation/symptom',
     'A unique identifier of the condition record',
     'Date related onsets (dateTime and Period)',
     'Other onsets (boolean, age, range, string)',
     'Who has the condition?',
     'The severity of the condition',
     'Simple summary (disease specific)');
//  CHECK_TSearchParamsCondition : Array[TSearchParamsCondition] of TSearchParamsCondition = ( spCondition__content,  spCondition__id,  spCondition__lastUpdated,  spCondition__profile,  spCondition__query,  spCondition__security,  spCondition__tag,  spCondition__text, 
      //  spCondition_Age,  spCondition_Asserter,  spCondition_Bodysite,  spCondition_Category,  spCondition_Clinicalstatus,  spCondition_Code,  spCondition_Daterecorded,  spCondition_Encounter,  spCondition_Evidence,  spCondition_Identifier,  spCondition_Onset, 
      //  spCondition_Onsetinfo,  spCondition_Patient,  spCondition_Severity,  spCondition_Stage);
  CODES_TSearchParamsConformance : Array[TSearchParamsConformance] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'date', 'description', 'event', 'fhirversion', 'format', 'mode', 'name', 'publisher', 'resource', 'resourceprofile', 'securityservice', 'software', 'status', 'supported-profile', 'url', 'version');
  DESC_TSearchParamsConformance : Array[TSearchParamsConformance] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'The conformance statement publication date',
     'Text search in the description of the conformance statement',
     'Event code in a conformance statement',
     'The version of FHIR',
     'formats supported (xml | json | mime type)',
     'Mode - restful (server/client) or messaging (sender/receiver)',
     'Name of the conformance statement',
     'Name of the publisher of the conformance statement',
     'Name of a resource mentioned in a conformance statement',
     'A profile id invoked in a conformance statement',
     'OAuth | SMART-on-FHIR | NTLM | Basic | Kerberos | Certificates',
     'Part of a the name of a software application',
     'The current status of the conformance statement',
     'Profiles for use cases supported',
     'The uri that identifies the conformance statement',
     'The version identifier of the conformance statement');
//  CHECK_TSearchParamsConformance : Array[TSearchParamsConformance] of TSearchParamsConformance = ( spConformance__content,  spConformance__id,  spConformance__lastUpdated,  spConformance__profile,  spConformance__query,  spConformance__security,  spConformance__tag, 
      //  spConformance__text,  spConformance_Date,  spConformance_Description,  spConformance_Event,  spConformance_Fhirversion,  spConformance_Format,  spConformance_Mode,  spConformance_Name,  spConformance_Publisher,  spConformance_Resource,  spConformance_Resourceprofile, 
      //  spConformance_Securityservice,  spConformance_Software,  spConformance_Status,  spConformance_Supportedprofile,  spConformance_Url,  spConformance_Version);
  CODES_TSearchParamsContract : Array[TSearchParamsContract] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'agent', 'authority', 'domain', 'identifier', 'issued', 'patient', 'signer', 'topic');
  DESC_TSearchParamsContract : Array[TSearchParamsContract] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Agent to the Contact',
     'The authority of the contract',
     'The domain of the contract',
     'The identity of the contract',
     'The date/time the contract was issued',
     'The identity of the topic of the contract (if a patient)',
     'Contract Signatory Party',
     'The identity of the topic of the contract');
//  CHECK_TSearchParamsContract : Array[TSearchParamsContract] of TSearchParamsContract = ( spContract__content,  spContract__id,  spContract__lastUpdated,  spContract__profile,  spContract__query,  spContract__security,  spContract__tag,  spContract__text, 
      //  spContract_Agent,  spContract_Authority,  spContract_Domain,  spContract_Identifier,  spContract_Issued,  spContract_Patient,  spContract_Signer,  spContract_Topic);
  CODES_TSearchParamsCoverage : Array[TSearchParamsCoverage] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'beneficiaryidentifier', 'beneficiaryreference', 'dependent', 'group', 'identifier', 'issueridentifier', 'issuerreference', 'plan', 'planholderidentifier', 'planholderreference', 'sequence', 'subplan', 'type');
  DESC_TSearchParamsCoverage : Array[TSearchParamsCoverage] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Covered party',
     'Covered party',
     'Dependent number',
     'Group identifier',
     'The primary identifier of the insured and the coverage',
     'The identity of the insurer',
     'The identity of the insurer',
     'A plan or policy identifier',
     'Reference to the planholder',
     'Reference to the planholder',
     'Sequence number',
     'Sub-plan identifier',
     'The kind of coverage (health plan, auto, Workers Compensation)');
//  CHECK_TSearchParamsCoverage : Array[TSearchParamsCoverage] of TSearchParamsCoverage = ( spCoverage__content,  spCoverage__id,  spCoverage__lastUpdated,  spCoverage__profile,  spCoverage__query,  spCoverage__security,  spCoverage__tag,  spCoverage__text, 
      //  spCoverage_Beneficiaryidentifier,  spCoverage_Beneficiaryreference,  spCoverage_Dependent,  spCoverage_Group,  spCoverage_Identifier,  spCoverage_Issueridentifier,  spCoverage_Issuerreference,  spCoverage_Plan,  spCoverage_Planholderidentifier,  spCoverage_Planholderreference, 
      //  spCoverage_Sequence,  spCoverage_Subplan,  spCoverage_Type);
  CODES_TSearchParamsDataElement : Array[TSearchParamsDataElement] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'code', 'context', 'date', 'description', 'identifier', 'name', 'objectClass', 'objectClassProperty', 'publisher', 'status', 'stringency', 'url', 'version');
  DESC_TSearchParamsDataElement : Array[TSearchParamsDataElement] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'A code for the data element (server may choose to do subsumption)',
     'A use context assigned to the data element',
     'The data element publication date',
     'Text search in the description of the data element.  This corresponds to the definition of the first DataElement.element.',
     'The identifier of the data element',
     'Name of the data element',
     'Matches on the 11179-objectClass extension value',
     'Matches on the 11179-objectClassProperty extension value',
     'Name of the publisher of the data element',
     'The current status of the data element',
     'The stringency of the data element definition',
     'The official URL for the data element',
     'The version identifier of the data element');
//  CHECK_TSearchParamsDataElement : Array[TSearchParamsDataElement] of TSearchParamsDataElement = ( spDataElement__content,  spDataElement__id,  spDataElement__lastUpdated,  spDataElement__profile,  spDataElement__query,  spDataElement__security,  spDataElement__tag, 
      //  spDataElement__text,  spDataElement_Code,  spDataElement_Context,  spDataElement_Date,  spDataElement_Description,  spDataElement_Identifier,  spDataElement_Name,  spDataElement_ObjectClass,  spDataElement_ObjectClassProperty,  spDataElement_Publisher, 
      //  spDataElement_Status,  spDataElement_Stringency,  spDataElement_Url,  spDataElement_Version);
  CODES_TSearchParamsDecisionSupportRule : Array[TSearchParamsDecisionSupportRule] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text');
  DESC_TSearchParamsDecisionSupportRule : Array[TSearchParamsDecisionSupportRule] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource');
//  CHECK_TSearchParamsDecisionSupportRule : Array[TSearchParamsDecisionSupportRule] of TSearchParamsDecisionSupportRule = ( spDecisionSupportRule__content,  spDecisionSupportRule__id,  spDecisionSupportRule__lastUpdated,  spDecisionSupportRule__profile, 
      //  spDecisionSupportRule__query,  spDecisionSupportRule__security,  spDecisionSupportRule__tag,  spDecisionSupportRule__text);
  CODES_TSearchParamsDecisionSupportServiceModule : Array[TSearchParamsDecisionSupportServiceModule] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text');
  DESC_TSearchParamsDecisionSupportServiceModule : Array[TSearchParamsDecisionSupportServiceModule] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource');
//  CHECK_TSearchParamsDecisionSupportServiceModule : Array[TSearchParamsDecisionSupportServiceModule] of TSearchParamsDecisionSupportServiceModule = ( spDecisionSupportServiceModule__content,  spDecisionSupportServiceModule__id,  spDecisionSupportServiceModule__lastUpdated, 
      //  spDecisionSupportServiceModule__profile,  spDecisionSupportServiceModule__query,  spDecisionSupportServiceModule__security,  spDecisionSupportServiceModule__tag,  spDecisionSupportServiceModule__text);
  CODES_TSearchParamsDetectedIssue : Array[TSearchParamsDetectedIssue] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'author', 'category', 'date', 'identifier', 'implicated', 'patient');
  DESC_TSearchParamsDetectedIssue : Array[TSearchParamsDetectedIssue] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'The provider or device that identified the issue',
     'Issue Category, e.g. drug-drug, duplicate therapy, etc.',
     'When identified',
     'Unique id for the detected issue',
     'Problem resource',
     'Associated patient');
//  CHECK_TSearchParamsDetectedIssue : Array[TSearchParamsDetectedIssue] of TSearchParamsDetectedIssue = ( spDetectedIssue__content,  spDetectedIssue__id,  spDetectedIssue__lastUpdated,  spDetectedIssue__profile,  spDetectedIssue__query,  spDetectedIssue__security, 
      //  spDetectedIssue__tag,  spDetectedIssue__text,  spDetectedIssue_Author,  spDetectedIssue_Category,  spDetectedIssue_Date,  spDetectedIssue_Identifier,  spDetectedIssue_Implicated,  spDetectedIssue_Patient);
  CODES_TSearchParamsDevice : Array[TSearchParamsDevice] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'identifier', 'location', 'manufacturer', 'model', 'organization', 'patient', 'type', 'udicarrier', 'url');
  DESC_TSearchParamsDevice : Array[TSearchParamsDevice] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Instance id from manufacturer, owner, and others',
     'A location, where the resource is found',
     'The manufacturer of the device',
     'The model of the device',
     'The organization responsible for the device',
     'Patient information, if the resource is affixed to a person',
     'The type of the device',
     'Barcode string (udi)',
     'Network address to contact device');
//  CHECK_TSearchParamsDevice : Array[TSearchParamsDevice] of TSearchParamsDevice = ( spDevice__content,  spDevice__id,  spDevice__lastUpdated,  spDevice__profile,  spDevice__query,  spDevice__security,  spDevice__tag,  spDevice__text,  spDevice_Identifier, 
      //  spDevice_Location,  spDevice_Manufacturer,  spDevice_Model,  spDevice_Organization,  spDevice_Patient,  spDevice_Type,  spDevice_Udicarrier,  spDevice_Url);
  CODES_TSearchParamsDeviceComponent : Array[TSearchParamsDeviceComponent] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'parent', 'source', 'type');
  DESC_TSearchParamsDeviceComponent : Array[TSearchParamsDeviceComponent] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'The parent DeviceComponent resource',
     'The device source',
     'The device component type');
//  CHECK_TSearchParamsDeviceComponent : Array[TSearchParamsDeviceComponent] of TSearchParamsDeviceComponent = ( spDeviceComponent__content,  spDeviceComponent__id,  spDeviceComponent__lastUpdated,  spDeviceComponent__profile,  spDeviceComponent__query, 
      //  spDeviceComponent__security,  spDeviceComponent__tag,  spDeviceComponent__text,  spDeviceComponent_Parent,  spDeviceComponent_Source,  spDeviceComponent_Type);
  CODES_TSearchParamsDeviceMetric : Array[TSearchParamsDeviceMetric] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'category', 'identifier', 'parent', 'source', 'type');
  DESC_TSearchParamsDeviceMetric : Array[TSearchParamsDeviceMetric] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'The category of the metric',
     'The identifier of the metric',
     'The parent DeviceMetric resource',
     'The device resource',
     'The component type');
//  CHECK_TSearchParamsDeviceMetric : Array[TSearchParamsDeviceMetric] of TSearchParamsDeviceMetric = ( spDeviceMetric__content,  spDeviceMetric__id,  spDeviceMetric__lastUpdated,  spDeviceMetric__profile,  spDeviceMetric__query,  spDeviceMetric__security, 
      //  spDeviceMetric__tag,  spDeviceMetric__text,  spDeviceMetric_Category,  spDeviceMetric_Identifier,  spDeviceMetric_Parent,  spDeviceMetric_Source,  spDeviceMetric_Type);
  CODES_TSearchParamsDeviceUseRequest : Array[TSearchParamsDeviceUseRequest] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'device', 'patient', 'subject');
  DESC_TSearchParamsDeviceUseRequest : Array[TSearchParamsDeviceUseRequest] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Device requested',
     'Search by subject - a patient',
     'Search by subject');
//  CHECK_TSearchParamsDeviceUseRequest : Array[TSearchParamsDeviceUseRequest] of TSearchParamsDeviceUseRequest = ( spDeviceUseRequest__content,  spDeviceUseRequest__id,  spDeviceUseRequest__lastUpdated,  spDeviceUseRequest__profile,  spDeviceUseRequest__query, 
      //  spDeviceUseRequest__security,  spDeviceUseRequest__tag,  spDeviceUseRequest__text,  spDeviceUseRequest_Device,  spDeviceUseRequest_Patient,  spDeviceUseRequest_Subject);
  CODES_TSearchParamsDeviceUseStatement : Array[TSearchParamsDeviceUseStatement] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'device', 'patient', 'subject');
  DESC_TSearchParamsDeviceUseStatement : Array[TSearchParamsDeviceUseStatement] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Search by device',
     'Search by subject - a patient',
     'Search by subject');
//  CHECK_TSearchParamsDeviceUseStatement : Array[TSearchParamsDeviceUseStatement] of TSearchParamsDeviceUseStatement = ( spDeviceUseStatement__content,  spDeviceUseStatement__id,  spDeviceUseStatement__lastUpdated,  spDeviceUseStatement__profile,  spDeviceUseStatement__query, 
      //  spDeviceUseStatement__security,  spDeviceUseStatement__tag,  spDeviceUseStatement__text,  spDeviceUseStatement_Device,  spDeviceUseStatement_Patient,  spDeviceUseStatement_Subject);
  CODES_TSearchParamsDiagnosticOrder : Array[TSearchParamsDiagnosticOrder] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'actor', 'bodysite', 'code', 'encounter', 'event-date', 'event-status', 'event-status-date', 'identifier', 'item-date', 'item-past-status', 'item-status', 'item-status-date', 'orderer', 'patient', 'specimen', 'status', 'subject');
  DESC_TSearchParamsDiagnosticOrder : Array[TSearchParamsDiagnosticOrder] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Who recorded or did this',
     'Location of requested test (if applicable)',
     'Code to indicate the item (test or panel) being ordered',
     'The encounter that this diagnostic order is associated with',
     'The date at which the event happened',
     'proposed | draft | planned | requested | received | accepted | in-progress | review | completed | cancelled | suspended | rejected | failed | entered-in-error',
     'A combination of past-status and date',
     'Identifiers assigned to this order',
     'The date at which the event happened',
     'proposed | draft | planned | requested | received | accepted | in-progress | review | completed | cancelled | suspended | rejected | failed | entered-in-error',
     'proposed | draft | planned | requested | received | accepted | in-progress | review | completed | cancelled | suspended | rejected | failed | entered-in-error',
     'A combination of item-past-status and item-date',
     'Who ordered the test',
     'Who and/or what test is about',
     'If the whole order relates to specific specimens',
     'proposed | draft | planned | requested | received | accepted | in-progress | review | completed | cancelled | suspended | rejected | failed | entered-in-error',
     'Who and/or what test is about');
//  CHECK_TSearchParamsDiagnosticOrder : Array[TSearchParamsDiagnosticOrder] of TSearchParamsDiagnosticOrder = ( spDiagnosticOrder__content,  spDiagnosticOrder__id,  spDiagnosticOrder__lastUpdated,  spDiagnosticOrder__profile,  spDiagnosticOrder__query, 
      //  spDiagnosticOrder__security,  spDiagnosticOrder__tag,  spDiagnosticOrder__text,  spDiagnosticOrder_Actor,  spDiagnosticOrder_Bodysite,  spDiagnosticOrder_Code,  spDiagnosticOrder_Encounter,  spDiagnosticOrder_Eventdate,  spDiagnosticOrder_Eventstatus, 
      //  spDiagnosticOrder_Eventstatusdate,  spDiagnosticOrder_Identifier,  spDiagnosticOrder_Itemdate,  spDiagnosticOrder_Itempaststatus,  spDiagnosticOrder_Itemstatus,  spDiagnosticOrder_Itemstatusdate,  spDiagnosticOrder_Orderer,  spDiagnosticOrder_Patient, 
      //  spDiagnosticOrder_Specimen,  spDiagnosticOrder_Status,  spDiagnosticOrder_Subject);
  CODES_TSearchParamsDiagnosticReport : Array[TSearchParamsDiagnosticReport] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'category', 'code', 'date', 'diagnosis', 'encounter', 'identifier', 'image', 'issued', 'patient', 'performer', 'request', 'result', 'specimen', 'status', 'subject');
  DESC_TSearchParamsDiagnosticReport : Array[TSearchParamsDiagnosticReport] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Which diagnostic discipline/department created the report',
     'The code for the report as a whole, as opposed to codes for the atomic results, which are the names on the observation resource referred to from the result',
     'The clinically relevant time of the report',
     'A coded diagnosis on the report',
     'The Encounter when the order was made',
     'An identifier for the report',
     'A reference to the image source.',
     'When the report was issued',
     'The subject of the report if a patient',
     'Who was the source of the report (organization)',
     'Reference to the test or procedure request.',
     'Link to an atomic result (observation resource)',
     'The specimen details',
     'The status of the report',
     'The subject of the report');
//  CHECK_TSearchParamsDiagnosticReport : Array[TSearchParamsDiagnosticReport] of TSearchParamsDiagnosticReport = ( spDiagnosticReport__content,  spDiagnosticReport__id,  spDiagnosticReport__lastUpdated,  spDiagnosticReport__profile,  spDiagnosticReport__query, 
      //  spDiagnosticReport__security,  spDiagnosticReport__tag,  spDiagnosticReport__text,  spDiagnosticReport_Category,  spDiagnosticReport_Code,  spDiagnosticReport_Date,  spDiagnosticReport_Diagnosis,  spDiagnosticReport_Encounter,  spDiagnosticReport_Identifier, 
      //  spDiagnosticReport_Image,  spDiagnosticReport_Issued,  spDiagnosticReport_Patient,  spDiagnosticReport_Performer,  spDiagnosticReport_Request,  spDiagnosticReport_Result,  spDiagnosticReport_Specimen,  spDiagnosticReport_Status,  spDiagnosticReport_Subject);
  CODES_TSearchParamsDocumentManifest : Array[TSearchParamsDocumentManifest] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'author', 'content-ref', 'created', 'description', 'identifier', 'patient', 'recipient', 'related-id', 'related-ref', 'source', 'status', 'subject', 'type');
  DESC_TSearchParamsDocumentManifest : Array[TSearchParamsDocumentManifest] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Who and/or what authored the manifest',
     'Contents of this set of documents',
     'When this document manifest created',
     'Human-readable description (title)',
     'Unique Identifier for the set of documents',
     'The subject of the set of documents',
     'Intended to get notified about this set of documents',
     'Identifiers of things that are related',
     'Related Resource',
     'The source system/application/software',
     'current | superseded | entered-in-error',
     'The subject of the set of documents',
     'Kind of document set');
//  CHECK_TSearchParamsDocumentManifest : Array[TSearchParamsDocumentManifest] of TSearchParamsDocumentManifest = ( spDocumentManifest__content,  spDocumentManifest__id,  spDocumentManifest__lastUpdated,  spDocumentManifest__profile,  spDocumentManifest__query, 
      //  spDocumentManifest__security,  spDocumentManifest__tag,  spDocumentManifest__text,  spDocumentManifest_Author,  spDocumentManifest_Contentref,  spDocumentManifest_Created,  spDocumentManifest_Description,  spDocumentManifest_Identifier,  spDocumentManifest_Patient, 
      //  spDocumentManifest_Recipient,  spDocumentManifest_Relatedid,  spDocumentManifest_Relatedref,  spDocumentManifest_Source,  spDocumentManifest_Status,  spDocumentManifest_Subject,  spDocumentManifest_Type);
  CODES_TSearchParamsDocumentReference : Array[TSearchParamsDocumentReference] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'authenticator', 'author', 'class', 'created', 'custodian', 'description', 'encounter', 'event', 'facility', 'format', 'identifier', 'indexed', 'language', 'location', 'patient', 'period', 'related-id', 'related-ref', 'relatesto', 'relation', 'relationship', 'securitylabel', 'setting', 'status', 'subject', 'type');
  DESC_TSearchParamsDocumentReference : Array[TSearchParamsDocumentReference] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Who/what authenticated the document',
     'Who and/or what authored the document',
     'Categorization of document',
     'Document creation time',
     'Organization which maintains the document',
     'Human-readable description (title)',
     'Context of the document  content',
     'Main Clinical Acts Documented',
     'Kind of facility where patient was seen',
     'Format/content rules for the document',
     'Master Version Specific Identifier',
     'When this document reference created',
     'Human language of the content (BCP-47)',
     'Uri where the data can be found',
     'Who/what is the subject of the document',
     'Time of service that is being documented',
     'Identifier of related objects or events',
     'Related Resource',
     'Target of the relationship',
     'replaces | transforms | signs | appends',
     'Combination of relation and relatesTo',
     'Document security-tags',
     'Additional details about where the content was created (e.g. clinical specialty)',
     'current | superseded | entered-in-error',
     'Who/what is the subject of the document',
     'Kind of document (LOINC if possible)');
//  CHECK_TSearchParamsDocumentReference : Array[TSearchParamsDocumentReference] of TSearchParamsDocumentReference = ( spDocumentReference__content,  spDocumentReference__id,  spDocumentReference__lastUpdated,  spDocumentReference__profile,  spDocumentReference__query, 
      //  spDocumentReference__security,  spDocumentReference__tag,  spDocumentReference__text,  spDocumentReference_Authenticator,  spDocumentReference_Author,  spDocumentReference_Class,  spDocumentReference_Created,  spDocumentReference_Custodian,  spDocumentReference_Description, 
      //  spDocumentReference_Encounter,  spDocumentReference_Event,  spDocumentReference_Facility,  spDocumentReference_Format,  spDocumentReference_Identifier,  spDocumentReference_Indexed,  spDocumentReference_Language,  spDocumentReference_Location,  spDocumentReference_Patient, 
      //  spDocumentReference_Period,  spDocumentReference_Relatedid,  spDocumentReference_Relatedref,  spDocumentReference_Relatesto,  spDocumentReference_Relation,  spDocumentReference_Relationship,  spDocumentReference_Securitylabel,  spDocumentReference_Setting, 
      //  spDocumentReference_Status,  spDocumentReference_Subject,  spDocumentReference_Type);
  CODES_TSearchParamsEligibilityRequest : Array[TSearchParamsEligibilityRequest] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'created', 'facility', 'identifier', 'organization', 'patient', 'provider');
  DESC_TSearchParamsEligibilityRequest : Array[TSearchParamsEligibilityRequest] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'The creation date for the EOB',
     'Facility responsible for the goods and services',
     'The business identifier of the Eligibility',
     'The reference to the providing organization',
     'The reference to the patient',
     'The reference to the provider');
//  CHECK_TSearchParamsEligibilityRequest : Array[TSearchParamsEligibilityRequest] of TSearchParamsEligibilityRequest = ( spEligibilityRequest__content,  spEligibilityRequest__id,  spEligibilityRequest__lastUpdated,  spEligibilityRequest__profile,  spEligibilityRequest__query, 
      //  spEligibilityRequest__security,  spEligibilityRequest__tag,  spEligibilityRequest__text,  spEligibilityRequest_Created,  spEligibilityRequest_Facility,  spEligibilityRequest_Identifier,  spEligibilityRequest_Organization,  spEligibilityRequest_Patient, 
      //  spEligibilityRequest_Provider);
  CODES_TSearchParamsEligibilityResponse : Array[TSearchParamsEligibilityResponse] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'created', 'disposition', 'identifier', 'organization', 'outcome', 'request', 'requestorganization', 'requestprovider');
  DESC_TSearchParamsEligibilityResponse : Array[TSearchParamsEligibilityResponse] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'The creation date',
     'The contents of the disposition message',
     'The business identifier',
     'The organization which generated this resource',
     'The processing outcome',
     'The EligibilityRequest reference',
     'Reference to the EligibilityRequest organization',
     'Reference to the EligibilityRequest provider');
//  CHECK_TSearchParamsEligibilityResponse : Array[TSearchParamsEligibilityResponse] of TSearchParamsEligibilityResponse = ( spEligibilityResponse__content,  spEligibilityResponse__id,  spEligibilityResponse__lastUpdated,  spEligibilityResponse__profile, 
      //  spEligibilityResponse__query,  spEligibilityResponse__security,  spEligibilityResponse__tag,  spEligibilityResponse__text,  spEligibilityResponse_Created,  spEligibilityResponse_Disposition,  spEligibilityResponse_Identifier,  spEligibilityResponse_Organization, 
      //  spEligibilityResponse_Outcome,  spEligibilityResponse_Request,  spEligibilityResponse_Requestorganization,  spEligibilityResponse_Requestprovider);
  CODES_TSearchParamsEncounter : Array[TSearchParamsEncounter] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'appointment', 'condition', 'date', 'episodeofcare', 'identifier', 'incomingreferral', 'indication', 'length', 'location', 'location-period', 'part-of', 'participant', 'participant-type', 'patient', 'practitioner', 'procedure', 'reason', 'special-arrangement', 'status', 'type');
  DESC_TSearchParamsEncounter : Array[TSearchParamsEncounter] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'The appointment that scheduled this encounter',
     'Reason the encounter takes place (resource)',
     'A date within the period the Encounter lasted',
     'Episode(s) of care that this encounter should be recorded against',
     'Identifier(s) by which this encounter is known',
     'The ReferralRequest that initiated this encounter',
     'Reason the encounter takes place (resource)',
     'Length of encounter in days',
     'Location the encounter takes place',
     'Time period during which the patient was present at the location',
     'Another Encounter this encounter is part of',
     'Persons involved in the encounter other than the patient',
     'Role of participant in encounter',
     'The patient present at the encounter',
     'Persons involved in the encounter other than the patient',
     'Reason the encounter takes place (resource)',
     'Reason the encounter takes place (code)',
     'Wheelchair, translator, stretcher, etc.',
     'planned | arrived | in-progress | onleave | finished | cancelled',
     'Specific type of encounter');
//  CHECK_TSearchParamsEncounter : Array[TSearchParamsEncounter] of TSearchParamsEncounter = ( spEncounter__content,  spEncounter__id,  spEncounter__lastUpdated,  spEncounter__profile,  spEncounter__query,  spEncounter__security,  spEncounter__tag,  spEncounter__text, 
      //  spEncounter_Appointment,  spEncounter_Condition,  spEncounter_Date,  spEncounter_Episodeofcare,  spEncounter_Identifier,  spEncounter_Incomingreferral,  spEncounter_Indication,  spEncounter_Length,  spEncounter_Location,  spEncounter_Locationperiod, 
      //  spEncounter_Partof,  spEncounter_Participant,  spEncounter_Participanttype,  spEncounter_Patient,  spEncounter_Practitioner,  spEncounter_Procedure,  spEncounter_Reason,  spEncounter_Specialarrangement,  spEncounter_Status,  spEncounter_Type);
  CODES_TSearchParamsEnrollmentRequest : Array[TSearchParamsEnrollmentRequest] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'identifier', 'patient', 'subject');
  DESC_TSearchParamsEnrollmentRequest : Array[TSearchParamsEnrollmentRequest] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'The business identifier of the Enrollment',
     'The party to be enrolled',
     'The party to be enrolled');
//  CHECK_TSearchParamsEnrollmentRequest : Array[TSearchParamsEnrollmentRequest] of TSearchParamsEnrollmentRequest = ( spEnrollmentRequest__content,  spEnrollmentRequest__id,  spEnrollmentRequest__lastUpdated,  spEnrollmentRequest__profile,  spEnrollmentRequest__query, 
      //  spEnrollmentRequest__security,  spEnrollmentRequest__tag,  spEnrollmentRequest__text,  spEnrollmentRequest_Identifier,  spEnrollmentRequest_Patient,  spEnrollmentRequest_Subject);
  CODES_TSearchParamsEnrollmentResponse : Array[TSearchParamsEnrollmentResponse] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'identifier');
  DESC_TSearchParamsEnrollmentResponse : Array[TSearchParamsEnrollmentResponse] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'The business identifier of the Explanation of Benefit');
//  CHECK_TSearchParamsEnrollmentResponse : Array[TSearchParamsEnrollmentResponse] of TSearchParamsEnrollmentResponse = ( spEnrollmentResponse__content,  spEnrollmentResponse__id,  spEnrollmentResponse__lastUpdated,  spEnrollmentResponse__profile,  spEnrollmentResponse__query, 
      //  spEnrollmentResponse__security,  spEnrollmentResponse__tag,  spEnrollmentResponse__text,  spEnrollmentResponse_Identifier);
  CODES_TSearchParamsEpisodeOfCare : Array[TSearchParamsEpisodeOfCare] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'care-manager', 'condition', 'date', 'identifier', 'incomingreferral', 'organization', 'patient', 'status', 'team-member', 'type');
  DESC_TSearchParamsEpisodeOfCare : Array[TSearchParamsEpisodeOfCare] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Care manager/care co-ordinator for the patient',
     'Conditions/problems/diagnoses this episode of care is for',
     'The provided date search value falls within the episode of care''s period',
     'Identifier(s) for the EpisodeOfCare',
     'Incoming Referral Request',
     'The organization that has assumed the specific responsibilities of this EpisodeOfCare',
     'Patient for this episode of care',
     'The current status of the Episode of Care as provided (does not check the status history collection)',
     'A Practitioner or Organization allocated to the care team for this EpisodeOfCare',
     'Type/class  - e.g. specialist referral, disease management');
//  CHECK_TSearchParamsEpisodeOfCare : Array[TSearchParamsEpisodeOfCare] of TSearchParamsEpisodeOfCare = ( spEpisodeOfCare__content,  spEpisodeOfCare__id,  spEpisodeOfCare__lastUpdated,  spEpisodeOfCare__profile,  spEpisodeOfCare__query,  spEpisodeOfCare__security, 
      //  spEpisodeOfCare__tag,  spEpisodeOfCare__text,  spEpisodeOfCare_Caremanager,  spEpisodeOfCare_Condition,  spEpisodeOfCare_Date,  spEpisodeOfCare_Identifier,  spEpisodeOfCare_Incomingreferral,  spEpisodeOfCare_Organization,  spEpisodeOfCare_Patient,  spEpisodeOfCare_Status, 
      //  spEpisodeOfCare_Teammember,  spEpisodeOfCare_Type);
  CODES_TSearchParamsExpansionProfile : Array[TSearchParamsExpansionProfile] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'date', 'description', 'identifier', 'name', 'publisher', 'status', 'url', 'version');
  DESC_TSearchParamsExpansionProfile : Array[TSearchParamsExpansionProfile] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'The expansion profile publication date',
     'Text search in the description of the expansion profile',
     'The identifier for the expansion profile',
     'The name of the expansion profile',
     'Name of the publisher of the expansion profile',
     'The status of the expansion profile',
     'The logical URL for the expansion profile',
     'The version identifier of the expansion profile');
//  CHECK_TSearchParamsExpansionProfile : Array[TSearchParamsExpansionProfile] of TSearchParamsExpansionProfile = ( spExpansionProfile__content,  spExpansionProfile__id,  spExpansionProfile__lastUpdated,  spExpansionProfile__profile,  spExpansionProfile__query, 
      //  spExpansionProfile__security,  spExpansionProfile__tag,  spExpansionProfile__text,  spExpansionProfile_Date,  spExpansionProfile_Description,  spExpansionProfile_Identifier,  spExpansionProfile_Name,  spExpansionProfile_Publisher,  spExpansionProfile_Status, 
      //  spExpansionProfile_Url,  spExpansionProfile_Version);
  CODES_TSearchParamsExplanationOfBenefit : Array[TSearchParamsExplanationOfBenefit] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'claim', 'created', 'disposition', 'facility', 'identifier', 'organization', 'patient', 'provider');
  DESC_TSearchParamsExplanationOfBenefit : Array[TSearchParamsExplanationOfBenefit] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'The reference to the claim',
     'The creation date for the EOB',
     'The contents of the disposition message',
     'Facility responsible for the goods and services',
     'The business identifier of the Explanation of Benefit',
     'The reference to the providing organization',
     'The reference to the patient',
     'The reference to the provider');
//  CHECK_TSearchParamsExplanationOfBenefit : Array[TSearchParamsExplanationOfBenefit] of TSearchParamsExplanationOfBenefit = ( spExplanationOfBenefit__content,  spExplanationOfBenefit__id,  spExplanationOfBenefit__lastUpdated,  spExplanationOfBenefit__profile, 
      //  spExplanationOfBenefit__query,  spExplanationOfBenefit__security,  spExplanationOfBenefit__tag,  spExplanationOfBenefit__text,  spExplanationOfBenefit_Claim,  spExplanationOfBenefit_Created,  spExplanationOfBenefit_Disposition,  spExplanationOfBenefit_Facility, 
      //  spExplanationOfBenefit_Identifier,  spExplanationOfBenefit_Organization,  spExplanationOfBenefit_Patient,  spExplanationOfBenefit_Provider);
  CODES_TSearchParamsFamilyMemberHistory : Array[TSearchParamsFamilyMemberHistory] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'code', 'condition', 'date', 'gender', 'identifier', 'patient', 'relationship');
  DESC_TSearchParamsFamilyMemberHistory : Array[TSearchParamsFamilyMemberHistory] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'A search by a condition code',
     'Search for a history of a particular condition within a patient''s family.',
     'When history was captured/updated',
     'A search by a gender code of a family member',
     'A search by a record identifier',
     'The identity of a subject to list family member history items for',
     'Search for family history of members based on relationship');
//  CHECK_TSearchParamsFamilyMemberHistory : Array[TSearchParamsFamilyMemberHistory] of TSearchParamsFamilyMemberHistory = ( spFamilyMemberHistory__content,  spFamilyMemberHistory__id,  spFamilyMemberHistory__lastUpdated,  spFamilyMemberHistory__profile, 
      //  spFamilyMemberHistory__query,  spFamilyMemberHistory__security,  spFamilyMemberHistory__tag,  spFamilyMemberHistory__text,  spFamilyMemberHistory_Code,  spFamilyMemberHistory_Condition,  spFamilyMemberHistory_Date,  spFamilyMemberHistory_Gender,  spFamilyMemberHistory_Identifier, 
      //  spFamilyMemberHistory_Patient,  spFamilyMemberHistory_Relationship);
  CODES_TSearchParamsFlag : Array[TSearchParamsFlag] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'author', 'date', 'encounter', 'patient', 'subject');
  DESC_TSearchParamsFlag : Array[TSearchParamsFlag] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Flag creator',
     'Time period when flag is active',
     'Alert relevant during encounter',
     'The identity of a subject to list flags for',
     'The identity of a subject to list flags for');
//  CHECK_TSearchParamsFlag : Array[TSearchParamsFlag] of TSearchParamsFlag = ( spFlag__content,  spFlag__id,  spFlag__lastUpdated,  spFlag__profile,  spFlag__query,  spFlag__security,  spFlag__tag,  spFlag__text,  spFlag_Author,  spFlag_Date,  spFlag_Encounter, 
      //  spFlag_Patient,  spFlag_Subject);
  CODES_TSearchParamsGoal : Array[TSearchParamsGoal] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'category', 'identifier', 'patient', 'status', 'subject', 'targetdate');
  DESC_TSearchParamsGoal : Array[TSearchParamsGoal] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'E.g. Treatment, dietary, behavioral, etc.',
     'External Ids for this goal',
     'Who this goal is intended for',
     'proposed | planned | accepted | rejected | in-progress | achieved | sustaining | on-hold | cancelled',
     'Who this goal is intended for',
     'Reach goal on or before');
//  CHECK_TSearchParamsGoal : Array[TSearchParamsGoal] of TSearchParamsGoal = ( spGoal__content,  spGoal__id,  spGoal__lastUpdated,  spGoal__profile,  spGoal__query,  spGoal__security,  spGoal__tag,  spGoal__text,  spGoal_Category,  spGoal_Identifier, 
      //  spGoal_Patient,  spGoal_Status,  spGoal_Subject,  spGoal_Targetdate);
  CODES_TSearchParamsGroup : Array[TSearchParamsGroup] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'actual', 'characteristic', 'characteristic-value', 'code', 'exclude', 'identifier', 'member', 'type', 'value');
  DESC_TSearchParamsGroup : Array[TSearchParamsGroup] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Descriptive or actual',
     'Kind of characteristic',
     'A composite of both characteristic and value',
     'The kind of resources contained',
     'Group includes or excludes',
     'Unique id',
     'Reference to the group member',
     'The type of resources the group contains',
     'Value held by characteristic');
//  CHECK_TSearchParamsGroup : Array[TSearchParamsGroup] of TSearchParamsGroup = ( spGroup__content,  spGroup__id,  spGroup__lastUpdated,  spGroup__profile,  spGroup__query,  spGroup__security,  spGroup__tag,  spGroup__text,  spGroup_Actual,  spGroup_Characteristic, 
      //  spGroup_Characteristicvalue,  spGroup_Code,  spGroup_Exclude,  spGroup_Identifier,  spGroup_Member,  spGroup_Type,  spGroup_Value);
  CODES_TSearchParamsGuidanceResponse : Array[TSearchParamsGuidanceResponse] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text');
  DESC_TSearchParamsGuidanceResponse : Array[TSearchParamsGuidanceResponse] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource');
//  CHECK_TSearchParamsGuidanceResponse : Array[TSearchParamsGuidanceResponse] of TSearchParamsGuidanceResponse = ( spGuidanceResponse__content,  spGuidanceResponse__id,  spGuidanceResponse__lastUpdated,  spGuidanceResponse__profile,  spGuidanceResponse__query, 
      //  spGuidanceResponse__security,  spGuidanceResponse__tag,  spGuidanceResponse__text);
  CODES_TSearchParamsHealthcareService : Array[TSearchParamsHealthcareService] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'characteristic', 'identifier', 'location', 'name', 'organization', 'programname', 'servicecategory', 'servicetype');
  DESC_TSearchParamsHealthcareService : Array[TSearchParamsHealthcareService] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'One of the HealthcareService''s characteristics',
     'External identifiers for this item',
     'The location of the Healthcare Service',
     'A portion of the Healthcare service name',
     'The organization that provides this Healthcare Service',
     'One of the Program Names serviced by this HealthcareService',
     'Service Category of the Healthcare Service',
     'The type of service provided by this healthcare service');
//  CHECK_TSearchParamsHealthcareService : Array[TSearchParamsHealthcareService] of TSearchParamsHealthcareService = ( spHealthcareService__content,  spHealthcareService__id,  spHealthcareService__lastUpdated,  spHealthcareService__profile,  spHealthcareService__query, 
      //  spHealthcareService__security,  spHealthcareService__tag,  spHealthcareService__text,  spHealthcareService_Characteristic,  spHealthcareService_Identifier,  spHealthcareService_Location,  spHealthcareService_Name,  spHealthcareService_Organization,  spHealthcareService_Programname, 
      //  spHealthcareService_Servicecategory,  spHealthcareService_Servicetype);
  CODES_TSearchParamsImagingObjectSelection : Array[TSearchParamsImagingObjectSelection] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'author', 'authoring-time', 'identifier', 'patient', 'selected-study', 'title');
  DESC_TSearchParamsImagingObjectSelection : Array[TSearchParamsImagingObjectSelection] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Author of key DICOM object selection',
     'Time of key DICOM object selection authoring',
     'UID of key DICOM object selection',
     'Subject of key DICOM object selection',
     'Study selected in key DICOM object selection',
     'Title of key DICOM object selection');
//  CHECK_TSearchParamsImagingObjectSelection : Array[TSearchParamsImagingObjectSelection] of TSearchParamsImagingObjectSelection = ( spImagingObjectSelection__content,  spImagingObjectSelection__id,  spImagingObjectSelection__lastUpdated,  spImagingObjectSelection__profile, 
      //  spImagingObjectSelection__query,  spImagingObjectSelection__security,  spImagingObjectSelection__tag,  spImagingObjectSelection__text,  spImagingObjectSelection_Author,  spImagingObjectSelection_Authoringtime,  spImagingObjectSelection_Identifier,  spImagingObjectSelection_Patient, 
      //  spImagingObjectSelection_Selectedstudy,  spImagingObjectSelection_Title);
  CODES_TSearchParamsImagingStudy : Array[TSearchParamsImagingStudy] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'accession', 'bodysite', 'dicom-class', 'identifier', 'modality', 'order', 'patient', 'series', 'started', 'study', 'uid');
  DESC_TSearchParamsImagingStudy : Array[TSearchParamsImagingStudy] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'The accession identifier for the study',
     'The body site studied',
     'The type of the instance',
     'Other identifiers for the Study',
     'The modality of the series',
     'The order for the image',
     'Who the study is about',
     'The identifier of the series of images',
     'When the study was started',
     'The study identifier for the image',
     'The instance unique identifier');
//  CHECK_TSearchParamsImagingStudy : Array[TSearchParamsImagingStudy] of TSearchParamsImagingStudy = ( spImagingStudy__content,  spImagingStudy__id,  spImagingStudy__lastUpdated,  spImagingStudy__profile,  spImagingStudy__query,  spImagingStudy__security, 
      //  spImagingStudy__tag,  spImagingStudy__text,  spImagingStudy_Accession,  spImagingStudy_Bodysite,  spImagingStudy_Dicomclass,  spImagingStudy_Identifier,  spImagingStudy_Modality,  spImagingStudy_Order,  spImagingStudy_Patient,  spImagingStudy_Series, 
      //  spImagingStudy_Started,  spImagingStudy_Study,  spImagingStudy_Uid);
  CODES_TSearchParamsImmunization : Array[TSearchParamsImmunization] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'date', 'dose-sequence', 'identifier', 'location', 'lot-number', 'manufacturer', 'notgiven', 'patient', 'performer', 'reaction', 'reaction-date', 'reason', 'reason-not-given', 'requester', 'status', 'vaccine-code');
  DESC_TSearchParamsImmunization : Array[TSearchParamsImmunization] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Vaccination  (non)-Administration Date',
     'Dose number within series',
     'Business identifier',
     'The service delivery location or facility in which the vaccine was / was to be administered',
     'Vaccine Lot Number',
     'Vaccine Manufacturer',
     'Administrations which were not given',
     'The patient for the vaccination record',
     'The practitioner who administered the vaccination',
     'Additional information on reaction',
     'When reaction started',
     'Why immunization occurred',
     'Explanation of reason vaccination was not administered',
     'The practitioner who ordered the vaccination',
     'Immunization event status',
     'Vaccine Product Administered');
//  CHECK_TSearchParamsImmunization : Array[TSearchParamsImmunization] of TSearchParamsImmunization = ( spImmunization__content,  spImmunization__id,  spImmunization__lastUpdated,  spImmunization__profile,  spImmunization__query,  spImmunization__security, 
      //  spImmunization__tag,  spImmunization__text,  spImmunization_Date,  spImmunization_Dosesequence,  spImmunization_Identifier,  spImmunization_Location,  spImmunization_Lotnumber,  spImmunization_Manufacturer,  spImmunization_Notgiven,  spImmunization_Patient, 
      //  spImmunization_Performer,  spImmunization_Reaction,  spImmunization_Reactiondate,  spImmunization_Reason,  spImmunization_Reasonnotgiven,  spImmunization_Requester,  spImmunization_Status,  spImmunization_Vaccinecode);
  CODES_TSearchParamsImmunizationRecommendation : Array[TSearchParamsImmunizationRecommendation] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'date', 'dose-number', 'dose-sequence', 'identifier', 'information', 'patient', 'status', 'support', 'vaccine-type');
  DESC_TSearchParamsImmunizationRecommendation : Array[TSearchParamsImmunizationRecommendation] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Date recommendation created',
     'Recommended dose number',
     'Dose number within sequence',
     'Business identifier',
     'Patient observations supporting recommendation',
     'Who this profile is for',
     'Vaccine administration status',
     'Past immunizations supporting recommendation',
     'Vaccine recommendation applies to');
//  CHECK_TSearchParamsImmunizationRecommendation : Array[TSearchParamsImmunizationRecommendation] of TSearchParamsImmunizationRecommendation = ( spImmunizationRecommendation__content,  spImmunizationRecommendation__id,  spImmunizationRecommendation__lastUpdated, 
      //  spImmunizationRecommendation__profile,  spImmunizationRecommendation__query,  spImmunizationRecommendation__security,  spImmunizationRecommendation__tag,  spImmunizationRecommendation__text,  spImmunizationRecommendation_Date,  spImmunizationRecommendation_Dosenumber, 
      //  spImmunizationRecommendation_Dosesequence,  spImmunizationRecommendation_Identifier,  spImmunizationRecommendation_Information,  spImmunizationRecommendation_Patient,  spImmunizationRecommendation_Status,  spImmunizationRecommendation_Support,  spImmunizationRecommendation_Vaccinetype);
  CODES_TSearchParamsImplementationGuide : Array[TSearchParamsImplementationGuide] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'context', 'date', 'dependency', 'description', 'experimental', 'name', 'publisher', 'status', 'url', 'version');
  DESC_TSearchParamsImplementationGuide : Array[TSearchParamsImplementationGuide] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'A use context assigned to the structure',
     'The implementation guide publication date',
     'Where to find dependency',
     'Text search in the description of the implementation guide',
     'If for testing purposes, not real usage',
     'Name of the implementation guide',
     'Name of the publisher of the implementation guide',
     'The current status of the implementation guide',
     'Absolute URL used to reference this Implementation Guide',
     'The version identifier of the implementation guide');
//  CHECK_TSearchParamsImplementationGuide : Array[TSearchParamsImplementationGuide] of TSearchParamsImplementationGuide = ( spImplementationGuide__content,  spImplementationGuide__id,  spImplementationGuide__lastUpdated,  spImplementationGuide__profile, 
      //  spImplementationGuide__query,  spImplementationGuide__security,  spImplementationGuide__tag,  spImplementationGuide__text,  spImplementationGuide_Context,  spImplementationGuide_Date,  spImplementationGuide_Dependency,  spImplementationGuide_Description, 
      //  spImplementationGuide_Experimental,  spImplementationGuide_Name,  spImplementationGuide_Publisher,  spImplementationGuide_Status,  spImplementationGuide_Url,  spImplementationGuide_Version);
  CODES_TSearchParamsLibrary : Array[TSearchParamsLibrary] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text');
  DESC_TSearchParamsLibrary : Array[TSearchParamsLibrary] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource');
//  CHECK_TSearchParamsLibrary : Array[TSearchParamsLibrary] of TSearchParamsLibrary = ( spLibrary__content,  spLibrary__id,  spLibrary__lastUpdated,  spLibrary__profile,  spLibrary__query,  spLibrary__security,  spLibrary__tag,  spLibrary__text);
  CODES_TSearchParamsLinkage : Array[TSearchParamsLinkage] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'author', 'item', 'source');
  DESC_TSearchParamsLinkage : Array[TSearchParamsLinkage] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Author of the Linkage',
     'Matches on any item in the Linkage',
     'Matches on any item in the Linkage with a type of ''source''');
//  CHECK_TSearchParamsLinkage : Array[TSearchParamsLinkage] of TSearchParamsLinkage = ( spLinkage__content,  spLinkage__id,  spLinkage__lastUpdated,  spLinkage__profile,  spLinkage__query,  spLinkage__security,  spLinkage__tag,  spLinkage__text,  spLinkage_Author, 
      //  spLinkage_Item,  spLinkage_Source);
  CODES_TSearchParamsList : Array[TSearchParamsList] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'code', 'date', 'empty-reason', 'encounter', 'identifier', 'item', 'notes', 'patient', 'source', 'status', 'subject', 'title');
  DESC_TSearchParamsList : Array[TSearchParamsList] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'What the purpose of this list is',
     'When the list was prepared',
     'Why list is empty',
     'Context in which list created',
     'Business identifier',
     'Actual entry',
     'Comments about the list',
     'If all resources have the same subject',
     'Who and/or what defined the list contents (aka Author)',
     'current | retired | entered-in-error',
     'If all resources have the same subject',
     'Descriptive name for the list');
//  CHECK_TSearchParamsList : Array[TSearchParamsList] of TSearchParamsList = ( spList__content,  spList__id,  spList__lastUpdated,  spList__profile,  spList__query,  spList__security,  spList__tag,  spList__text,  spList_Code,  spList_Date,  spList_Emptyreason, 
      //  spList_Encounter,  spList_Identifier,  spList_Item,  spList_Notes,  spList_Patient,  spList_Source,  spList_Status,  spList_Subject,  spList_Title);
  CODES_TSearchParamsLocation : Array[TSearchParamsLocation] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'identifier', 'name', 'near', 'near-distance', 'organization', 'partof', 'status', 'type');
  DESC_TSearchParamsLocation : Array[TSearchParamsLocation] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'A (part of the) address of the location',
     'A city specified in an address',
     'A country specified in an address',
     'A postal code specified in an address',
     'A state specified in an address',
     'A use code specified in an address',
     'Unique code or number identifying the location to its users',
     'A (portion of the) name of the location',
     'The coordinates expressed as [lat],[long] (using the WGS84 datum, see notes) to find locations near to (servers may search using a square rather than a circle for efficiency)',
     'A distance quantity to limit the near search to locations within a specific distance',
     'Searches for locations that are managed by the provided organization',
     'The location of which this location is a part',
     'Searches for locations with a specific kind of status',
     'A code for the type of location');
//  CHECK_TSearchParamsLocation : Array[TSearchParamsLocation] of TSearchParamsLocation = ( spLocation__content,  spLocation__id,  spLocation__lastUpdated,  spLocation__profile,  spLocation__query,  spLocation__security,  spLocation__tag,  spLocation__text, 
      //  spLocation_Address,  spLocation_Addresscity,  spLocation_Addresscountry,  spLocation_Addresspostalcode,  spLocation_Addressstate,  spLocation_Addressuse,  spLocation_Identifier,  spLocation_Name,  spLocation_Near,  spLocation_Neardistance,  spLocation_Organization, 
      //  spLocation_Partof,  spLocation_Status,  spLocation_Type);
  CODES_TSearchParamsMeasure : Array[TSearchParamsMeasure] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text');
  DESC_TSearchParamsMeasure : Array[TSearchParamsMeasure] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource');
//  CHECK_TSearchParamsMeasure : Array[TSearchParamsMeasure] of TSearchParamsMeasure = ( spMeasure__content,  spMeasure__id,  spMeasure__lastUpdated,  spMeasure__profile,  spMeasure__query,  spMeasure__security,  spMeasure__tag,  spMeasure__text);
  CODES_TSearchParamsMeasureReport : Array[TSearchParamsMeasureReport] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'patient');
  DESC_TSearchParamsMeasureReport : Array[TSearchParamsMeasureReport] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'The identity of a patient to search for individual measure report results for');
//  CHECK_TSearchParamsMeasureReport : Array[TSearchParamsMeasureReport] of TSearchParamsMeasureReport = ( spMeasureReport__content,  spMeasureReport__id,  spMeasureReport__lastUpdated,  spMeasureReport__profile,  spMeasureReport__query,  spMeasureReport__security, 
      //  spMeasureReport__tag,  spMeasureReport__text,  spMeasureReport_Patient);
  CODES_TSearchParamsMedia : Array[TSearchParamsMedia] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'created', 'identifier', 'operator', 'patient', 'subject', 'subtype', 'type', 'view');
  DESC_TSearchParamsMedia : Array[TSearchParamsMedia] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Date attachment was first created',
     'Identifier(s) for the image',
     'The person who generated the image',
     'Who/What this Media is a record of',
     'Who/What this Media is a record of',
     'The type of acquisition equipment/process',
     'photo | video | audio',
     'Imaging view, e.g. Lateral or Antero-posterior');
//  CHECK_TSearchParamsMedia : Array[TSearchParamsMedia] of TSearchParamsMedia = ( spMedia__content,  spMedia__id,  spMedia__lastUpdated,  spMedia__profile,  spMedia__query,  spMedia__security,  spMedia__tag,  spMedia__text,  spMedia_Created,  spMedia_Identifier, 
      //  spMedia_Operator,  spMedia_Patient,  spMedia_Subject,  spMedia_Subtype,  spMedia_Type,  spMedia_View);
  CODES_TSearchParamsMedication : Array[TSearchParamsMedication] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'code', 'container', 'form', 'ingredient', 'manufacturer', 'package-item');
  DESC_TSearchParamsMedication : Array[TSearchParamsMedication] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Codes that identify this medication',
     'E.g. box, vial, blister-pack',
     'powder | tablets | carton +',
     'The product contained',
     'Manufacturer of the item',
     'The item in the package');
//  CHECK_TSearchParamsMedication : Array[TSearchParamsMedication] of TSearchParamsMedication = ( spMedication__content,  spMedication__id,  spMedication__lastUpdated,  spMedication__profile,  spMedication__query,  spMedication__security,  spMedication__tag, 
      //  spMedication__text,  spMedication_Code,  spMedication_Container,  spMedication_Form,  spMedication_Ingredient,  spMedication_Manufacturer,  spMedication_Packageitem);
  CODES_TSearchParamsMedicationAdministration : Array[TSearchParamsMedicationAdministration] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'code', 'device', 'effectivetime', 'encounter', 'identifier', 'medication', 'patient', 'practitioner', 'prescription', 'status', 'wasnotgiven');
  DESC_TSearchParamsMedicationAdministration : Array[TSearchParamsMedicationAdministration] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Return administrations of this medication code',
     'Return administrations with this administration device identity',
     'Date administration happened (or did not happen)',
     'Return administrations that share this encounter',
     'Return administrations with this external identifier',
     'Return administrations of this medication resource',
     'The identity of a patient to list administrations  for',
     'Who administered substance',
     'The identity of a prescription to list administrations from',
     'MedicationAdministration event status (for example one of active/paused/completed/nullified)',
     'Administrations that were not made');
//  CHECK_TSearchParamsMedicationAdministration : Array[TSearchParamsMedicationAdministration] of TSearchParamsMedicationAdministration = ( spMedicationAdministration__content,  spMedicationAdministration__id,  spMedicationAdministration__lastUpdated, 
      //  spMedicationAdministration__profile,  spMedicationAdministration__query,  spMedicationAdministration__security,  spMedicationAdministration__tag,  spMedicationAdministration__text,  spMedicationAdministration_Code,  spMedicationAdministration_Device, 
      //  spMedicationAdministration_Effectivetime,  spMedicationAdministration_Encounter,  spMedicationAdministration_Identifier,  spMedicationAdministration_Medication,  spMedicationAdministration_Patient,  spMedicationAdministration_Practitioner,  spMedicationAdministration_Prescription, 
      //  spMedicationAdministration_Status,  spMedicationAdministration_Wasnotgiven);
  CODES_TSearchParamsMedicationDispense : Array[TSearchParamsMedicationDispense] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'code', 'destination', 'dispenser', 'identifier', 'medication', 'patient', 'prescription', 'receiver', 'responsibleparty', 'status', 'type', 'whenhandedover', 'whenprepared');
  DESC_TSearchParamsMedicationDispense : Array[TSearchParamsMedicationDispense] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Return dispenses of this medicine code',
     'Return dispenses that should be sent to a specific destination',
     'Return all dispenses performed by a specific individual',
     'Return dispenses with this external identifier',
     'Return dispenses of this medicine resource',
     'The identity of a patient to list dispenses  for',
     'The identity of a prescription to list dispenses from',
     'Who collected the medication',
     'Return all dispenses with the specified responsible party',
     'Status of the dispense',
     'Return all dispenses of a specific type',
     'Date when medication handed over to patient (outpatient setting), or supplied to ward or clinic (inpatient setting)',
     'Date when medication prepared');
//  CHECK_TSearchParamsMedicationDispense : Array[TSearchParamsMedicationDispense] of TSearchParamsMedicationDispense = ( spMedicationDispense__content,  spMedicationDispense__id,  spMedicationDispense__lastUpdated,  spMedicationDispense__profile,  spMedicationDispense__query, 
      //  spMedicationDispense__security,  spMedicationDispense__tag,  spMedicationDispense__text,  spMedicationDispense_Code,  spMedicationDispense_Destination,  spMedicationDispense_Dispenser,  spMedicationDispense_Identifier,  spMedicationDispense_Medication, 
      //  spMedicationDispense_Patient,  spMedicationDispense_Prescription,  spMedicationDispense_Receiver,  spMedicationDispense_Responsibleparty,  spMedicationDispense_Status,  spMedicationDispense_Type,  spMedicationDispense_Whenhandedover,  spMedicationDispense_Whenprepared);
  CODES_TSearchParamsMedicationOrder : Array[TSearchParamsMedicationOrder] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'code', 'datewritten', 'encounter', 'identifier', 'medication', 'patient', 'prescriber', 'status');
  DESC_TSearchParamsMedicationOrder : Array[TSearchParamsMedicationOrder] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Return administrations of this medication code',
     'Return prescriptions written on this date',
     'Return prescriptions with this encounter identifier',
     'Return prescriptions with this external identifier',
     'Return administrations of this medication reference',
     'The identity of a patient to list orders  for',
     'Who ordered the medication(s)',
     'Status of the prescription');
//  CHECK_TSearchParamsMedicationOrder : Array[TSearchParamsMedicationOrder] of TSearchParamsMedicationOrder = ( spMedicationOrder__content,  spMedicationOrder__id,  spMedicationOrder__lastUpdated,  spMedicationOrder__profile,  spMedicationOrder__query, 
      //  spMedicationOrder__security,  spMedicationOrder__tag,  spMedicationOrder__text,  spMedicationOrder_Code,  spMedicationOrder_Datewritten,  spMedicationOrder_Encounter,  spMedicationOrder_Identifier,  spMedicationOrder_Medication,  spMedicationOrder_Patient, 
      //  spMedicationOrder_Prescriber,  spMedicationOrder_Status);
  CODES_TSearchParamsMedicationStatement : Array[TSearchParamsMedicationStatement] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'code', 'effective', 'identifier', 'medication', 'patient', 'source', 'status');
  DESC_TSearchParamsMedicationStatement : Array[TSearchParamsMedicationStatement] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Return administrations of this medication code',
     'Date when patient was taking (or not taking) the medication',
     'Return statements with this external identifier',
     'Return administrations of this medication reference',
     'The identity of a patient to list statements  for',
     'Who the information in the statement came from',
     'Return statements that match the given status');
//  CHECK_TSearchParamsMedicationStatement : Array[TSearchParamsMedicationStatement] of TSearchParamsMedicationStatement = ( spMedicationStatement__content,  spMedicationStatement__id,  spMedicationStatement__lastUpdated,  spMedicationStatement__profile, 
      //  spMedicationStatement__query,  spMedicationStatement__security,  spMedicationStatement__tag,  spMedicationStatement__text,  spMedicationStatement_Code,  spMedicationStatement_Effective,  spMedicationStatement_Identifier,  spMedicationStatement_Medication, 
      //  spMedicationStatement_Patient,  spMedicationStatement_Source,  spMedicationStatement_Status);
  CODES_TSearchParamsMessageHeader : Array[TSearchParamsMessageHeader] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'author', 'code', 'data', 'destination', 'destination-uri', 'enterer', 'event', 'receiver', 'response-id', 'responsible', 'source', 'source-uri', 'target', 'timestamp');
  DESC_TSearchParamsMessageHeader : Array[TSearchParamsMessageHeader] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'The source of the decision',
     'ok | transient-error | fatal-error',
     'The actual content of the message',
     'Name of system',
     'Actual destination address or id',
     'The source of the data entry',
     'Code for the event this message represents',
     'Intended "real-world" recipient for the data',
     'Id of original message',
     'Final responsibility for event',
     'Name of system',
     'Actual message source address or id',
     'Particular delivery destination within the destination',
     'Time that the message was sent');
//  CHECK_TSearchParamsMessageHeader : Array[TSearchParamsMessageHeader] of TSearchParamsMessageHeader = ( spMessageHeader__content,  spMessageHeader__id,  spMessageHeader__lastUpdated,  spMessageHeader__profile,  spMessageHeader__query,  spMessageHeader__security, 
      //  spMessageHeader__tag,  spMessageHeader__text,  spMessageHeader_Author,  spMessageHeader_Code,  spMessageHeader_Data,  spMessageHeader_Destination,  spMessageHeader_Destinationuri,  spMessageHeader_Enterer,  spMessageHeader_Event,  spMessageHeader_Receiver, 
      //  spMessageHeader_Responseid,  spMessageHeader_Responsible,  spMessageHeader_Source,  spMessageHeader_Sourceuri,  spMessageHeader_Target,  spMessageHeader_Timestamp);
  CODES_TSearchParamsModuleDefinition : Array[TSearchParamsModuleDefinition] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text');
  DESC_TSearchParamsModuleDefinition : Array[TSearchParamsModuleDefinition] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource');
//  CHECK_TSearchParamsModuleDefinition : Array[TSearchParamsModuleDefinition] of TSearchParamsModuleDefinition = ( spModuleDefinition__content,  spModuleDefinition__id,  spModuleDefinition__lastUpdated,  spModuleDefinition__profile,  spModuleDefinition__query, 
      //  spModuleDefinition__security,  spModuleDefinition__tag,  spModuleDefinition__text);
  CODES_TSearchParamsNamingSystem : Array[TSearchParamsNamingSystem] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'contact', 'context', 'date', 'id-type', 'kind', 'name', 'period', 'publisher', 'replaced-by', 'responsible', 'status', 'telecom', 'type', 'value');
  DESC_TSearchParamsNamingSystem : Array[TSearchParamsNamingSystem] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Name of a individual to contact',
     'Content intends to support these contexts',
     'Publication Date(/time)',
     'oid | uuid | uri | other',
     'codesystem | identifier | root',
     'Human-readable label',
     'When is identifier valid?',
     'Name of the publisher (Organization or individual)',
     'Use this instead',
     'Who maintains system namespace?',
     'draft | active | retired',
     'Contact details for individual or publisher',
     'e.g. driver,  provider,  patient, bank etc.',
     'The unique identifier');
//  CHECK_TSearchParamsNamingSystem : Array[TSearchParamsNamingSystem] of TSearchParamsNamingSystem = ( spNamingSystem__content,  spNamingSystem__id,  spNamingSystem__lastUpdated,  spNamingSystem__profile,  spNamingSystem__query,  spNamingSystem__security, 
      //  spNamingSystem__tag,  spNamingSystem__text,  spNamingSystem_Contact,  spNamingSystem_Context,  spNamingSystem_Date,  spNamingSystem_Idtype,  spNamingSystem_Kind,  spNamingSystem_Name,  spNamingSystem_Period,  spNamingSystem_Publisher,  spNamingSystem_Replacedby, 
      //  spNamingSystem_Responsible,  spNamingSystem_Status,  spNamingSystem_Telecom,  spNamingSystem_Type,  spNamingSystem_Value);
  CODES_TSearchParamsNutritionOrder : Array[TSearchParamsNutritionOrder] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'additive', 'datetime', 'encounter', 'formula', 'identifier', 'oraldiet', 'patient', 'provider', 'status', 'supplement');
  DESC_TSearchParamsNutritionOrder : Array[TSearchParamsNutritionOrder] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Type of module component to add to the feeding',
     'Return nutrition orders requested on this date',
     'Return nutrition orders with this encounter identifier',
     'Type of enteral or infant formula',
     'Return nutrition orders with this external identifier',
     'Type of diet that can be consumed orally (i.e., take via the mouth).',
     'The identity of the person who requires the diet, formula or nutritional supplement',
     'The identify of the provider who placed the nutrition order',
     'Status of the nutrition order.',
     'Type of supplement product requested');
//  CHECK_TSearchParamsNutritionOrder : Array[TSearchParamsNutritionOrder] of TSearchParamsNutritionOrder = ( spNutritionOrder__content,  spNutritionOrder__id,  spNutritionOrder__lastUpdated,  spNutritionOrder__profile,  spNutritionOrder__query,  spNutritionOrder__security, 
      //  spNutritionOrder__tag,  spNutritionOrder__text,  spNutritionOrder_Additive,  spNutritionOrder_Datetime,  spNutritionOrder_Encounter,  spNutritionOrder_Formula,  spNutritionOrder_Identifier,  spNutritionOrder_Oraldiet,  spNutritionOrder_Patient,  spNutritionOrder_Provider, 
      //  spNutritionOrder_Status,  spNutritionOrder_Supplement);
  CODES_TSearchParamsObservation : Array[TSearchParamsObservation] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'category', 'code', 'code-value-[x]', 'component-code', 'component-code-value-[x]', 'component-data-absent-reason', 'component-value-concept', 'component-value-quantity', 'component-value-string', 'data-absent-reason', 'date', 'device', 'encounter', 'identifier', 'patient', 'performer', 'related', 'related-target', 'related-type', 'specimen', 'status', 'subject', 'value-concept', 'value-date', 'value-quantity', 'value-string');
  DESC_TSearchParamsObservation : Array[TSearchParamsObservation] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'The classification of the type of observation',
     'The code of the observation type',
     'Both code and one of the value parameters',
     'The component code of the observation type',
     'Both component code and one of the component value parameters',
     'The reason why the expected value in the element Observation.component.value[x] is missing.',
     'The value of the component observation, if the value is a CodeableConcept',
     'The value of the component observation, if the value is a Quantity, or a SampledData (just search on the bounds of the values in sampled data)',
     'The value of the component observation, if the value is a string, and also searches in CodeableConcept.text',
     'The reason why the expected value in the element Observation.value[x] is missing.',
     'Obtained date/time. If the obtained element is a period, a date that falls in the period',
     'The Device that generated the observation data.',
     'Healthcare event related to the observation',
     'The unique id for a particular observation',
     'The subject that the observation is about (if patient)',
     'Who performed the observation',
     'Related Observations - search on related-type and related-target together',
     'Resource that is related to this one',
     'has-member | derived-from | sequel-to | replaces | qualified-by | interfered-by',
     'Specimen used for this observation',
     'The status of the observation',
     'The subject that the observation is about',
     'The value of the observation, if the value is a CodeableConcept',
     'The value of the observation, if the value is a date or period of time',
     'The value of the observation, if the value is a Quantity, or a SampledData (just search on the bounds of the values in sampled data)',
     'The value of the observation, if the value is a string, and also searches in CodeableConcept.text');
//  CHECK_TSearchParamsObservation : Array[TSearchParamsObservation] of TSearchParamsObservation = ( spObservation__content,  spObservation__id,  spObservation__lastUpdated,  spObservation__profile,  spObservation__query,  spObservation__security,  spObservation__tag, 
      //  spObservation__text,  spObservation_Category,  spObservation_Code,  spObservation_Codevaluex,  spObservation_Componentcode,  spObservation_Componentcodevaluex,  spObservation_Componentdataabsentreason,  spObservation_Componentvalueconcept,  spObservation_Componentvaluequantity, 
      //  spObservation_Componentvaluestring,  spObservation_Dataabsentreason,  spObservation_Date,  spObservation_Device,  spObservation_Encounter,  spObservation_Identifier,  spObservation_Patient,  spObservation_Performer,  spObservation_Related,  spObservation_Relatedtarget, 
      //  spObservation_Relatedtype,  spObservation_Specimen,  spObservation_Status,  spObservation_Subject,  spObservation_Valueconcept,  spObservation_Valuedate,  spObservation_Valuequantity,  spObservation_Valuestring);
  CODES_TSearchParamsOperationDefinition : Array[TSearchParamsOperationDefinition] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'base', 'code', 'date', 'instance', 'kind', 'name', 'profile', 'publisher', 'status', 'system', 'type', 'url', 'version');
  DESC_TSearchParamsOperationDefinition : Array[TSearchParamsOperationDefinition] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Marks this as a profile of the base',
     'Name used to invoke the operation',
     'Date for this version of the operation definition',
     'Invoke on an instance?',
     'operation | query',
     'Informal name for this operation',
     'Profile on the type',
     'Name of the publisher (Organization or individual)',
     'draft | active | retired',
     'Invoke at the system level?',
     'Invoke at resource level for these type',
     'Logical URL to reference this operation definition',
     'Logical id for this version of the operation definition');
//  CHECK_TSearchParamsOperationDefinition : Array[TSearchParamsOperationDefinition] of TSearchParamsOperationDefinition = ( spOperationDefinition__content,  spOperationDefinition__id,  spOperationDefinition__lastUpdated,  spOperationDefinition__profile, 
      //  spOperationDefinition__query,  spOperationDefinition__security,  spOperationDefinition__tag,  spOperationDefinition__text,  spOperationDefinition_Base,  spOperationDefinition_Code,  spOperationDefinition_Date,  spOperationDefinition_Instance,  spOperationDefinition_Kind, 
      //  spOperationDefinition_Name,  spOperationDefinition_Profile,  spOperationDefinition_Publisher,  spOperationDefinition_Status,  spOperationDefinition_System,  spOperationDefinition_Type,  spOperationDefinition_Url,  spOperationDefinition_Version);
  CODES_TSearchParamsOperationOutcome : Array[TSearchParamsOperationOutcome] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text');
  DESC_TSearchParamsOperationOutcome : Array[TSearchParamsOperationOutcome] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource');
//  CHECK_TSearchParamsOperationOutcome : Array[TSearchParamsOperationOutcome] of TSearchParamsOperationOutcome = ( spOperationOutcome__content,  spOperationOutcome__id,  spOperationOutcome__lastUpdated,  spOperationOutcome__profile,  spOperationOutcome__query, 
      //  spOperationOutcome__security,  spOperationOutcome__tag,  spOperationOutcome__text);
  CODES_TSearchParamsOrder : Array[TSearchParamsOrder] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'date', 'detail', 'identifier', 'patient', 'source', 'subject', 'target', 'when', 'when_code');
  DESC_TSearchParamsOrder : Array[TSearchParamsOrder] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'When the order was made',
     'What action is being ordered',
     'Instance id from source, target, and/or  others',
     'Patient this order is about',
     'Who initiated the order',
     'Patient this order is about',
     'Who is intended to fulfill the order',
     'A formal schedule',
     'Code specifies when request should be done. The code may simply be a priority code');
//  CHECK_TSearchParamsOrder : Array[TSearchParamsOrder] of TSearchParamsOrder = ( spOrder__content,  spOrder__id,  spOrder__lastUpdated,  spOrder__profile,  spOrder__query,  spOrder__security,  spOrder__tag,  spOrder__text,  spOrder_Date,  spOrder_Detail, 
      //  spOrder_Identifier,  spOrder_Patient,  spOrder_Source,  spOrder_Subject,  spOrder_Target,  spOrder_When,  spOrder_When_code);
  CODES_TSearchParamsOrderResponse : Array[TSearchParamsOrderResponse] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'code', 'date', 'fulfillment', 'identifier', 'request', 'who');
  DESC_TSearchParamsOrderResponse : Array[TSearchParamsOrderResponse] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'pending | review | rejected | error | accepted | cancelled | replaced | aborted | completed',
     'When the response was made',
     'Details of the outcome of performing the order',
     'Identifiers assigned to this order by the orderer or by the receiver',
     'The order that this is a response to',
     'Who made the response');
//  CHECK_TSearchParamsOrderResponse : Array[TSearchParamsOrderResponse] of TSearchParamsOrderResponse = ( spOrderResponse__content,  spOrderResponse__id,  spOrderResponse__lastUpdated,  spOrderResponse__profile,  spOrderResponse__query,  spOrderResponse__security, 
      //  spOrderResponse__tag,  spOrderResponse__text,  spOrderResponse_Code,  spOrderResponse_Date,  spOrderResponse_Fulfillment,  spOrderResponse_Identifier,  spOrderResponse_Request,  spOrderResponse_Who);
  CODES_TSearchParamsOrderSet : Array[TSearchParamsOrderSet] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text');
  DESC_TSearchParamsOrderSet : Array[TSearchParamsOrderSet] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource');
//  CHECK_TSearchParamsOrderSet : Array[TSearchParamsOrderSet] of TSearchParamsOrderSet = ( spOrderSet__content,  spOrderSet__id,  spOrderSet__lastUpdated,  spOrderSet__profile,  spOrderSet__query,  spOrderSet__security,  spOrderSet__tag,  spOrderSet__text);
  CODES_TSearchParamsOrganization : Array[TSearchParamsOrganization] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'active', 'address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'identifier', 'name', 'partof', 'phonetic', 'type');
  DESC_TSearchParamsOrganization : Array[TSearchParamsOrganization] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Whether the organization''s record is active',
     'A (part of the) address of the Organization',
     'A city specified in an address',
     'A country specified in an address',
     'A postal code specified in an address',
     'A state specified in an address',
     'A use code specified in an address',
     'Any identifier for the organization (not the accreditation issuer''s identifier)',
     'A portion of the organization''s name',
     'Search all organizations that are part of the given organization',
     'A portion of the organization''s name using some kind of phonetic matching algorithm',
     'A code for the type of organization');
//  CHECK_TSearchParamsOrganization : Array[TSearchParamsOrganization] of TSearchParamsOrganization = ( spOrganization__content,  spOrganization__id,  spOrganization__lastUpdated,  spOrganization__profile,  spOrganization__query,  spOrganization__security, 
      //  spOrganization__tag,  spOrganization__text,  spOrganization_Active,  spOrganization_Address,  spOrganization_Addresscity,  spOrganization_Addresscountry,  spOrganization_Addresspostalcode,  spOrganization_Addressstate,  spOrganization_Addressuse,  spOrganization_Identifier, 
      //  spOrganization_Name,  spOrganization_Partof,  spOrganization_Phonetic,  spOrganization_Type);
  CODES_TSearchParamsPatient : Array[TSearchParamsPatient] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'active', 'address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'animal-breed', 'animal-species', 'birthdate', 'careprovider', 'deathdate', 'deceased', 'email', 'ethnicity', 'family', 'gender', 'given', 'identifier', 'language', 'link', 'name', 'organization', 'phone', 'phonetic', 'race', 'telecom');
  DESC_TSearchParamsPatient : Array[TSearchParamsPatient] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Whether the patient record is active',
     'An address in any kind of address/part of the patient',
     'A city specified in an address',
     'A country specified in an address',
     'A postalCode specified in an address',
     'A state specified in an address',
     'A use code specified in an address',
     'The breed for animal patients',
     'The species for animal patients',
     'The patient''s date of birth',
     'Patient''s nominated care provider, could be a care manager, not the organization that manages the record',
     'The date of death has been provided and satisfies this search value',
     'This patient has been marked as deceased, or as a death date entered',
     'A value in an email contact',
     'Returns patients with an ethnicity extension matching the specified code.',
     'A portion of the family name of the patient',
     'Gender of the patient',
     'A portion of the given name of the patient',
     'A patient identifier',
     'Language code (irrespective of use value)',
     'All patients linked to the given patient',
     'A portion of either family or given name of the patient',
     'The organization at which this person is a patient',
     'A value in a phone contact',
     'A portion of either family or given name using some kind of phonetic matching algorithm',
     'Returns patients with a race extension matching the specified code.',
     'The value in any kind of telecom details of the patient');
//  CHECK_TSearchParamsPatient : Array[TSearchParamsPatient] of TSearchParamsPatient = ( spPatient__content,  spPatient__id,  spPatient__lastUpdated,  spPatient__profile,  spPatient__query,  spPatient__security,  spPatient__tag,  spPatient__text,  spPatient_Active, 
      //  spPatient_Address,  spPatient_Addresscity,  spPatient_Addresscountry,  spPatient_Addresspostalcode,  spPatient_Addressstate,  spPatient_Addressuse,  spPatient_Animalbreed,  spPatient_Animalspecies,  spPatient_Birthdate,  spPatient_Careprovider,  spPatient_Deathdate, 
      //  spPatient_Deceased,  spPatient_Email,  spPatient_Ethnicity,  spPatient_Family,  spPatient_Gender,  spPatient_Given,  spPatient_Identifier,  spPatient_Language,  spPatient_Link,  spPatient_Name,  spPatient_Organization,  spPatient_Phone,  spPatient_Phonetic, 
      //  spPatient_Race,  spPatient_Telecom);
  CODES_TSearchParamsPaymentNotice : Array[TSearchParamsPaymentNotice] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'created', 'identifier', 'organization', 'paymentstatus', 'provider', 'request', 'response', 'statusdate');
  DESC_TSearchParamsPaymentNotice : Array[TSearchParamsPaymentNotice] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Creation date fro the notice',
     'The business identifier of the notice',
     'The organization who generated this resource',
     'The type of payment notice',
     'The reference to the provider',
     'The Claim',
     'The ClaimResponse',
     'The date of the payment action');
//  CHECK_TSearchParamsPaymentNotice : Array[TSearchParamsPaymentNotice] of TSearchParamsPaymentNotice = ( spPaymentNotice__content,  spPaymentNotice__id,  spPaymentNotice__lastUpdated,  spPaymentNotice__profile,  spPaymentNotice__query,  spPaymentNotice__security, 
      //  spPaymentNotice__tag,  spPaymentNotice__text,  spPaymentNotice_Created,  spPaymentNotice_Identifier,  spPaymentNotice_Organization,  spPaymentNotice_Paymentstatus,  spPaymentNotice_Provider,  spPaymentNotice_Request,  spPaymentNotice_Response,  spPaymentNotice_Statusdate);
  CODES_TSearchParamsPaymentReconciliation : Array[TSearchParamsPaymentReconciliation] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'created', 'disposition', 'identifier', 'organization', 'outcome', 'request', 'requestorganization', 'requestprovider');
  DESC_TSearchParamsPaymentReconciliation : Array[TSearchParamsPaymentReconciliation] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'The creation date',
     'The contents of the disposition message',
     'The business identifier of the Explanation of Benefit',
     'The organization who generated this resource',
     'The processing outcome',
     'The reference to the claim',
     'The organization who generated this resource',
     'The reference to the provider who sumbitted the claim');
//  CHECK_TSearchParamsPaymentReconciliation : Array[TSearchParamsPaymentReconciliation] of TSearchParamsPaymentReconciliation = ( spPaymentReconciliation__content,  spPaymentReconciliation__id,  spPaymentReconciliation__lastUpdated,  spPaymentReconciliation__profile, 
      //  spPaymentReconciliation__query,  spPaymentReconciliation__security,  spPaymentReconciliation__tag,  spPaymentReconciliation__text,  spPaymentReconciliation_Created,  spPaymentReconciliation_Disposition,  spPaymentReconciliation_Identifier,  spPaymentReconciliation_Organization, 
      //  spPaymentReconciliation_Outcome,  spPaymentReconciliation_Request,  spPaymentReconciliation_Requestorganization,  spPaymentReconciliation_Requestprovider);
  CODES_TSearchParamsPerson : Array[TSearchParamsPerson] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'birthdate', 'email', 'gender', 'identifier', 'link', 'name', 'organization', 'patient', 'phone', 'phonetic', 'practitioner', 'relatedperson', 'telecom');
  DESC_TSearchParamsPerson : Array[TSearchParamsPerson] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'An address in any kind of address/part',
     'A city specified in an address',
     'A country specified in an address',
     'A postal code specified in an address',
     'A state specified in an address',
     'A use code specified in an address',
     'The person''s date of birth',
     'A value in an email contact',
     'The gender of the person',
     'A person Identifier',
     'Any link has this Patient, Person, RelatedPerson or Practitioner reference',
     'A portion of name in any name part',
     'The organization at which this person record is being managed',
     'The Person links to this Patient',
     'A value in a phone contact',
     'A portion of name using some kind of phonetic matching algorithm',
     'The Person links to this Practitioner',
     'The Person links to this RelatedPerson',
     'The value in any kind of contact');
//  CHECK_TSearchParamsPerson : Array[TSearchParamsPerson] of TSearchParamsPerson = ( spPerson__content,  spPerson__id,  spPerson__lastUpdated,  spPerson__profile,  spPerson__query,  spPerson__security,  spPerson__tag,  spPerson__text,  spPerson_Address, 
      //  spPerson_Addresscity,  spPerson_Addresscountry,  spPerson_Addresspostalcode,  spPerson_Addressstate,  spPerson_Addressuse,  spPerson_Birthdate,  spPerson_Email,  spPerson_Gender,  spPerson_Identifier,  spPerson_Link,  spPerson_Name,  spPerson_Organization, 
      //  spPerson_Patient,  spPerson_Phone,  spPerson_Phonetic,  spPerson_Practitioner,  spPerson_Relatedperson,  spPerson_Telecom);
  CODES_TSearchParamsPractitioner : Array[TSearchParamsPractitioner] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'communication', 'email', 'family', 'gender', 'given', 'identifier', 'location', 'name', 'organization', 'phone', 'phonetic', 'role', 'specialty', 'telecom');
  DESC_TSearchParamsPractitioner : Array[TSearchParamsPractitioner] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'An address in any kind of address/part',
     'A city specified in an address',
     'A country specified in an address',
     'A postalCode specified in an address',
     'A state specified in an address',
     'A use code specified in an address',
     'One of the languages that the practitioner can communicate with',
     'A value in an email contact',
     'A portion of the family name',
     'Gender of the practitioner',
     'A portion of the given name',
     'A practitioner''s Identifier',
     'One of the locations at which this practitioner provides care',
     'A portion of either family or given name',
     'The identity of the organization the practitioner represents / acts on behalf of',
     'A value in a phone contact',
     'A portion of either family or given name using some kind of phonetic matching algorithm',
     'The practitioner can perform this role at for the organization',
     'The practitioner has this specialty at an organization',
     'The value in any kind of contact');
//  CHECK_TSearchParamsPractitioner : Array[TSearchParamsPractitioner] of TSearchParamsPractitioner = ( spPractitioner__content,  spPractitioner__id,  spPractitioner__lastUpdated,  spPractitioner__profile,  spPractitioner__query,  spPractitioner__security, 
      //  spPractitioner__tag,  spPractitioner__text,  spPractitioner_Address,  spPractitioner_Addresscity,  spPractitioner_Addresscountry,  spPractitioner_Addresspostalcode,  spPractitioner_Addressstate,  spPractitioner_Addressuse,  spPractitioner_Communication, 
      //  spPractitioner_Email,  spPractitioner_Family,  spPractitioner_Gender,  spPractitioner_Given,  spPractitioner_Identifier,  spPractitioner_Location,  spPractitioner_Name,  spPractitioner_Organization,  spPractitioner_Phone,  spPractitioner_Phonetic,  spPractitioner_Role, 
      //  spPractitioner_Specialty,  spPractitioner_Telecom);
  CODES_TSearchParamsProcedure : Array[TSearchParamsProcedure] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'code', 'date', 'encounter', 'identifier', 'location', 'patient', 'performer', 'subject');
  DESC_TSearchParamsProcedure : Array[TSearchParamsProcedure] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'A code to identify a  procedure',
     'Date/Period the procedure was performed',
     'The encounter associated with the procedure',
     'A unique identifier for a procedure',
     'Where the procedure happened',
     'Search by subject - a patient',
     'The reference to the practitioner',
     'Search by subject');
//  CHECK_TSearchParamsProcedure : Array[TSearchParamsProcedure] of TSearchParamsProcedure = ( spProcedure__content,  spProcedure__id,  spProcedure__lastUpdated,  spProcedure__profile,  spProcedure__query,  spProcedure__security,  spProcedure__tag,  spProcedure__text, 
      //  spProcedure_Code,  spProcedure_Date,  spProcedure_Encounter,  spProcedure_Identifier,  spProcedure_Location,  spProcedure_Patient,  spProcedure_Performer,  spProcedure_Subject);
  CODES_TSearchParamsProcedureRequest : Array[TSearchParamsProcedureRequest] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'encounter', 'identifier', 'orderer', 'patient', 'performer', 'subject');
  DESC_TSearchParamsProcedureRequest : Array[TSearchParamsProcedureRequest] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Encounter request created during',
     'A unique identifier of the Procedure Request',
     'Who made request',
     'Search by subject - a patient',
     'Who should perform the procedure',
     'Search by subject');
//  CHECK_TSearchParamsProcedureRequest : Array[TSearchParamsProcedureRequest] of TSearchParamsProcedureRequest = ( spProcedureRequest__content,  spProcedureRequest__id,  spProcedureRequest__lastUpdated,  spProcedureRequest__profile,  spProcedureRequest__query, 
      //  spProcedureRequest__security,  spProcedureRequest__tag,  spProcedureRequest__text,  spProcedureRequest_Encounter,  spProcedureRequest_Identifier,  spProcedureRequest_Orderer,  spProcedureRequest_Patient,  spProcedureRequest_Performer,  spProcedureRequest_Subject);
  CODES_TSearchParamsProcessRequest : Array[TSearchParamsProcessRequest] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'action', 'identifier', 'organization', 'provider');
  DESC_TSearchParamsProcessRequest : Array[TSearchParamsProcessRequest] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'The action requested by this resource',
     'The business identifier of the ProcessRequest',
     'The organization who generated this request',
     'The provider who regenerated this request');
//  CHECK_TSearchParamsProcessRequest : Array[TSearchParamsProcessRequest] of TSearchParamsProcessRequest = ( spProcessRequest__content,  spProcessRequest__id,  spProcessRequest__lastUpdated,  spProcessRequest__profile,  spProcessRequest__query,  spProcessRequest__security, 
      //  spProcessRequest__tag,  spProcessRequest__text,  spProcessRequest_Action,  spProcessRequest_Identifier,  spProcessRequest_Organization,  spProcessRequest_Provider);
  CODES_TSearchParamsProcessResponse : Array[TSearchParamsProcessResponse] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'identifier', 'organization', 'request', 'requestorganization', 'requestprovider');
  DESC_TSearchParamsProcessResponse : Array[TSearchParamsProcessResponse] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'The business identifier of the Explanation of Benefit',
     'The organization who generated this resource',
     'The reference to the claim',
     'The Organization who is responsible the request transaction',
     'The Provider who is responsible the request transaction');
//  CHECK_TSearchParamsProcessResponse : Array[TSearchParamsProcessResponse] of TSearchParamsProcessResponse = ( spProcessResponse__content,  spProcessResponse__id,  spProcessResponse__lastUpdated,  spProcessResponse__profile,  spProcessResponse__query, 
      //  spProcessResponse__security,  spProcessResponse__tag,  spProcessResponse__text,  spProcessResponse_Identifier,  spProcessResponse_Organization,  spProcessResponse_Request,  spProcessResponse_Requestorganization,  spProcessResponse_Requestprovider);
  CODES_TSearchParamsProtocol : Array[TSearchParamsProtocol] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'identifier', 'subject');
  DESC_TSearchParamsProtocol : Array[TSearchParamsProtocol] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'The unique id for a particular protocol',
     'Protocols with specified subject');
//  CHECK_TSearchParamsProtocol : Array[TSearchParamsProtocol] of TSearchParamsProtocol = ( spProtocol__content,  spProtocol__id,  spProtocol__lastUpdated,  spProtocol__profile,  spProtocol__query,  spProtocol__security,  spProtocol__tag,  spProtocol__text, 
      //  spProtocol_Identifier,  spProtocol_Subject);
  CODES_TSearchParamsProvenance : Array[TSearchParamsProvenance] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'agent', 'end', 'entity', 'entity-type', 'location', 'patient', 'sig', 'start', 'target', 'userid');
  DESC_TSearchParamsProvenance : Array[TSearchParamsProvenance] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Individual, device or organization playing role',
     'End time with inclusive boundary, if not ongoing',
     'Identity of entity',
     'The type of resource in this entity',
     'Where the activity occurred, if relevant',
     'Target Reference(s) (usually version specific)',
     'Indication of the reason the entity signed the object(s)',
     'Starting time with inclusive boundary',
     'Target Reference(s) (usually version specific)',
     'Authorization-system identifier for the agent');
//  CHECK_TSearchParamsProvenance : Array[TSearchParamsProvenance] of TSearchParamsProvenance = ( spProvenance__content,  spProvenance__id,  spProvenance__lastUpdated,  spProvenance__profile,  spProvenance__query,  spProvenance__security,  spProvenance__tag, 
      //  spProvenance__text,  spProvenance_Agent,  spProvenance_End,  spProvenance_Entity,  spProvenance_Entitytype,  spProvenance_Location,  spProvenance_Patient,  spProvenance_Sig,  spProvenance_Start,  spProvenance_Target,  spProvenance_Userid);
  CODES_TSearchParamsQuestionnaire : Array[TSearchParamsQuestionnaire] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'code', 'date', 'identifier', 'publisher', 'status', 'title', 'version');
  DESC_TSearchParamsQuestionnaire : Array[TSearchParamsQuestionnaire] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'A code that corresponds to the questionnaire or one of its groups',
     'When the questionnaire was last changed',
     'An identifier for the questionnaire',
     'The author of the questionnaire',
     'The status of the questionnaire',
     'All or part of the name of the questionnaire',
     'The business version of the questionnaire');
//  CHECK_TSearchParamsQuestionnaire : Array[TSearchParamsQuestionnaire] of TSearchParamsQuestionnaire = ( spQuestionnaire__content,  spQuestionnaire__id,  spQuestionnaire__lastUpdated,  spQuestionnaire__profile,  spQuestionnaire__query,  spQuestionnaire__security, 
      //  spQuestionnaire__tag,  spQuestionnaire__text,  spQuestionnaire_Code,  spQuestionnaire_Date,  spQuestionnaire_Identifier,  spQuestionnaire_Publisher,  spQuestionnaire_Status,  spQuestionnaire_Title,  spQuestionnaire_Version);
  CODES_TSearchParamsQuestionnaireResponse : Array[TSearchParamsQuestionnaireResponse] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'author', 'authored', 'encounter', 'patient', 'questionnaire', 'source', 'status', 'subject');
  DESC_TSearchParamsQuestionnaireResponse : Array[TSearchParamsQuestionnaireResponse] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'The author of the questionnaire',
     'When the questionnaire was authored',
     'Encounter during which questionnaire was authored',
     'The patient that is the subject of the questionnaire',
     'The questionnaire the answers are provided for',
     'The person who answered the questions',
     'The status of the questionnaire response',
     'The subject of the questionnaire');
//  CHECK_TSearchParamsQuestionnaireResponse : Array[TSearchParamsQuestionnaireResponse] of TSearchParamsQuestionnaireResponse = ( spQuestionnaireResponse__content,  spQuestionnaireResponse__id,  spQuestionnaireResponse__lastUpdated,  spQuestionnaireResponse__profile, 
      //  spQuestionnaireResponse__query,  spQuestionnaireResponse__security,  spQuestionnaireResponse__tag,  spQuestionnaireResponse__text,  spQuestionnaireResponse_Author,  spQuestionnaireResponse_Authored,  spQuestionnaireResponse_Encounter,  spQuestionnaireResponse_Patient, 
      //  spQuestionnaireResponse_Questionnaire,  spQuestionnaireResponse_Source,  spQuestionnaireResponse_Status,  spQuestionnaireResponse_Subject);
  CODES_TSearchParamsReferralRequest : Array[TSearchParamsReferralRequest] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'date', 'patient', 'priority', 'recipient', 'requester', 'specialty', 'status', 'type');
  DESC_TSearchParamsReferralRequest : Array[TSearchParamsReferralRequest] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Creation or activation date',
     'Who the referral is about',
     'The priority assigned to the referral',
     'The person that the referral was sent to',
     'Requester of referral / transfer of care',
     'The specialty that the referral is for',
     'The status of the referral',
     'The type of the referral');
//  CHECK_TSearchParamsReferralRequest : Array[TSearchParamsReferralRequest] of TSearchParamsReferralRequest = ( spReferralRequest__content,  spReferralRequest__id,  spReferralRequest__lastUpdated,  spReferralRequest__profile,  spReferralRequest__query, 
      //  spReferralRequest__security,  spReferralRequest__tag,  spReferralRequest__text,  spReferralRequest_Date,  spReferralRequest_Patient,  spReferralRequest_Priority,  spReferralRequest_Recipient,  spReferralRequest_Requester,  spReferralRequest_Specialty, 
      //  spReferralRequest_Status,  spReferralRequest_Type);
  CODES_TSearchParamsRelatedPerson : Array[TSearchParamsRelatedPerson] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'birthdate', 'email', 'gender', 'identifier', 'name', 'patient', 'phone', 'phonetic', 'telecom');
  DESC_TSearchParamsRelatedPerson : Array[TSearchParamsRelatedPerson] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'An address in any kind of address/part',
     'A city specified in an address',
     'A country specified in an address',
     'A postal code specified in an address',
     'A state specified in an address',
     'A use code specified in an address',
     'The Related Person''s date of birth',
     'A value in an email contact',
     'Gender of the person',
     'A patient Identifier',
     'A portion of name in any name part',
     'The patient this person is related to',
     'A value in a phone contact',
     'A portion of name using some kind of phonetic matching algorithm',
     'The value in any kind of contact');
//  CHECK_TSearchParamsRelatedPerson : Array[TSearchParamsRelatedPerson] of TSearchParamsRelatedPerson = ( spRelatedPerson__content,  spRelatedPerson__id,  spRelatedPerson__lastUpdated,  spRelatedPerson__profile,  spRelatedPerson__query,  spRelatedPerson__security, 
      //  spRelatedPerson__tag,  spRelatedPerson__text,  spRelatedPerson_Address,  spRelatedPerson_Addresscity,  spRelatedPerson_Addresscountry,  spRelatedPerson_Addresspostalcode,  spRelatedPerson_Addressstate,  spRelatedPerson_Addressuse,  spRelatedPerson_Birthdate, 
      //  spRelatedPerson_Email,  spRelatedPerson_Gender,  spRelatedPerson_Identifier,  spRelatedPerson_Name,  spRelatedPerson_Patient,  spRelatedPerson_Phone,  spRelatedPerson_Phonetic,  spRelatedPerson_Telecom);
  CODES_TSearchParamsRiskAssessment : Array[TSearchParamsRiskAssessment] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'condition', 'date', 'encounter', 'identifier', 'method', 'patient', 'performer', 'subject');
  DESC_TSearchParamsRiskAssessment : Array[TSearchParamsRiskAssessment] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Condition assessed',
     'When was assessment made?',
     'Where was assessment performed?',
     'Unique identifier for the assessment',
     'Evaluation mechanism',
     'Who/what does assessment apply to?',
     'Who did assessment?',
     'Who/what does assessment apply to?');
//  CHECK_TSearchParamsRiskAssessment : Array[TSearchParamsRiskAssessment] of TSearchParamsRiskAssessment = ( spRiskAssessment__content,  spRiskAssessment__id,  spRiskAssessment__lastUpdated,  spRiskAssessment__profile,  spRiskAssessment__query,  spRiskAssessment__security, 
      //  spRiskAssessment__tag,  spRiskAssessment__text,  spRiskAssessment_Condition,  spRiskAssessment_Date,  spRiskAssessment_Encounter,  spRiskAssessment_Identifier,  spRiskAssessment_Method,  spRiskAssessment_Patient,  spRiskAssessment_Performer,  spRiskAssessment_Subject);
  CODES_TSearchParamsSchedule : Array[TSearchParamsSchedule] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'actor', 'date', 'identifier', 'type');
  DESC_TSearchParamsSchedule : Array[TSearchParamsSchedule] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'The individual(HealthcareService, Practitioner, Location, ...) to find a Schedule for',
     'Search for Schedule resources that have a period that contains this date specified',
     'A Schedule Identifier',
     'The type of appointments that can be booked into associated slot(s)');
//  CHECK_TSearchParamsSchedule : Array[TSearchParamsSchedule] of TSearchParamsSchedule = ( spSchedule__content,  spSchedule__id,  spSchedule__lastUpdated,  spSchedule__profile,  spSchedule__query,  spSchedule__security,  spSchedule__tag,  spSchedule__text, 
      //  spSchedule_Actor,  spSchedule_Date,  spSchedule_Identifier,  spSchedule_Type);
  CODES_TSearchParamsSearchParameter : Array[TSearchParamsSearchParameter] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'base', 'code', 'description', 'name', 'target', 'type', 'url');
  DESC_TSearchParamsSearchParameter : Array[TSearchParamsSearchParameter] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'The resource type this search parameter applies to',
     'Code used in URL',
     'Documentation for  search parameter',
     'Informal name for this search parameter',
     'Types of resource (if a resource reference)',
     'number | date | string | token | reference | composite | quantity | uri',
     'Absolute URL used to reference this search parameter');
//  CHECK_TSearchParamsSearchParameter : Array[TSearchParamsSearchParameter] of TSearchParamsSearchParameter = ( spSearchParameter__content,  spSearchParameter__id,  spSearchParameter__lastUpdated,  spSearchParameter__profile,  spSearchParameter__query, 
      //  spSearchParameter__security,  spSearchParameter__tag,  spSearchParameter__text,  spSearchParameter_Base,  spSearchParameter_Code,  spSearchParameter_Description,  spSearchParameter_Name,  spSearchParameter_Target,  spSearchParameter_Type,  spSearchParameter_Url);
  CODES_TSearchParamsSequence : Array[TSearchParamsSequence] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'chromosome', 'coordinate', 'end', 'species', 'start', 'type', 'variationid');
  DESC_TSearchParamsSequence : Array[TSearchParamsSequence] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Chromosome of the sequence',
     'Genomic coordinate of the sequence. For example, a search for sequence in region 1:123-345 can be represented as `coordinate=1$lt345$gt123`',
     'End position (0-based exclusive) of the sequence',
     'The organism from which sample of the sequence was extracted.',
     'Start position (0-based inclusive) of the sequence',
     'The type of the variant: Amino acid / cDNA transcript / RNA variation.',
     'Identifier for variant');
//  CHECK_TSearchParamsSequence : Array[TSearchParamsSequence] of TSearchParamsSequence = ( spSequence__content,  spSequence__id,  spSequence__lastUpdated,  spSequence__profile,  spSequence__query,  spSequence__security,  spSequence__tag,  spSequence__text, 
      //  spSequence_Chromosome,  spSequence_Coordinate,  spSequence_End,  spSequence_Species,  spSequence_Start,  spSequence_Type,  spSequence_Variationid);
  CODES_TSearchParamsSlot : Array[TSearchParamsSlot] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'fb-type', 'identifier', 'schedule', 'slot-type', 'start');
  DESC_TSearchParamsSlot : Array[TSearchParamsSlot] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'The free/busy status of the appointment',
     'A Slot Identifier',
     'The Schedule Resource that we are seeking a slot within',
     'The type of appointments that can be booked into the slot',
     'Appointment date/time.');
//  CHECK_TSearchParamsSlot : Array[TSearchParamsSlot] of TSearchParamsSlot = ( spSlot__content,  spSlot__id,  spSlot__lastUpdated,  spSlot__profile,  spSlot__query,  spSlot__security,  spSlot__tag,  spSlot__text,  spSlot_Fbtype,  spSlot_Identifier,  spSlot_Schedule, 
      //  spSlot_Slottype,  spSlot_Start);
  CODES_TSearchParamsSpecimen : Array[TSearchParamsSpecimen] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'accession', 'bodysite', 'collected', 'collector', 'container', 'container-id', 'identifier', 'parent', 'patient', 'subject', 'type');
  DESC_TSearchParamsSpecimen : Array[TSearchParamsSpecimen] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'The accession number associated with the specimen',
     'The code for the body site from where the specimen originated',
     'The date the specimen was collected',
     'Who collected the specimen',
     'The kind of specimen container',
     'The unique identifier associated with the specimen container',
     'The unique identifier associated with the specimen',
     'The parent of the specimen',
     'The patient the specimen comes from',
     'The subject of the specimen',
     'The specimen type');
//  CHECK_TSearchParamsSpecimen : Array[TSearchParamsSpecimen] of TSearchParamsSpecimen = ( spSpecimen__content,  spSpecimen__id,  spSpecimen__lastUpdated,  spSpecimen__profile,  spSpecimen__query,  spSpecimen__security,  spSpecimen__tag,  spSpecimen__text, 
      //  spSpecimen_Accession,  spSpecimen_Bodysite,  spSpecimen_Collected,  spSpecimen_Collector,  spSpecimen_Container,  spSpecimen_Containerid,  spSpecimen_Identifier,  spSpecimen_Parent,  spSpecimen_Patient,  spSpecimen_Subject,  spSpecimen_Type);
  CODES_TSearchParamsStructureDefinition : Array[TSearchParamsStructureDefinition] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'abstract', 'base', 'base-path', 'code', 'context', 'context-type', 'date', 'description', 'display', 'experimental', 'ext-context', 'identifier', 'kind', 'name', 'path', 'publisher', 'status', 'type', 'url', 'valueset', 'version');
  DESC_TSearchParamsStructureDefinition : Array[TSearchParamsStructureDefinition] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Whether the structure is abstract',
     'Structure that this set of constraints applies to',
     'Path that identifies the base element',
     'A code for the profile',
     'A use context assigned to the structure',
     'resource | datatype | mapping | extension',
     'The profile publication date',
     'Text search in the description of the profile',
     'Use this name when displaying the value',
     'If for testing purposes, not real usage',
     'Where the extension can be used in instances',
     'The identifier of the profile',
     'datatype | resource | logical',
     'Name of the profile',
     'A path that is constrained in the profile',
     'Name of the publisher of the profile',
     'The current status of the profile',
     'Any datatype or resource, including abstract ones',
     'Absolute URL used to reference this StructureDefinition',
     'A vocabulary binding reference',
     'The version identifier of the profile');
//  CHECK_TSearchParamsStructureDefinition : Array[TSearchParamsStructureDefinition] of TSearchParamsStructureDefinition = ( spStructureDefinition__content,  spStructureDefinition__id,  spStructureDefinition__lastUpdated,  spStructureDefinition__profile, 
      //  spStructureDefinition__query,  spStructureDefinition__security,  spStructureDefinition__tag,  spStructureDefinition__text,  spStructureDefinition_Abstract,  spStructureDefinition_Base,  spStructureDefinition_Basepath,  spStructureDefinition_Code,  spStructureDefinition_Context, 
      //  spStructureDefinition_Contexttype,  spStructureDefinition_Date,  spStructureDefinition_Description,  spStructureDefinition_Display,  spStructureDefinition_Experimental,  spStructureDefinition_Extcontext,  spStructureDefinition_Identifier,  spStructureDefinition_Kind, 
      //  spStructureDefinition_Name,  spStructureDefinition_Path,  spStructureDefinition_Publisher,  spStructureDefinition_Status,  spStructureDefinition_Type,  spStructureDefinition_Url,  spStructureDefinition_Valueset,  spStructureDefinition_Version);
  CODES_TSearchParamsStructureMap : Array[TSearchParamsStructureMap] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'context', 'date', 'description', 'experimental', 'identifier', 'name', 'publisher', 'status', 'url', 'version');
  DESC_TSearchParamsStructureMap : Array[TSearchParamsStructureMap] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'A use context assigned to the structure',
     'The profile publication date',
     'Text search in the description of the profile',
     'Whether the map is defined purely for experimental reasons',
     'The identifier of the profile',
     'Name of the profile',
     'Name of the publisher of the profile',
     'The current status of the profile',
     'The url that identifies the structure map',
     'The version identifier of the profile');
//  CHECK_TSearchParamsStructureMap : Array[TSearchParamsStructureMap] of TSearchParamsStructureMap = ( spStructureMap__content,  spStructureMap__id,  spStructureMap__lastUpdated,  spStructureMap__profile,  spStructureMap__query,  spStructureMap__security, 
      //  spStructureMap__tag,  spStructureMap__text,  spStructureMap_Context,  spStructureMap_Date,  spStructureMap_Description,  spStructureMap_Experimental,  spStructureMap_Identifier,  spStructureMap_Name,  spStructureMap_Publisher,  spStructureMap_Status, 
      //  spStructureMap_Url,  spStructureMap_Version);
  CODES_TSearchParamsSubscription : Array[TSearchParamsSubscription] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'contact', 'criteria', 'payload', 'status', 'tag', 'type', 'url');
  DESC_TSearchParamsSubscription : Array[TSearchParamsSubscription] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Contact details for source (e.g. troubleshooting)',
     'Rule for server push criteria',
     'Mimetype to send, or blank for no payload',
     'requested | active | error | off',
     'A tag to add to matching resources',
     'rest-hook | websocket | email | sms | message',
     'Where the channel points to');
//  CHECK_TSearchParamsSubscription : Array[TSearchParamsSubscription] of TSearchParamsSubscription = ( spSubscription__content,  spSubscription__id,  spSubscription__lastUpdated,  spSubscription__profile,  spSubscription__query,  spSubscription__security, 
      //  spSubscription__tag,  spSubscription__text,  spSubscription_Contact,  spSubscription_Criteria,  spSubscription_Payload,  spSubscription_Status,  spSubscription_Tag,  spSubscription_Type,  spSubscription_Url);
  CODES_TSearchParamsSubstance : Array[TSearchParamsSubstance] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'category', 'code', 'container-identifier', 'expiry', 'identifier', 'quantity', 'substance');
  DESC_TSearchParamsSubstance : Array[TSearchParamsSubstance] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'The category of the substance',
     'The code of the substance',
     'Identifier of the package/container',
     'Expiry date of package or container of substance',
     'Unique identifier for the substance',
     'Amount of substance in the package',
     'A component of the substance');
//  CHECK_TSearchParamsSubstance : Array[TSearchParamsSubstance] of TSearchParamsSubstance = ( spSubstance__content,  spSubstance__id,  spSubstance__lastUpdated,  spSubstance__profile,  spSubstance__query,  spSubstance__security,  spSubstance__tag,  spSubstance__text, 
      //  spSubstance_Category,  spSubstance_Code,  spSubstance_Containeridentifier,  spSubstance_Expiry,  spSubstance_Identifier,  spSubstance_Quantity,  spSubstance_Substance);
  CODES_TSearchParamsSupplyDelivery : Array[TSearchParamsSupplyDelivery] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'identifier', 'patient', 'receiver', 'status', 'supplier');
  DESC_TSearchParamsSupplyDelivery : Array[TSearchParamsSupplyDelivery] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'External identifier',
     'Patient for whom the item is supplied',
     'Who collected the Supply',
     'in-progress | completed | abandoned',
     'Dispenser');
//  CHECK_TSearchParamsSupplyDelivery : Array[TSearchParamsSupplyDelivery] of TSearchParamsSupplyDelivery = ( spSupplyDelivery__content,  spSupplyDelivery__id,  spSupplyDelivery__lastUpdated,  spSupplyDelivery__profile,  spSupplyDelivery__query,  spSupplyDelivery__security, 
      //  spSupplyDelivery__tag,  spSupplyDelivery__text,  spSupplyDelivery_Identifier,  spSupplyDelivery_Patient,  spSupplyDelivery_Receiver,  spSupplyDelivery_Status,  spSupplyDelivery_Supplier);
  CODES_TSearchParamsSupplyRequest : Array[TSearchParamsSupplyRequest] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'date', 'identifier', 'kind', 'patient', 'source', 'status', 'supplier');
  DESC_TSearchParamsSupplyRequest : Array[TSearchParamsSupplyRequest] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'When the request was made',
     'Unique identifier',
     'The kind of supply (central, non-stock, etc.)',
     'Patient for whom the item is supplied',
     'Who initiated this order',
     'requested | completed | failed | cancelled',
     'Who is intended to fulfill the request');
//  CHECK_TSearchParamsSupplyRequest : Array[TSearchParamsSupplyRequest] of TSearchParamsSupplyRequest = ( spSupplyRequest__content,  spSupplyRequest__id,  spSupplyRequest__lastUpdated,  spSupplyRequest__profile,  spSupplyRequest__query,  spSupplyRequest__security, 
      //  spSupplyRequest__tag,  spSupplyRequest__text,  spSupplyRequest_Date,  spSupplyRequest_Identifier,  spSupplyRequest_Kind,  spSupplyRequest_Patient,  spSupplyRequest_Source,  spSupplyRequest_Status,  spSupplyRequest_Supplier);
  CODES_TSearchParamsTestScript : Array[TSearchParamsTestScript] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'description', 'identifier', 'name', 'testscript-capability', 'testscript-setup-capability', 'testscript-test-capability', 'url');
  DESC_TSearchParamsTestScript : Array[TSearchParamsTestScript] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Natural language description of the TestScript',
     'External identifier',
     'Informal name for this TestScript',
     'TestScript required and validated capability',
     'TestScript setup required and validated capability',
     'TestScript test required and validated capability',
     'Absolute URL used to reference this TestScript');
//  CHECK_TSearchParamsTestScript : Array[TSearchParamsTestScript] of TSearchParamsTestScript = ( spTestScript__content,  spTestScript__id,  spTestScript__lastUpdated,  spTestScript__profile,  spTestScript__query,  spTestScript__security,  spTestScript__tag, 
      //  spTestScript__text,  spTestScript_Description,  spTestScript_Identifier,  spTestScript_Name,  spTestScript_Testscriptcapability,  spTestScript_Testscriptsetupcapability,  spTestScript_Testscripttestcapability,  spTestScript_Url);
  CODES_TSearchParamsValueSet : Array[TSearchParamsValueSet] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'context', 'date', 'description', 'expansion', 'identifier', 'name', 'publisher', 'reference', 'status', 'url', 'version');
  DESC_TSearchParamsValueSet : Array[TSearchParamsValueSet] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'A use context assigned to the value set',
     'The value set publication date',
     'Text search in the description of the value set',
     'Uniquely identifies this expansion',
     'The identifier for the value set',
     'The name of the value set',
     'Name of the publisher of the value set',
     'A code system included or excluded in the value set or an imported value set',
     'The status of the value set',
     'The logical URL for the value set',
     'The version identifier of the value set');
//  CHECK_TSearchParamsValueSet : Array[TSearchParamsValueSet] of TSearchParamsValueSet = ( spValueSet__content,  spValueSet__id,  spValueSet__lastUpdated,  spValueSet__profile,  spValueSet__query,  spValueSet__security,  spValueSet__tag,  spValueSet__text, 
      //  spValueSet_Context,  spValueSet_Date,  spValueSet_Description,  spValueSet_Expansion,  spValueSet_Identifier,  spValueSet_Name,  spValueSet_Publisher,  spValueSet_Reference,  spValueSet_Status,  spValueSet_Url,  spValueSet_Version);
  CODES_TSearchParamsVisionPrescription : Array[TSearchParamsVisionPrescription] of String = ('_content', '_id', '_lastUpdated', '_profile', '_query', '_security', '_tag', '_text', 'datewritten', 'encounter', 'identifier', 'patient', 'prescriber');
  DESC_TSearchParamsVisionPrescription : Array[TSearchParamsVisionPrescription] of String = ('Search on the entire content of the resource',
     'Logical id of this artifact',
     'When the resource version last changed',
     'Profiles this resource claims to conform to',
     'A custom search profile that describes a specific defined query operation',
     'Security Labels applied to this resource',
     'Tags applied to this resource',
     'Search on the narrative of the resource',
     'Return prescriptions written on this date',
     'Return prescriptions with this encounter identifier',
     'Return prescriptions with this external identifier',
     'The identity of a patient to list dispenses for',
     'Who authorizes the vision product');
//  CHECK_TSearchParamsVisionPrescription : Array[TSearchParamsVisionPrescription] of TSearchParamsVisionPrescription = ( spVisionPrescription__content,  spVisionPrescription__id,  spVisionPrescription__lastUpdated,  spVisionPrescription__profile,  spVisionPrescription__query, 
      //  spVisionPrescription__security,  spVisionPrescription__tag,  spVisionPrescription__text,  spVisionPrescription_Datewritten,  spVisionPrescription_Encounter,  spVisionPrescription_Identifier,  spVisionPrescription_Patient,  spVisionPrescription_Prescriber);
  FHIR_GENERATED_VERSION = '1.3.0';

  FHIR_GENERATED_DATE = '2016-03-10T07:29:43+11:00';



implementation

end.

