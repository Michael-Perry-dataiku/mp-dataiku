{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.GONG_V2.TRANSCRIPTS\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT\
"callId" as CALL_ID,\
"speakerId" as SPEAKER_ID,\
"start" as SENTENCE_START,\
"end" as SENTENCE_END,\
"text" as SENTENCE_TEXT,\
META_UNIQUE_HASH,\
META_IS_DELETED,\
META_UPDATE_TIMESTAMP,\
META_INSERT_TIMESTAMP\
FROM $\{DEV_DB\}RAW.GONG_DSS.TRANSCRIPTS\
}