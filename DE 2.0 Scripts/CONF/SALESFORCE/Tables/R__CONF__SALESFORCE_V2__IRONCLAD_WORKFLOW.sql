{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.SALESFORCE_V2.IRONCLAD_WORKFLOW\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT\
"attributes.type" AS attributestype,\
"attributes.url" AS attributesurl,\
"Id" AS Id,\
"OwnerId" AS OwnerId,\
case when UPPER("IsDeleted") = 'FALSE' THEN FALSE ELSE TRUE END AS IsDeleted,\
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
"ironclad__Workflow_ID__c" AS ironclad__Workflow_ID__c,\
"ironclad__Workflow_Link__c" AS ironclad__Workflow_Link__c,\
"ironclad__Workflow_Name__c" AS ironclad__Workflow_Name__c,\
"ironclad__Workflow_Step__c" AS ironclad__Workflow_Step__c,\
"ironclad__Workflow_Type__c" AS ironclad__Workflow_Type__c,\
"ironclad__Workflow_Status__c" AS ironclad__Workflow_Status__c,\
"Quote__c" AS Quote__c,\
"Workflow_Link_Report__c" AS Workflow_Link_Report__c,\
"Contact__c" AS Contact__c,\
"Account__c" AS Account__c,\
"Opportunity__c" AS Opportunity__c,\
"META_UNIQUE_HASH" AS META_UNIQUE_HASH,\
"META_ROW_HASH" AS META_ROW_HASH,\
"META_IS_DELETED" AS META_IS_DELETED,\
"META_INSERT_TIMESTAMP" AS META_INSERT_TIMESTAMP,\
"META_UPDATE_TIMESTAMP" AS META_UPDATE_TIMESTAMP\
FROM RAW.SALESFORCE_DSS.IRONCLAD_WORKFLOW}