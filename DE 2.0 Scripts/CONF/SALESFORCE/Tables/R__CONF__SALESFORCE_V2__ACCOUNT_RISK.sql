{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.SALESFORCE_V2.ACCOUNT_RISK\
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
"Account__c" AS "ACCOUNT__C",\
"Action_Plan__c" AS "ACTION_PLAN__C",\
"Date_Resolved__c" AS "DATE_RESOLVED__C",\
"Exec_Summary_Headline__c" AS "EXEC_SUMMARY_HEADLINE__C",\
"Exit_Criteria__c" AS "EXIT_CRITERIA__C",\
"Issue_Summary__c" AS "ISSUE_SUMMARY__C",\
"Key_Risk_Category__c" AS "KEY_RISK_CATEGORY__C",\
"Status__c" AS "STATUS__C",\
"Account_ARR__c" AS "ACCOUNT_ARR__C",\
"Account_Renew_Date__c" AS "ACCOUNT_RENEW_DATE__C",\
"Account_Tiering__c" AS "ACCOUNT_TIERING__C",\
"CreatedDate__c" AS "CREATEDDATE__C",\
"Renewal_Opportunity__c" AS "RENEWAL_OPPORTUNITY__C",\
"Risk_Mitigation_Plan_Link__c" AS "RISK_MITIGATION_PLAN_LINK__C",\
"Saved_ARR__c" AS "SAVED_ARR__C",\
"Severity_Level__c" AS "SEVERITY_LEVEL__C",\
"Renew_Opp_Contract_Renewal_Date__c" AS "RENEW_OPP_CONTRACT_RENEWAL_DATE__C",\
"Renewal_Opportunity_ARR_at_Risk__c" AS "RENEWAL_OPPORTUNITY_ARR_AT_RISK__C",\
"Playbook_s_Leveraged__c" as "PLAYBOOKS_LEVERAGED",\
META_UNIQUE_HASH AS META_UNIQUE_HASH,\
META_ROW_HASH AS META_ROW_HASH,\
META_IS_DELETED AS META_IS_DELETED,\
META_INSERT_TIMESTAMP AS META_INSERT_TIMESTAMP,\
META_UPDATE_TIMESTAMP AS META_UPDATE_TIMESTAMP\
FROM raw.salesforce_DSS.account_risk}