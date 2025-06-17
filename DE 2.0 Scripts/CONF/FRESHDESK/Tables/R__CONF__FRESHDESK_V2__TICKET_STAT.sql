{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww28300\viewh16080\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.FRESHDESK_V2.TICKET_STAT\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT\
"cc_emails" AS CC_EMAILS,\
"fwd_emails" AS FWD_EMAILS,\
"reply_cc_emails" AS REPLY_CC_EMAILS,\
"ticket_cc_emails" AS TICKET_CC_EMAILS,\
"fr_escalated" AS FR_ESCALATED,\
"spam" AS SPAM,\
"email_config_id" AS EMAIL_CONFIG_ID,\
"group_id" AS GROUP_ID,\
"priority" AS PRIORITY,\
"requester_id" AS REQUESTER_ID,\
"responder_id" AS RESPONDER_ID,\
"source" AS SOURCE,\
"company_id" AS COMPANY_ID,\
"status" AS STATUS,\
"subject" AS SUBJECT,\
"association_type" AS ASSOCIATION_TYPE,\
"support_email" AS SUPPORT_EMAIL,\
"to_emails" AS TO_EMAILS,\
"product_id" AS PRODUCT_ID,\
"id" AS ID,\
"type" AS TYPE,\
"due_by" AS DUE_BY,\
"fr_due_by" AS FR_DUE_BY,\
"is_escalated" AS IS_ESCALATED,\
"custom_fields" AS CUSTOM_FIELDS,\
"created_at" AS CREATED_AT,\
"updated_at" AS UPDATED_AT,\
"associated_tickets_count" AS ASSOCIATED_TICKETS_COUNT,\
"tags" AS TAGS,\
TRY_PARSE_JSON(REPLACE("stats", 'None', 'null')) AS STATS,\
REPLACE(STATS:"agent_responded_at", '"','') AS STATS_AGENT_RESPONDED_AT,\
REPLACE(STATS:"closed_at", '"','') AS STATS_CLOSED_AT,\
REPLACE(STATS:"first_responded_at", '"','') AS STATS_FIRST_RESPONDED_AT,\
REPLACE(STATS:"pending_since", '"','') AS STATS_PENDING_SINCE,\
REPLACE(STATS:"reopened_at", '"','') AS STATS_REOPENED_AT,\
REPLACE(STATS:"requester_responded_at", '"','') AS STATS_REQUESTER_RESPONDED_AT,\
REPLACE(STATS:"resolved_at", '"','') AS STATS_RESOLVED_AT,\
REPLACE(STATS:"status_updated_at", '"','') AS STATS_STATUS_UPDATED_AT,\
"nr_due_by" AS NR_DUE_BY,\
"nr_escalated" AS NR_ESCALATED,\
META_UNIQUE_HASH,\
META_ROW_HASH,\
META_IS_DELETED,\
META_INSERT_TIMESTAMP,\
META_UPDATE_TIMESTAMP,\
ROW_NUMBER() OVER (PARTITION BY "id" ORDER BY "updated_at" DESC) = 1 AS META_LATEST_VERSION\
FROM RAW.FRESHDESK_DSS.TICKET_STAT}