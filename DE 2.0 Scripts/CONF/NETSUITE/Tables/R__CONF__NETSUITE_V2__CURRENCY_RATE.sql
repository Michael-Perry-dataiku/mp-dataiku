{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.NETSUITE_V2.CURRENCY_RATE\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT \
id as currency_rate_id,\
effectivedate as effective_date,\
basecurrency as base_currency_id,\
transactioncurrency as transaction_currency_id,\
exchangerate as exchange_rate,\
fxsourcemethod as fx_source_method,\
lastmodifieddate as last_modified_date,\
_fivetran_deleted as meta_is_deleted,\
_fivetran_synced as meta_raw_load_timestamp,\
'NETSUITE' AS META_SOURCE_NAME\
From raw.netsuite.currencyrate}