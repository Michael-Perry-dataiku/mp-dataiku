{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.OUTREACH_V2.PLUGIN_MAPPINGS\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT\
PLUGIN_ID, \
EXTERNAL_ID, \
EXTERNAL_TYPE, \
VALUE_ID, \
VALUE_TYPE, \
SURROGATE_ID, \
DML_TYPE, \
DML_AT, \
IS_DELETED_IN_APP, \
O_ID, BENTO, \
META_UNIQUE_HASH, \
META_ROW_HASH, \
META_IS_DELETED, \
META_INSERT_TIMESTAMP, \
META_UPDATE_TIMESTAMP,\
'OUTREACH' AS META_SOURCE_NAME\
FROM RAW.OUTREACH_SHARE.PLUGIN_MAPPINGS}