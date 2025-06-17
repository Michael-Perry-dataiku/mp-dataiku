{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.SALESFORCE_V2.CUSTOMER_ENGAGEMENT\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT\
\
"Id" AS Id\
,"Name" AS Name\
,"Engagement_Type__c" AS Engagement_Type__c\
,"attributes.type" AS attributes_type\
,"attributes.url" AS attribute_url\
,case when UPPER("IsDeleted") = 'FALSE' THEN FALSE ELSE TRUE END AS IsDeleted\
,"CurrencyIsoCode" AS CurrencyIsoCode\
,"RecordTypeId" AS RecordTypeId\
,"CreatedDate" AS CreatedDate\
,"CreatedById" AS CreatedById\
,"LastModifiedDate" AS LastModifiedDate\
,"LastModifiedById" AS LastModifiedById\
,"SystemModstamp" AS SystemModstamp\
,"LastActivityDate" AS LastActivityDate\
,"LastViewedDate" AS LastViewedDate\
,"LastReferencedDate" AS LastReferencedDate\
,"Account__c" AS Account__c\
,"CreatedByName__c" AS CreatedByName__c\
,"Date_Completed__c" AS Date_Completed__c\
,"Engagement_Outcome__c" AS Engagement_Outcome__c\
,"IKT_Status__c" AS IKT_Status__c\
,"Joint_Success_Plan_Kickoff_Date__c" AS Joint_Success_Plan_Kickoff_Date__c\
,"Meeting_Date__c" AS Meeting_Date__c\
,"Opportunity__c" AS Opportunity__c\
,"PTV_Deck__c" AS PTV_Deck__c\
,"PTV_Document__c" AS PTV_Document__c\
,"QBR_Pre_Read__c" AS QBR_Pre_Read__c\
,"QBR_Presentation__c" AS QBR_Presentation__c\
,"Reference_Requester_Account__c" AS Reference_Requester_Account__c\
,"Reference_Type__c" AS Reference_Type__c\
,"Status__c" AS Status__c\
,"Account_ARR_Current_FY_USD__c" AS Account_ARR_Current_FY_USD__c\
,"Account_CSM__c" AS Account_CSM__c\
,"Joint_Success_Plan__c" AS Joint_Success_Plan__c\
,"Opportunity_GNARR_Current_FY_USD__c" AS Opportunity_GNARR_Current_FY_USD__c\
,"Opportunity_Subscription_Start_Date__c" AS Opportunity_Subscription_Start_Date__c\
,"Opportunity_Type__c" AS Opportunity_Type__c\
,"Reference_Contact__c" AS Reference_Contact__c\
,"Assigned_to_Me__c" AS Assigned_to_Me__c\
,"Due_Date__c" AS Due_Date__c\
,"Dataiku_User_Workshop_Type__c" AS Dataiku_User_Workshop_Type__c\
,"Willingness_to_adopt_prod_capabilities__c" AS Willingness_to_adopt_prod_capabilities__c\
,"Readiness_to_deliver_on_this_program__c" AS Readiness_to_deliver_on_this_program__c\
,"Alignment_to_account_goals__c" AS Alignment_to_account_goals__c\
,"Est_Total_Addressable_Market_users__c" AS Est_Total_Addressable_Market_users__c\
,"Next_Step__c" AS Next_Step__c\
,"Has_the_customer_been_introduced_to_Data__c" AS Has_the_customer_been_introduced_to_Data__c\
\
,"GTM_Program_Detail__c" AS GTM_Program_Detail__c\
FROM\
RAW.SALESFORCE_DSS.CUSTOMER_ENGAGEMENT\
}