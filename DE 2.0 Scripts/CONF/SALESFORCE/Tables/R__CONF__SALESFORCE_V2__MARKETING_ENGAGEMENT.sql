{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.SALESFORCE_V2.MARKETING_ENGAGEMENT\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT \
"attributes.type" AS attributes_type\
, "attributes.url" AS attributes_url\
, "Id" AS Id\
, "OwnerId" AS OwnerId\
, case when UPPER("IsDeleted") = 'FALSE' THEN FALSE ELSE TRUE END AS IsDeleted\
, "Name" AS Name\
, "CurrencyIsoCode" AS CurrencyIsoCode\
, "CreatedDate" AS CreatedDate\
, "CreatedById" AS CreatedById\
, "LastModifiedDate" AS LastModifiedDate\
, "LastModifiedById" AS LastModifiedById\
, "SystemModstamp" AS SystemModstamp\
, "LastActivityDate" AS LastActivityDate\
, "Automation_Completed__c" AS Automation_Completed__c\
, "Behavior_Score__c" AS Behavior_Score__c\
, "Campaign_Category__c" AS Campaign_Category__c\
, "Campaign_Channel_Type__c" AS Campaign_Channel_Type__c\
, "Campaign_Channel__c" AS Campaign_Channel__c\
, "Campaign_Geo__c" AS Campaign_Geo__c\
, "Campaign_Member_Status__c" AS Campaign_Member_Status__c\
, "Campaign_Name__c" AS Campaign_Name__c\
, "Campaign_Status__c" AS Campaign_Status__c\
, "Campaign_Territory__c" AS Campaign_Territory__c\
, "Campaign_Type__c" AS Campaign_Type__c\
, "Co_marketing_Campaign__c" AS Co_marketing_Campaign__c\
, "Company__c" AS Company__c\
, "Contact_ID__c" AS Contact_ID__c\
, "Eligible_to_Become_MQL__c" AS Eligible_to_Become_MQL__c\
, "Email__c" AS Email__c\
, "Exec_Community_Campaign__c" AS Exec_Community_Campaign__c\
, "First_Name__c" AS First_Name__c\
, "Job_Title__c" AS Job_Title__c\
, "Last_Name__c" AS Last_Name__c\
, "Lead_ID__c" AS Lead_ID__c\
, "Parent_Campaign__c" AS Parent_Campaign__c\
, "Persona__c" AS Persona__c\
, "Profile_Fit_Score__c" AS Profile_Fit_Score__c\
, "UTM_Campaign__c" AS UTM_Campaign__c\
, "UTM_Medium__c" AS UTM_Medium__c\
, "UTM_Source__c" AS UTM_Source__c\
\
FROM\
$\{DEV_DB\}RAW.SALESFORCE_DSS.MARKETING_ENGAGEMENT\
}