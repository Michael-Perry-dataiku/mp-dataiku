{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.OUTREACH_V2.MAILING\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT\
mshare.META_UNIQUE_HASH,\
mapi.BODY_HTML,\
mapi.BODY_HTML AS BODY_TEXT,\
mshare.BOUNCED_AT ,\
mshare.CALENDAR_EVENT_ID ,\
mshare.CALENDAR_ID ,\
mshare.CLICK_COUNT ,\
mshare.CLICKED_AT ,\
mshare.CREATED_AT ,\
mshare.DELIVERED_AT ,\
mshare.ERROR_CATEGORY ,\
mshare.ERROR_REASON ,\
mshare.IN_REPLY_TO ,\
mshare.MAILBOX_ID ,\
mshare.MAILING_TYPE ,\
mshare.MARKED_AS_SPAM_AT ,\
mshare.MESSAGE_ID ,\
mshare.OPEN_COUNT ,\
mshare.OPENED_AT ,\
mshare.OPPORTUNITY_ID ,\
mshare.PARENT_MESSAGE_ID ,\
mshare.PROSPECT_ID ,\
mshare.REPLIED_AT ,\
mshare.REPLIER_MESSAGE_ID ,\
mshare.SCHEDULED_AT ,\
mshare.SEQUENCE_ID ,\
mshare.SEQUENCE_STATE_ID ,\
mshare.SEQUENCE_STEP_ID ,\
mshare.SOURCE ,\
mshare.STATE ,\
mshare.STATE_CHANGED_AT ,\
mshare.SUBJECT ,\
mshare.SUBJECT2 ,\
mshare.TASK_ID ,\
mshare.TEMPLATE_ID ,\
mshare.TRACK_LINKS ,\
mshare.TRACK_OPENS ,\
mshare.UNSUBSCRIBED_AT ,\
mshare.UPDATED_AT ,\
mshare.ID ,\
mshare.SURROGATE_ID ,\
mshare.DML_TYPE ,\
mshare.DML_AT ,\
mshare.IS_DELETED_IN_APP ,\
mshare.O_ID ,\
mshare.BENTO ,\
'OUTREACH' AS META_SOURCE_NAME,\
mshare.META_UPDATE_TIMESTAMP,\
mshare.META_INSERT_TIMESTAMP,\
mshare.META_IS_DELETED\
FROM RAW.OUTREACH_SHARE.MAILINGS mshare\
LEFT JOIN $\{DEV_DB\}CONF.OUTREACH.MAILING_API_JSON mapi\
on mshare.ID = mapi.ID}