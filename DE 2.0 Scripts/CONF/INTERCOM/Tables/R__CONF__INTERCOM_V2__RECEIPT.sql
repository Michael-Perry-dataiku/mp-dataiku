{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.INTERCOM_V2.RECEIPT\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT\
"user_id" AS USER_ID,\
"user_external_id" AS USER_EXTERNAL_ID,\
"company_id" AS COMPANY_ID,\
"company_external_id" AS COMPANY_EXTERNAL_ID,\
"email" AS EMAIL,\
"name" AS NAME,\
"ruleset_id" AS RULESET_ID,\
"content_id" AS CONTENT_ID,\
"content_type" AS CONTENT_TYPE,\
"content_title" AS CONTENT_TITLE,\
"created_via" AS CREATED_VIA,\
"device" AS DEVICE,\
"ruleset_version_id" AS RULESET_VERSION_ID,\
"receipt_id" AS RECEIPT_ID,\
"received_at" AS RECEIVED_AT,\
"conversation_id" AS CONVERSATION_ID,\
"series_id" AS SERIES_ID,\
"series_title" AS SERIES_TITLE,\
"node_id" AS NODE_ID,\
"first_reply" AS FIRST_REPLY,\
"first_completion" AS FIRST_COMPLETION,\
"first_series_completion" AS FIRST_SERIES_COMPLETION,\
"first_series_disengagement" AS FIRST_SERIES_DISENGAGEMENT,\
"first_series_exit" AS FIRST_SERIES_EXIT,\
"first_goal_success" AS FIRST_GOAL_SUCCESS,\
"first_tour_step_failure" AS FIRST_TOUR_STEP_FAILURE,\
"first_tour_step_view" AS FIRST_TOUR_STEP_VIEW,\
"first_reaction" AS FIRST_REACTION,\
"first_open" AS FIRST_OPEN,\
"first_click" AS FIRST_CLICK,\
"first_dismissal" AS FIRST_DISMISSAL,\
"first_collected_email" AS FIRST_COLLECTED_EMAIL,\
"first_unsubscribe" AS FIRST_UNSUBSCRIBE,\
"first_hard_bounce" AS FIRST_HARD_BOUNCE,\
"first_soft_bounce" AS FIRST_SOFT_BOUNCE,\
"first_spam_complaint" AS FIRST_SPAM_COMPLAINT,\
"first_permission_grant" AS FIRST_PERMISSION_GRANT,\
"first_button_tap" AS FIRST_BUTTON_TAP,\
"first_screen_view" AS FIRST_SCREEN_VIEW,\
"first_webhook_failure" AS FIRST_WEBHOOK_FAILURE,\
"first_sms_failure" AS FIRST_SMS_FAILURE,\
"first_whatsapp_failure" AS FIRST_WHATSAPP_FAILURE,\
"first_push_failure" AS FIRST_PUSH_FAILURE,\
"first_answer" AS FIRST_ANSWER,\
"first_keyword_reply" AS FIRST_KEYWORD_REPLY,\
"first_people_reached_receipt" AS FIRST_PEOPLE_REACHED_RECEIPT,\
"first_checklist_step_receipt" AS FIRST_CHECKLIST_STEP_RECEIPT,\
"first_checklist_step_open" AS FIRST_CHECKLIST_STEP_OPEN,\
"first_checklist_step_click" AS FIRST_CHECKLIST_STEP_CLICK,\
"first_checklist_step_completion" AS FIRST_CHECKLIST_STEP_COMPLETION,\
"first_fin_helpful_answer" AS FIRST_FIN_HELPFUL_ANSWER,\
META_IS_DELETED\
FROM $\{DEV_DB\}RAW.INTERCOM_DSS.RECEIPT}