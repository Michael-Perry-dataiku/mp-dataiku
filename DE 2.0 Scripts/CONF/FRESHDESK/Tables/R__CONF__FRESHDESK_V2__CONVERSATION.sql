{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.FRESHDESK_V2.CONVERSATION\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT\
-- cherry picked character replacement to manually fix majority of common issues IN BODY AND BODY_TEXT\
REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE("body", '\\\\r', ' '), '\\\\n', ' '), '\\\\u00a0', ' '), '\\\\u202f', ' '), '\\\\u200b', ' '), '\\\\u00e9', '\'e9')\
AS BODY,\
REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE("body_text", '\\\\r', ' '), '\\\\n', ' '), '\\\\u00a0', ' '), '\\\\u202f', ' '), '\\\\u200b', ' '), '\\\\u00e9', '\'e9')\
AS BODY_TEXT,\
"id" AS ID,\
"incoming" AS INCOMING,\
"private" AS PRIVATE,\
"user_id" AS USER_ID,\
"support_email" AS SUPPORT_EMAIL,\
"source" AS SOURCE,\
"category" AS CATEGORY,\
"to_emails" AS TO_EMAILS,\
"from_email" AS FROM_EMAIL,\
"cc_emails" AS CC_EMAILS,\
"bcc_emails" AS BCC_EMAILS,\
"email_failure_count" AS EMAIL_FAILURE_COUNT,\
"outgoing_failures" AS OUTGOING_FAILURES,\
"thread_id" AS THREAD_ID,\
"thread_message_id" AS THREAD_MESSAGE_ID,\
"created_at" AS CREATED_AT,\
"updated_at" AS UPDATED_AT,\
"last_edited_at" AS LAST_EDITED_AT,\
"last_edited_user_id" AS LAST_EDITED_USER_ID,\
"attachments" AS ATTACHMENTS,\
"automation_id" AS AUTOMATION_ID,\
"automation_type_id" AS AUTOMATION_TYPE_ID,\
"auto_response" AS AUTO_RESPONSE,\
"ticket_id" AS TICKET_ID,\
"source_additional_info" AS SOURCE_ADDITIONAL_INFO,\
META_UNIQUE_HASH,\
META_ROW_HASH,\
META_IS_DELETED,\
META_INSERT_TIMESTAMP,\
META_UPDATE_TIMESTAMP,\
ROW_NUMBER() OVER (PARTITION BY ID ORDER BY UPDATED_AT DESC) = 1 AS META_LATEST_VERSION\
FROM RAW.FRESHDESK_DSS.CONVERSATION}