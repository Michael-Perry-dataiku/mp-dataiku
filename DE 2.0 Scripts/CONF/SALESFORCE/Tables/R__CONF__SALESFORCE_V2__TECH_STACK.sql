{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.SALESFORCE_V2.TECH_STACK\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT\
META_UNIQUE_HASH,\
"Id" AS Id,\
case when UPPER("IsDeleted") = 'FALSE' THEN FALSE ELSE TRUE END AS "ISDELETED",\
"Name" AS Name,\
"CurrencyIsoCode" AS CurrencyIsoCode,\
"CreatedDate" AS CreatedDate,\
"CreatedById" AS CreatedById,\
"LastModifiedDate" AS LastModifiedDate,\
"LastModifiedById" AS LastModifiedById,\
"SystemModstamp" AS SystemModstamp,\
"LastActivityDate" AS LastActivityDate,\
"LastViewedDate" AS LastViewedDate,\
"LastReferencedDate" AS LastReferencedDate,\
"Account__c" AS Account__c,\
"BIViz__c" AS BIViz__c,\
"Cloud_Storage_opp__c" AS Cloud_Storage_opp__c,\
"IDEs__c" AS IDEs__c,\
"Opportunity__c" AS Opportunity__c,\
"Structured_DBs__c" AS Structured_DBs__c,\
"Unstructured_DBs__c" AS Unstructured_DBs__c,\
"Tech_Stack_Notes__c" AS Tech_Stack_Notes__c,\
"Future_Tech_Stack_Comments__c" AS Future_Tech_Stack_Comments__c,\
"Main_IT_Infrastructure__c" AS Main_IT_Infrastructure__c,\
"Coders__c" AS Coders__c,\
"Data_Maturity_Level__c" AS Data_Maturity_Level__c,\
"AI_Maturity_Level__c" AS AI_Maturity_Level__c,\
"Coding_Languages__c" AS Coding_Languages__c,\
"Clickers__c" AS Clickers__c,\
"Cluster__c" AS Cluster__c,\
"Completeness__c" AS Completeness__c,\
"Competitors__c" AS Competitors__c,\
"Related_to_Won_Oppie__c" AS Related_to_Won_Oppie__c,\
META_IS_DELETED,\
'SALESFORCE' AS META_SOURCE_NAME\
FROM RAW.SALESFORCE_DSS.TECH_STACK}