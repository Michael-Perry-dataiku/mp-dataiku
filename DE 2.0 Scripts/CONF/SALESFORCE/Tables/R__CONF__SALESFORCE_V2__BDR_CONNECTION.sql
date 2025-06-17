{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.SALESFORCE_V2.BDR_CONNECTION\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT\
-- "attributes.type" AS "ATTRIBUTES.TYPE",\
-- "attributes.url" AS "ATTRIBUTES.URL",\
"Id" AS "ID",\
case when UPPER("IsDeleted") = 'FALSE' THEN FALSE ELSE TRUE END AS "ISDELETED",\
"Name" AS "NAME",\
"CurrencyIsoCode" AS "CURRENCYISOCODE",\
"CreatedDate" AS "CREATEDDATE",\
"CreatedById" AS "CREATEDBYID",\
"LastModifiedDate" AS "LASTMODIFIEDDATE",\
"LastModifiedById" AS "LASTMODIFIEDBYID",\
"SystemModstamp" AS "SYSTEMMODSTAMP",\
"LastActivityDate" AS "LASTACTIVITYDATE",\
"LastViewedDate" AS "LASTVIEWEDDATE",\
"LastReferencedDate" AS "LASTREFERENCEDDATE",\
"Opportunity__c" AS "OPPORTUNITY__C",\
"Transformation_Touchpoint__c" AS "TRANSFORMATION_TOUCHPOINT__C",\
META_UNIQUE_HASH AS "META_UNIQUE_HASH",\
META_ROW_HASH AS "META_ROW_HASH",\
META_IS_DELETED AS "META_IS_DELETED",\
META_INSERT_TIMESTAMP AS "META_INSERT_TIMESTAMP",\
META_UPDATE_TIMESTAMP AS "META_UPDATE_TIMESTAMP",\
"AE_Approver__c" AS "AE_APPROVER__C",\
"Account__c" AS "ACCOUNT__C",\
"BDR_Connection_meeting_date__c" AS "BDR_CONNECTION_MEETING_DATE__C",\
"BDR_Manager_Approver__c" AS "BDR_MANAGER_APPROVER__C",\
"BDR_Next_Step__c" AS "BDR_NEXT_STEP__C",\
"BDR_Owner__c" AS "BDR_OWNER__C",\
"Connection_Status__c" AS "CONNECTION_STATUS__C",\
"Contact_Title__c" AS "CONTACT_TITLE__C",\
"Contact__c" AS "CONTACT__C",\
"Fit__c" AS "FIT__C",\
"Identified_Pain__c" AS "IDENTIFIED_PAIN__C",\
"Lead_Interest__c" AS "LEAD_INTEREST__C",\
"Meeting_Notes__c" AS "MEETING_NOTES__C",\
"Never_happened_reason__c" AS "NEVER_HAPPENED_REASON__C",\
"Opportunity_Owner__c" AS "OPPORTUNITY_OWNER__C",\
"Opportunity_Stage__c" AS "OPPORTUNITY_STAGE__C",\
"Reason__c" AS "REASON__C",\
"Sales_Region__c" AS "SALES_REGION__C",\
"Sales_Sub_Region__c" AS "SALES_SUB_REGION__C",\
"Subsequent_BDR_Connection_Reason__c" AS "SUBSEQUENT_BDR_CONNECTION_REASON__C",\
"Targeted_Persona__c" AS "TARGETED_PERSONA__C",\
"Approved_Connection__c" AS "APPROVED_CONNECTION__C",\
"Approved_Date__c" AS "APPROVED_DATE__C",\
"Common_Pains__c" AS "COMMON_PAINS__C",\
"Discovery_Call_Type__c" AS "DISCOVERY_CALL_TYPE__C"\
FROM RAW.SALESFORCE_DSS.BDR_CONNECTION\
}