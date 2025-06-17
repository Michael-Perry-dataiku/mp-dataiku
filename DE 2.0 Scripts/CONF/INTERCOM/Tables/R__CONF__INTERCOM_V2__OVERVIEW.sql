{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.INTERCOM_V2.OVERVIEW\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT\
"ruleset_id" AS RULESET_ID,\
"created_at" AS CREATED_AT,\
"audience_type" AS AUDIENCE_TYPE,\
"content_title" AS CONTENT_TITLE,\
"content_id" AS CONTENT_ID,\
"content_type" AS CONTENT_TYPE,\
"series_id" AS SERIES_ID,\
"series_title" AS SERIES_TITLE,\
"state" AS STATE,\
"last_sent_at" AS LAST_SENT_AT,\
"last_state_change_by" AS LAST_STATE_CHANGE_BY,\
"last_state_change_at" AS LAST_STATE_CHANGE_AT,\
"last_edited_by" AS LAST_EDITED_BY,\
"last_edited_at" AS LAST_EDITED_AT,\
"url" AS URL,\
"receipt_total" AS RECEIPT_TOTAL,\
"receipt_unique" AS RECEIPT_UNIQUE,\
"reply_total" AS REPLY_TOTAL,\
"reply_unique" AS REPLY_UNIQUE,\
"reply_rate" AS REPLY_RATE,\
"completion_total" AS COMPLETION_TOTAL,\
"completion_unique" AS COMPLETION_UNIQUE,\
"completion_rate" AS COMPLETION_RATE,\
"goal_success_total" AS GOAL_SUCCESS_TOTAL,\
"goal_success_unique" AS GOAL_SUCCESS_UNIQUE,\
"goal_success_rate" AS GOAL_SUCCESS_RATE,\
"tour_step_failure_total" AS TOUR_STEP_FAILURE_TOTAL,\
"tour_step_failure_unique" AS TOUR_STEP_FAILURE_UNIQUE,\
"tour_step_failure_rate" AS TOUR_STEP_FAILURE_RATE,\
"tour_step_view_total" AS TOUR_STEP_VIEW_TOTAL,\
"tour_step_view_unique" AS TOUR_STEP_VIEW_UNIQUE,\
"reaction_total" AS REACTION_TOTAL,\
"reaction_unique" AS REACTION_UNIQUE,\
"reaction_rate" AS REACTION_RATE,\
"open_total" AS OPEN_TOTAL,\
"open_unique" AS OPEN_UNIQUE,\
"open_rate" AS OPEN_RATE,\
"click_total" AS CLICK_TOTAL,\
"click_unique" AS CLICK_UNIQUE,\
"click_rate" AS CLICK_RATE,\
"dismissal_total" AS DISMISSAL_TOTAL,\
"dismissal_unique" AS DISMISSAL_UNIQUE,\
"dismissal_rate" AS DISMISSAL_RATE,\
"collected_email_total" AS COLLECTED_EMAIL_TOTAL,\
"collected_email_unique" AS COLLECTED_EMAIL_UNIQUE,\
"collected_email_rate" AS COLLECTED_EMAIL_RATE,\
"unsubscribe_total" AS UNSUBSCRIBE_TOTAL,\
"unsubscribe_unique" AS UNSUBSCRIBE_UNIQUE,\
"unsubscribe_rate" AS UNSUBSCRIBE_RATE,\
"hard_bounce_total" AS HARD_BOUNCE_TOTAL,\
"hard_bounce_unique" AS HARD_BOUNCE_UNIQUE,\
"hard_bounce_rate" AS HARD_BOUNCE_RATE,\
"spam_complaint_total" AS SPAM_COMPLAINT_TOTAL,\
"spam_complaint_unique" AS SPAM_COMPLAINT_UNIQUE,\
"spam_complaint_rate" AS SPAM_COMPLAINT_RATE,\
"permission_grant_total" AS PERMISSION_GRANT_TOTAL,\
"permission_grant_unique" AS PERMISSION_GRANT_UNIQUE,\
"permission_grant_rate" AS PERMISSION_GRANT_RATE,\
"button_tap_total" AS BUTTON_TAP_TOTAL,\
"button_tap_unique" AS BUTTON_TAP_UNIQUE,\
"button_tap_rate" AS BUTTON_TAP_RATE,\
"screen_view_total" AS SCREEN_VIEW_TOTAL,\
"screen_view_unique" AS SCREEN_VIEW_UNIQUE,\
"screen_view_rate" AS SCREEN_VIEW_RATE,\
"webhook_failure_total" AS WEBHOOK_FAILURE_TOTAL,\
"webhook_failure_unique" AS WEBHOOK_FAILURE_UNIQUE,\
"webhook_failure_rate" AS WEBHOOK_FAILURE_RATE,\
"sms_failure_total" AS SMS_FAILURE_TOTAL,\
"sms_failure_unique" AS SMS_FAILURE_UNIQUE,\
"sms_failure_rate" AS SMS_FAILURE_RATE,\
"whatsapp_failure_total" AS WHATSAPP_FAILURE_TOTAL,\
"whatsapp_failure_unique" AS WHATSAPP_FAILURE_UNIQUE,\
"whatsapp_failure_rate" AS WHATSAPP_FAILURE_RATE,\
"push_failure_total" AS PUSH_FAILURE_TOTAL,\
"push_failure_unique" AS PUSH_FAILURE_UNIQUE,\
"push_failure_rate" AS PUSH_FAILURE_RATE,\
"answer_total" AS ANSWER_TOTAL,\
"answer_unique" AS ANSWER_UNIQUE,\
"answer_rate" AS ANSWER_RATE,\
"keyword_reply_total" AS KEYWORD_REPLY_TOTAL,\
"keyword_reply_unique" AS KEYWORD_REPLY_UNIQUE,\
"people_reached_receipt_total" AS PEOPLE_REACHED_RECEIPT_TOTAL,\
"people_reached_receipt_unique" AS PEOPLE_REACHED_RECEIPT_UNIQUE,\
"people_reached_receipt_rate" AS PEOPLE_REACHED_RECEIPT_RATE,\
"checklist_step_receipt_total" AS CHECKLIST_STEP_RECEIPT_TOTAL,\
"checklist_step_receipt_unique" AS CHECKLIST_STEP_RECEIPT_UNIQUE,\
"checklist_step_receipt_rate" AS CHECKLIST_STEP_RECEIPT_RATE,\
"checklist_step_open_total" AS CHECKLIST_STEP_OPEN_TOTAL,\
"checklist_step_open_unique" AS CHECKLIST_STEP_OPEN_UNIQUE,\
"checklist_step_open_rate" AS CHECKLIST_STEP_OPEN_RATE,\
"checklist_step_click_total" AS CHECKLIST_STEP_CLICK_TOTAL,\
"checklist_step_click_unique" AS CHECKLIST_STEP_CLICK_UNIQUE,\
"checklist_step_click_rate" AS CHECKLIST_STEP_CLICK_RATE,\
"checklist_step_completion_total" AS CHECKLIST_STEP_COMPLETION_TOTAL,\
"checklist_step_completion_unique" AS CHECKLIST_STEP_COMPLETION_UNIQUE,\
"checklist_step_completion_rate" AS CHECKLIST_STEP_COMPLETION_RATE,\
"fin_helpful_answer_total" AS FIN_HELPFUL_ANSWER_TOTAL,\
"fin_helpful_answer_unique" AS FIN_HELPFUL_ANSWER_UNIQUE,\
"fin_helpful_answer_rate" AS FIN_HELPFUL_ANSWER_RATE,\
"email_failure_total" AS EMAIL_FAILURE_TOTAL,\
"email_failure_unique" AS EMAIL_FAILURE_UNIQUE,\
"email_failure_rate" AS EMAIL_FAILURE_RATE,\
META_IS_DELETED\
FROM $\{DEV_DB\}RAW.INTERCOM_DSS.OVERVIEW}