{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.INTERCOM_V2.CONTACT\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT\
"type" AS TYPE,\
"id" AS ID,\
"workspace_id" AS WORKSPACE_ID,\
"external_id" AS EXTERNAL_ID,\
"role" AS ROLE,\
"email" AS EMAIL,\
"phone" AS PHONE,\
"name" AS NAME,\
"avatar" AS AVATAR,\
"owner_id" AS OWNER_ID,\
"social_profiles" AS SOCIAL_PROFILES,\
"has_hard_bounced" AS HAS_HARD_BOUNCED,\
"marked_email_as_spam" AS MARKED_EMAIL_AS_SPAM,\
"unsubscribed_from_emails" AS UNSUBSCRIBED_FROM_EMAILS,\
"created_at" AS CREATED_AT,\
"updated_at" AS UPDATED_AT,\
"signed_up_at" AS SIGNED_UP_AT,\
"last_seen_at" AS LAST_SEEN_AT,\
"last_replied_at" AS LAST_REPLIED_AT,\
"last_contacted_at" AS LAST_CONTACTED_AT,\
"last_email_opened_at" AS LAST_EMAIL_OPENED_AT,\
"last_email_clicked_at" AS LAST_EMAIL_CLICKED_AT,\
"language_override" AS LANGUAGE_OVERRIDE,\
"browser" AS BROWSER,\
"browser_version" AS BROWSER_VERSION,\
"browser_language" AS BROWSER_LANGUAGE,\
"os" AS OS,\
"location" AS LOCATION,\
"android_app_name" AS ANDROID_APP_NAME,\
"android_app_version" AS ANDROID_APP_VERSION,\
"android_device" AS ANDROID_DEVICE,\
"android_os_version" AS ANDROID_OS_VERSION,\
"android_sdk_version" AS ANDROID_SDK_VERSION,\
"android_last_seen_at" AS ANDROID_LAST_SEEN_AT,\
"ios_app_name" AS IOS_APP_NAME,\
"ios_app_version" AS IOS_APP_VERSION,\
"ios_device" AS IOS_DEVICE,\
"ios_os_version" AS IOS_OS_VERSION,\
"ios_sdk_version" AS IOS_SDK_VERSION,\
"ios_last_seen_at" AS IOS_LAST_SEEN_AT,\
"custom_attributes" AS CUSTOM_ATTRIBUTES,\
"tags" AS TAGS,\
"notes" AS NOTES,\
"companies" AS COMPANIES,\
"opted_out_subscription_types" AS OPTED_OUT_SUBSCRIPTION_TYPES,\
"opted_in_subscription_types" AS OPTED_IN_SUBSCRIPTION_TYPES,\
"utm_campaign" AS UTM_CAMPAIGN,\
"utm_content" AS UTM_CONTENT,\
"utm_medium" AS UTM_MEDIUM,\
"utm_source" AS UTM_SOURCE,\
"utm_term" AS UTM_TERM,\
"referrer" AS REFERRER,\
"sms_consent" AS SMS_CONSENT,\
"unsubscribed_from_sms" AS UNSUBSCRIBED_FROM_SMS,\
META_IS_DELETED,\
CASE WHEN ROW_NUMBER() OVER (PARTITION BY ID ORDER BY UPDATED_AT DESC) = 1 THEN TRUE ELSE FALSE END AS META_LATEST_VERSION\
FROM RAW.INTERCOM_DSS.CONTACT}