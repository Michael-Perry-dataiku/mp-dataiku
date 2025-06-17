{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.SALESFORCE_V2.CAMPAIGN_INFLUENCE\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT \
"attributes.type" AS attributes_type,\
"attributes.url" AS attributes_url,\
"Id" AS ID,\
case when UPPER("IsDeleted") = 'FALSE' THEN FALSE ELSE TRUE END AS IsDeleted,\
"CurrencyIsoCode" AS CurrencyIsoCode,\
LEFT("CreatedDate",10)::DATE AS CreatedDate,\
"CreatedById" AS CreatedById,\
"LastModifiedDate" AS LastModifiedDate,\
"LastModifiedById" AS LastModifiedById,\
"SystemModstamp" AS SystemModstamp,\
"OpportunityId" AS OpportunityId,\
"CampaignId" AS CampaignId,\
"ContactId" AS ContactId,\
"Influence" AS Influence,\
"ModelId" AS ModelId,\
"RevenueShare" AS RevenueShare,\
META_UNIQUE_HASH AS META_UNIQUE_HASH,\
META_ROW_HASH AS META_ROW_HASH,\
META_IS_DELETED AS META_IS_DELETED,\
CONVERT_TIMEZONE('UTC',META_INSERT_TIMESTAMP) AS META_INSERT_TIMESTAMP,\
CONVERT_TIMEZONE('UTC',META_UPDATE_TIMESTAMP) AS META_UPDATE_TIMESTAMP\
FROM \
RAW.SALESFORCE_DSS.CAMPAIGN_INFLUENCE}