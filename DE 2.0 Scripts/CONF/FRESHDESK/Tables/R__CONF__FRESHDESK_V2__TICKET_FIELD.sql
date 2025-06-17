{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.FRESHDESK_V2.TICKET_FIELD\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT\
"id" AS ID,\
"name" AS NAME,\
"label" AS LABEL,\
"description" AS DESCRIPTION,\
"position" AS POSITION,\
"required_for_closure" AS REQUIRED_FOR_CLOSURE,\
"required_for_agents" AS REQUIRED_FOR_AGENTS,\
"type" AS TYPE,\
"default" AS DEFAULT,\
"customers_can_edit" AS CUSTOMERS_CAN_EDIT,\
"customers_can_filter" AS CUSTOMERS_CAN_FILTER,\
"label_for_customers" AS LABEL_FOR_CUSTOMERS,\
"required_for_customers" AS REQUIRED_FOR_CUSTOMERS,\
"displayed_to_customers" AS DISPLAYED_TO_CUSTOMERS,\
"created_at" AS CREATED_AT,\
"updated_at" AS UPDATED_AT,\
"portal_cc" AS PORTAL_CC,\
"portal_cc_to" AS PORTAL_CC_TO,\
"choices" AS CHOICES,\
PARSE_JSON(REPLACE(CHOICES, 'None', 'null')) AS CHOICES_PARSE,\
META_UNIQUE_HASH,\
META_ROW_HASH,\
META_IS_DELETED,\
META_INSERT_TIMESTAMP,\
META_UPDATE_TIMESTAMP\
FROM RAW.FRESHDESK_DSS.TICKET_FIELD}