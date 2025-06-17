{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.SALESFORCE_V2.PARTNER\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT\
"attributes.type" AS "ATTRIBUTES.TYPE",\
"attributes.url" AS "ATTRIBUTES.URL",\
"Id" AS "ID",\
"Reseller__c" as RESELLER,\
"Partner_Name__c" ACCOUNT_ID,\
case when UPPER("IsDeleted") = 'FALSE' THEN FALSE ELSE TRUE END AS "ISDELETED",\
"Name" AS "NAME",\
"CurrencyIsoCode" AS "CURRENCYISOCODE",\
"CreatedDate" AS "CREATEDDATE",\
"CreatedById" AS "CREATEDBYID",\
"LastModifiedDate" AS "LASTMODIFIEDDATE",\
"LastModifiedById" AS "LASTMODIFIEDBYID",\
"SystemModstamp" AS "SYSTEMMODSTAMP",\
"LastActivityDate" AS "LASTACTIVITYDATE",\
"LastViewedDate" AS "LASTVIEWEDDATE",\
"LastReferencedDate" AS "LASTREFERENCEDDATE",\
"Opportunity__c" AS "OPPORTUNITY__C",\
"Agreement_Type__c" AS "AGREEMENT_TYPE__C",\
"Alliance_Partner_Opportunity_ID__c" AS "ALLIANCE_PARTNER_OPPORTUNITY_ID__C",\
"Approval_Date__c" AS "APPROVAL_DATE__C",\
"Approval_Status__c" AS "APPROVAL_STATUS__C",\
"Approver_Name__c" AS "APPROVER_NAME__C",\
"GNARR__c" AS "GNARR__C",\
"GNARR_at_Creation__c" AS "GNARR_AT_CREATION__C",\
"Opportunity_Close_Date__c" AS "OPPORTUNITY_CLOSE_DATE__C",\
"Global_System_Integrater__c" AS "GLOBAL_SYSTEM_INTEGRATER__C",\
"Influence_Fee_Due__c" AS "INFLUENCE_FEE_DUE__C",\
"Influence_Fee__c" AS "INFLUENCE_FEE__C",\
"MarketPlace_Guide__c" AS "MARKETPLACE_GUIDE__C",\
"PGL_Owner__c" AS "PGL_OWNER__C",\
"Partner_Lead_Sourced__c" AS "PARTNER_LEAD_SOURCED__C",\
"Partner_Name_Link__c" AS "PARTNER_NAME_LINK__C",\
"Partner_Name__c" AS "PARTNER_NAME__C",\
"Partner_Notes__c" AS "PARTNER_NOTES__C",\
"Partner_Role__c" AS "PARTNER_ROLE__C",\
"Partner_Scope__c" AS "PARTNER_SCOPE__C",\
"Partner_Sub_Type__c" AS "PARTNER_SUB_TYPE__C",\
"Partner_Type__c" AS "PARTNER_TYPE__C",\
"Primary_Partner__c" AS "PRIMARY_PARTNER__C",\
"Registered_Co_sell__c" AS "REGISTERED_CO_SELL__C",\
"Reseller_Discount__c" AS "RESELLER_DISCOUNT__C",\
"Stage_at_Creation__c" AS "STAGE_AT_CREATION__C",\
"Regional_System_Integrator__c" AS "REGIONAL_SYSTEM_INTEGRATOR__C",\
"Opportunity_s_Lead_Source__c" AS "OPPORTUNITY_S_LEAD_SOURCE__C",\
"Tier_from_Account__c" AS "TIER_FROM_ACCOUNT__C",\
"Transaction_via_Marketplace__c" AS "TRANSACTION_VIA_MARKETPLACE__C",\
"Partnership_Tiering__c" AS "PARTNERSHIP_TIERING__C",\
"Reference_ID__c" AS "REFERENCE_ID__C",\
"Opportunity_Stage__c" AS "OPPORTUNITY_STAGE__C",\
"L1_Support_Provider__c" AS "L1_SUPPORT_PROVIDER__C",\
"Migrated_Data__c" AS MIGRATED_DATA,\
"DPN_Tier__c" AS "DPN_TIER__C",\
"Partner_Scope_Calculated__c" as Partner_Scope_Calculated,\
META_UNIQUE_HASH AS META_UNIQUE_HASH,\
META_ROW_HASH AS META_ROW_HASH,\
META_IS_DELETED AS META_IS_DELETED,\
META_INSERT_TIMESTAMP AS META_INSERT_TIMESTAMP,\
META_UPDATE_TIMESTAMP AS META_UPDATE_TIMESTAMP\
FROM RAW.SALESFORCE_DSS.PARTNER}