{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.GONG_V2.USER_ACTIVITY\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
WITH new_data as (select\
"userId" AS userId, \
TO_DATE("toDateTime",'AUTO') AS toDateTime,\
"userEmailAddress" as userEmailAddress,\
"callsAsHost" - lag("callsAsHost") over(partition by "userId" order by "toDateTime") AS callsAsHost, \
"callsGaveFeedback" - lag("callsGaveFeedback") over(partition by "userId" order by "toDateTime") AS callsGaveFeedback, \
"callsRequestedFeedback" - lag("callsRequestedFeedback") over(partition by "userId" order by "toDateTime") AS callsRequestedFeedback, \
"callsReceivedFeedback" - lag("callsReceivedFeedback") over(partition by "userId" order by "toDateTime") AS callsReceivedFeedback, \
"ownCallsListenedTo" - lag("ownCallsListenedTo") over(partition by "userId" order by "toDateTime") AS ownCallsListenedTo, \
"othersCallsListenedTo" - lag("othersCallsListenedTo") over(partition by "userId" order by "toDateTime") AS othersCallsListenedTo, \
"callsSharedInternally" - lag("callsSharedInternally") over(partition by "userId" order by "toDateTime") AS callsSharedInternally, \
"callsSharedExternally" - lag("callsSharedExternally") over(partition by "userId" order by "toDateTime") AS callsSharedExternally,\
"callsScorecardsFilled" - lag("callsScorecardsFilled") over(partition by "userId" order by "toDateTime") AS callsScorecardsFilled, \
"callsScorecardsReceived" - lag("callsScorecardsReceived") over(partition by "userId" order by "toDateTime") AS callsScorecardsReceived, \
"callsAttended" - lag("callsAttended") over(partition by "userId" order by "toDateTime") AS callsAttended, \
"callsCommentsGiven" - lag("callsCommentsGiven") over(partition by "userId" order by "toDateTime") AS callsCommentsGiven, \
"callsCommentsReceived" - lag("callsCommentsReceived") over(partition by "userId" order by "toDateTime") AS callsCommentsReceived, \
"callsMarkedAsFeedbackGiven" - lag("callsMarkedAsFeedbackGiven") over(partition by "userId" order by "toDateTime") AS callsMarkedAsFeedbackGiven, \
"callsMarkedAsFeedbackReceived" - lag("callsMarkedAsFeedbackReceived") over(partition by "userId" order by "toDateTime") AS callsMarkedAsFeedbackReceived,\
"listensandfeedback" - lag("listensandfeedback") over(partition by "userId" order by "toDateTime") AS listensandfeedback, \
"totalactivity" - lag("totalactivity") over(partition by "userId" order by "toDateTime") AS totalactivity,\
META_IS_DELETED,\
'GONG' AS META_SOURCE_NAME\
from $\{DEV_DB\}RAW.GONG_DSS.USER_ACTIVITY),\
old_data as (select\
userId,\
TO_DATE(toDateTime) AS toDateTime,\
userEmailAddress,\
callsAsHost,\
callsGaveFeedback,\
callsRequestedFeedback,\
callsReceivedFeedback,\
ownCallsListenedTo,\
othersCallsListenedTo,\
callsSharedInternally,\
callsSharedExternally,\
callsScorecardsFilled,\
callsScorecardsReceived,\
callsAttended,\
callsCommentsGiven,\
callsCommentsReceived,\
callsMarkedAsFeedbackGiven,\
callsMarkedAsFeedbackReceived,\
listensandfeedback,\
totalactivity,\
CAST(NULL AS BOOLEAN) AS META_IS_DELETED,\
'GONG' AS META_SOURCE_NAME\
FROM $\{DEV_DB\}RAW.GONG_DSS.USER_ACTIVITY_MIGRATED),\
\
union_table as (select \
* \
from \
old_data \
where old_data.todatetime <= '2023-11-09'\
union\
select \
* \
from \
new_data \
where new_data.todatetime > '2023-11-09')\
select * from union_table order by todatetime desc}