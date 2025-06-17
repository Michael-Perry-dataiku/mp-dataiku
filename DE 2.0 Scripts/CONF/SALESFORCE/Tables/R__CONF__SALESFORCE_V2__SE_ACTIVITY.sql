{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.SALESFORCE_V2.SE_ACTIVITY\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT\
"Id" Id, \
"OwnerId" OwnerId, \
case when UPPER("IsDeleted") = 'FALSE' THEN FALSE ELSE TRUE END AS IsDeleted, \
"Name" Name, \
"CurrencyIsoCode" CurrencyIsoCode, \
"CreatedDate" CreatedDate, \
"CreatedById" CreatedById, \
"LastModifiedDate" LastModifiedDate, \
"LastModifiedById" LastModifiedById, \
"SystemModstamp" SystemModstamp, \
"LastViewedDate" LastViewedDate, \
"LastReferencedDate" LastReferencedDate, \
"Full_Opportunity_Id__c" Full_Opportunity_Id__c, \
"Full_Account_Id__c" Full_Account_Id__c, \
"Account__c" Account__c, \
"Activity_Duration__c" Activity_Duration__c, \
"Activity_Type__c" Activity_Type__c,\
"Activity_Detail__c" Activity_Detail__c,\
"Date_of_Activity__c" Date_of_Activity__c, \
"Notes__c" Notes__c, \
"Opportunity_Stage_at_Completion__c" Opportunity_Stage_at_Completion__c, \
"Opportunity__c" Opportunity__c, \
"Subject__c" Subject__c, \
"isAdoptionActivity__c" isAdoptionActivity__c, \
"isPartnerRelated__c" isPartnerRelated__c,\
"InPerson__c" as INPERSON__C,\
"Number_of_Attendees__c" as NUMBER_OF_ATTENDEES__C,\
"Offering__c" as OFFERING__C,\
"Partner_Name__c" as PARTNER_NAME__C,\
META_UNIQUE_HASH, \
META_ROW_HASH, \
META_IS_DELETED, \
META_INSERT_TIMESTAMP, \
META_UPDATE_TIMESTAMP\
FROM RAW.SALESFORCE_DSS.SE_ACTIVITY}