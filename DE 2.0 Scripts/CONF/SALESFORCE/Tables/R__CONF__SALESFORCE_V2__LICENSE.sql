{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.SALESFORCE_V2.LICENSE\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT\
TO_TIMESTAMP_TZ(LEFT("CreatedDate",19)) AS CREATEDDATE,\
"Id" AS ID,\
"Account__c" AS ACCOUNT__C,\
"Activate_Intercom_support__c" AS ACTIVATE_INTERCOM_SUPPORT__C,\
"CreatedById" AS CREATEDBYID,\
"Custom_license__c" AS CUSTOM_LICENSE__C,\
"Custom_license_comment__c" AS CUSTOM_LICENSE_COMMENT__C,\
TO_TIMESTAMP_TZ(LEFT("Expiration_Date__c",19)) AS EXPIRATION_DATE__C,\
"Features__c" AS FEATURES__C,\
"Instance_Id__c" AS INSTANCE_ID__C,\
"License_Perimeter__c" AS LICENSE_PERIMETER__C,\
"Name" AS NAME,\
"Number_Data_Analyst_users__c" AS NUMBER_DATA_ANALYST_USERS__C,\
"Number_Data_Scientist_users__c" AS NUMBER_DATA_SCIENTIST_USERS__C,\
"Number_Explorer_users__c" AS NUMBER_EXPLORER_USERS__C,\
"Number_Readers_users__c" AS NUMBER_READERS_USERS__C,\
"Number_of_Administrators__c" AS NUMBER_OF_ADMINISTRATORS__C,\
"Number_of_Admins_New__c" AS NUMBER_OF_ADMINS_NEW__C,\
"Number_of_Designers_New__c" AS NUMBER_OF_DESIGNERS_NEW__C,\
"Number_of_Explorers_New__c" AS NUMBER_OF_EXPLORERS_NEW__C,\
"Number_of_Readers_New__c" AS NUMBER_OF_READERS_NEW__C,\
"Number_of_Visual_Designers_New__c" AS NUMBER_OF_VISUAL_DESIGNERS_NEW__C,\
TO_TIMESTAMP_TZ(LEFT("Opp_Subscription_End_Date__c",19)) AS OPP_SUBSCRIPTION_END_DATE__C,\
TO_TIMESTAMP_TZ(LEFT("Opp_Subscription_Start_Date__c",19)) AS OPP_SUBSCRIPTION_START_DATE__C,\
"Opportunity__c" AS OPPORTUNITY__C,\
"Opportunity_StageName__c" AS OPPORTUNITY_STAGENAME__C,\
"Opportunity_Owner__c" AS OPPORTUNITY_OWNER__C,\
"Opportunity_Name__c" AS OPPORTUNITY_NAME__C,\
"Opportunity_Owner_Email__c" AS OPPORTUNITY_OWNER_EMAIL__C,\
"Opportunity_Region__c" AS OPPORTUNITY_REGION__C,\
"Prevent_email_collection__c" AS PREVENT_EMAIL_COLLECTION__C,\
"Pricing_Year__c" AS PRICING_YEAR__C,\
"Status__c" AS STATUS__C,\
"Type__c" AS TYPE__C,\
"Subscription_Length__c" AS SUBSCRIPTION_LENGTH__C,\
"email__c" AS EMAIL__C,\
"Hide_Usage_Collection_Settings__c" AS HIDE_USAGE_COLLECTION_SETTINGS__C,\
"Opportunity_Hide_Usage_Settings__c" AS OPPORTUNITY_HIDE_USAGE_SETTINGS__C,\
case when UPPER("IsDeleted") = 'FALSE' THEN FALSE ELSE TRUE END AS IS_DELETED,\
"META_UNIQUE_HASH" as META_UNIQUE_HASH,\
"META_ROW_HASH" as META_ROW_HASH,\
"META_IS_DELETED" as META_IS_DELETED,\
"META_INSERT_TIMESTAMP" as META_INSERT_TIMESTAMP,\
"META_UPDATE_TIMESTAMP" as META_UPDATE_TIMESTAMP\
\
FROM RAW.SALESFORCE_DSS.LICENSE}