{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.FRESHDESK_V2.CONTACT\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT\
"active" AS ACTIVE,\
"address" AS ADDRESS,\
"description" AS DESCRIPTION,\
"email" AS EMAIL,\
"id" AS ID,\
"job_title" AS JOB_TITLE,\
"language" AS LANGUAGE,\
"mobile" AS MOBILE,\
"name" AS NAME,\
"phone" AS PHONE,\
"time_zone" AS TIME_ZONE,\
"twitter_id" AS TWITTER_ID,\
"custom_fields" AS CUSTOM_FIELDS,\
"facebook_id" AS FACEBOOK_ID,\
"created_at" AS CREATED_AT,\
"updated_at" AS UPDATED_AT,\
"csat_rating" AS CSAT_RATING,\
"preferred_source" AS PREFERRED_SOURCE,\
"company_id" AS COMPANY_ID,\
"twitter_profile_status" AS TWITTER_PROFILE_STATUS,\
"twitter_followers_count" AS TWITTER_FOLLOWERS_COUNT,\
"other_companies" AS OTHER_COMPANIES,\
"unique_external_id" AS UNIQUE_EXTERNAL_ID,\
META_UNIQUE_HASH,\
META_ROW_HASH,\
META_IS_DELETED,\
META_INSERT_TIMESTAMP,\
META_UPDATE_TIMESTAMP,\
ROW_NUMBER() OVER (PARTITION BY ID ORDER BY UPDATED_AT DESC) = 1 AS META_LATEST_VERSION\
FROM RAW.FRESHDESK_DSS.CONTACT}