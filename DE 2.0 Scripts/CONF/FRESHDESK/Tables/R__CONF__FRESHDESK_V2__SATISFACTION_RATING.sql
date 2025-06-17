{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.FRESHDESK_V2.SATISFACTION_RATING\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT \
"id" AS ID,\
"survey_id" AS SURVEY_ID,\
"user_id" AS USER_ID,\
"agent_id" AS AGENT_ID,\
"feedback" AS FEEDBACK,\
"group_id" AS GROUP_ID,\
"ticket_id" AS TICKET_ID,\
"created_at" AS CREATED_AT,\
"updated_at" AS UPDATED_AT,\
"ratings" AS RATINGS,\
META_UNIQUE_HASH,\
META_ROW_HASH,\
META_IS_DELETED,\
META_INSERT_TIMESTAMP,\
META_UPDATE_TIMESTAMP,\
PARSE_JSON("ratings") AS RATINGS_PARSED,\
RATINGS_PARSED:"default_question" AS DEFAULT_QUESTION\
FROM RAW.FRESHDESK_DSS.SATISFACTION_RATING}