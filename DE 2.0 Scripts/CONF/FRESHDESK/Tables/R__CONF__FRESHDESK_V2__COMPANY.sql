{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.FRESHDESK_V2.COMPANY\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT\
"id" AS ID,\
"name" AS NAME,\
"description" AS DESCRIPTION,\
"note" AS NOTE,\
"domains" AS DOMAINS,\
"created_at" AS CREATED_AT,\
"updated_at" AS UPDATED_AT,\
"custom_fields" AS CUSTOM_FIELDS,\
"health_score" AS HEALTH_SCORE,\
"account_tier" AS ACCOUNT_TIER,\
"renewal_date" AS RENEWAL_DATE,\
"industry" AS INDUSTRY,\
PARSE_JSON(REPLACE(CUSTOM_FIELDS, 'None', 'null')) AS CUSTOM_FIELDS_PARSED,\
PARSE_JSON(REPLACE(DOMAINS, 'None', 'null')) AS DOMAINS_PARSED,\
REPLACE(CUSTOM_FIELDS_PARSED:"salesforce_account_id",'"','') AS COMPANY_SF_ACCOUNT_ID,\
META_UNIQUE_HASH,\
META_ROW_HASH,\
META_IS_DELETED,\
META_INSERT_TIMESTAMP,\
META_UPDATE_TIMESTAMP,\
ROW_NUMBER() OVER (PARTITION BY ID ORDER BY UPDATED_AT DESC) = 1 AS META_LATEST_VERSION\
FROM RAW.FRESHDESK_DSS.COMPANY}