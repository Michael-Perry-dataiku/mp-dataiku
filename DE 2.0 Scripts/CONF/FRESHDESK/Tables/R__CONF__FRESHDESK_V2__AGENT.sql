{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.FRESHDESK_V2.AGENT\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT\
"available" AS AVAILABLE,\
"occasional" AS OCCASIONAL,\
"id" AS ID,\
"ticket_scope" AS TICKET_SCOPE,\
"created_at" AS CREATED_AT,\
"updated_at" AS UPDATED_AT,\
"last_active_at" AS LAST_ACTIVE_AT,\
"available_since" AS AVAILABLE_SINCE,\
"type" AS TYPE,\
"contact" AS CONTACT,\
"deactivated" AS DEACTIVATED,\
"signature" AS SIGNATURE,\
"agent_level_id" AS AGENT_LEVEL_ID,\
"focus_mode" AS FOCUS_MODE,\
META_UNIQUE_HASH,\
META_ROW_HASH,\
META_IS_DELETED,\
META_INSERT_TIMESTAMP,\
META_UPDATE_TIMESTAMP,\
PARSE_JSON(REPLACE(CONTACT, 'None', 'null')) AS AGENT_CONTACT,\
REPLACE(AGENT_CONTACT:"email",'"','') AS AGENT_CONTACT_EMAIL,\
REPLACE(AGENT_CONTACT:"name",'"','') AS AGENT_CONTACT_NAME,\
ROW_NUMBER() OVER (PARTITION BY ID ORDER BY UPDATED_AT DESC) = 1 AS META_LATEST_VERSION\
FROM RAW.FRESHDESK_DSS.AGENT}