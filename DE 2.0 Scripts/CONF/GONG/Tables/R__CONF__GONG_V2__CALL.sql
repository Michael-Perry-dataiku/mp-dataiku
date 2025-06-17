{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.GONG_V2.CALL\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT\
"id" AS id, \
"url" AS url, \
"title" AS title, \
"scheduled" AS scheduled, \
"started" AS started, \
"duration" AS duration, \
"primaryUserId" AS primaryUserId, \
"direction" AS direction, \
"system" AS call_system, \
"scope" AS scope, \
"media" AS media, \
"language" AS language, \
"workspaceId" AS workspaceId, \
"sdrDisposition" AS sdrDisposition, \
"clientUniqueId" AS clientUniqueId, \
"customData" AS customData, \
"purpose" AS purpose, \
"meetingUrl" AS meetingUrl, \
"isPrivate" AS isPrivate, \
"calendarEventId" AS calendarEventId,\
META_UNIQUE_HASH,\
META_ROW_HASH, \
META_IS_DELETED, \
META_INSERT_TIMESTAMP, \
META_UPDATE_TIMESTAMP\
FROM $\{DEV_DB\}RAW.GONG_DSS.CALLS}