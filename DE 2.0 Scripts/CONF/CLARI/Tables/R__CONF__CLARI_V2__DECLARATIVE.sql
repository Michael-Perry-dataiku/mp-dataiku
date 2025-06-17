{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.CLARI_V2.DECLARATIVE\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT\
"quotaValue" AS QUOTA_VALUE,\
"aggregationTotal" AS AGGREGATION_TOTAL,\
parse_json("currency"):code::TEXT AS CURRENCY,\
"timeFrameId" AS TIME_FRAME_ID,\
"timePeriodId" AS TIME_PERIOD_ID,\
"fieldId" AS FIELD_ID,\
"userId"::STRING AS USER_ID,\
"forecastId" AS FORECAST_ID,\
"timePeriod" AS TIME_PERIOD,\
"forecastValue" AS FORECAST_VALUE,\
"updatedBy" AS UPDATED_BY,\
TO_TIMESTAMP_TZ("updatedOn"::VARCHAR) AS UPDATED_ON,\
"isUpdated" AS IS_UPDATED,\
"adjustmentValue" AS ADJUSTMENT_VALUE,\
"adjustedBy" AS ADJUSTED_BY,\
TO_TIMESTAMP_TZ("adjustedOn"::VARCHAR) AS ADJUSTED_ON,\
"name" AS NAME,\
"email" AS EMAIL,\
"scopeId" AS SCOPE_ID,\
"user_crmId" AS USER_CRM_ID,\
"hierarchyId" AS HIERARCHY_ID,\
REPLACE("hierarchyName",'US General Business','AMER Emerging Enterprise') AS HIERARCHY_NAME, -- Before region name change: "hierarchyName" AS HIERARCHY_NAME,\
"parentHierarchyId" AS PARENT_HIERARCHY_ID,\
REPLACE("parentHierarchyName",'US General Business','AMER Emerging Enterprise') AS PARENT_HIERARCHY_NAME, -- Before region name change: "parentHierarchyName" AS PARENT_HIERARCHY_NAME,\
"fieldName" AS FIELD_NAME,\
M.FIELD_NAME_MAPPED,\
"fieldType" AS FIELD_TYPE,\
"timeFrame_startDate" AS TIME_FRAME_START_DATE,\
"timeFrame_endDate" AS TIME_FRAME_END_DATE,\
"type" AS TYPE,\
"label" AS LABEL,\
"year" AS YEAR,\
"timePeriod_startDate" AS TIME_PERIOD_START_DATE,\
"timePeriod_endDate" AS TIME_PERIOD_END_DATE,\
"timePeriod_crmId" AS TIME_PERIOD_CRM_ID,\
CASE\
WHEN FORECAST_ID IN ('net_new_forecast_reporting') THEN 'Reporting'\
WHEN FORECAST_ID IN ('downsell_churn','forecast','forecast_Initial_upsell_gnarr','initial_upsell') THEN 'Booking'\
ELSE NULL\
END AS ARR_VERSION,\
'CLARI' AS META_SOURCE_NAME,\
META_UNIQUE_HASH,\
META_ROW_HASH,\
META_IS_DELETED,\
META_INSERT_TIMESTAMP,\
META_UPDATE_TIMESTAMP,\
METADATA_SNAPSHOT_DATETIME,\
METADATA_UNIQUE_ID,\
METADATA_RECORD_START,\
METADATA_RECORD_END,\
METADATA_ACTIVE_FLAG\
FROM RAW.SNAPSHOT_CLARI_DSS.V_SNAPSHOT_DECLARATIVE D\
JOIN RAW.CLARI.FIELDS_MAPPING M\
ON D."forecastId" = M.FORECAST_ID\
AND D."fieldId" = M.FIELD_ID\
AND D."fieldName" = M.FIELD_NAME\
AND M.FIELD_NAME_MAPPED NOT LIKE '%Duplicate%'}