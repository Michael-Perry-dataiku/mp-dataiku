{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.SALESFORCE_V2.OPPORTUNITY_CONTACT_ROLE\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT \
"Id" AS OPPORTUNITY_CONTACT_ROLE_ID,\
"OpportunityId" AS OpportunityId,\
"ContactId" AS ContactId, \
"Role" AS Role, \
"IsPrimary" AS IsPrimary,\
"CreatedDate" AS CreatedDate, \
"CreatedById" AS CreatedById, \
"LastModifiedDate" AS LastModifiedDate, \
"LastModifiedById" AS LastModifiedById, \
"SystemModstamp" AS SystemModstamp, \
case when UPPER("IsDeleted") = 'FALSE' THEN FALSE ELSE TRUE END AS "ISDELETED",\
"Name_and_Title__c" AS Name_and_Title__c,\
META_IS_DELETED,\
META_UNIQUE_HASH,\
'SALESFORCE' AS META_SOURCE_NAME\
FROM RAW.SALESFORCE_DSS.OPPORTUNITY_CONTACT_ROLE}