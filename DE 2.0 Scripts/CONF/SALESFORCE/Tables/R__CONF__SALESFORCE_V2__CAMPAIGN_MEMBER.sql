{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.SALESFORCE_V2.CAMPAIGN_MEMBER\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT\
"Id" as ID,\
case when UPPER("IsDeleted") = 'FALSE' THEN FALSE ELSE TRUE END AS IS_DELETED,\
"CampaignId" as CAMPAIGN_ID,\
"LeadId" as LEAD_ID,\
"ContactId" as CONTACT_ID,\
"Status" as STATUS,\
"HasResponded" as HAS_RESPONDED,\
"CreatedDate" as CREATED_DATE,\
"CreatedById" as CREATED_BY_ID,\
"LastModifiedDate" as LAST_MODIFIED_DATE,\
"LastModifiedById" as LAST_MODIFIED_BY_ID,\
"SystemModstamp" as SYSTEM_MODSTAMP,\
"FirstRespondedDate" as FIRST_RESPONDED_DATE,\
"CurrencyIsoCode" as CURRENCY_ISO_CODE,\
"Salutation" as SALUTATION,\
"Name" as NAME,\
"FirstName" as FIRST_NAME,\
"LastName" as LAST_NAME,\
"Title" as TITLE,\
"Street" as STREET,\
"City" as CITY,\
"State" as STATE,\
"PostalCode" as POSTAL_CODE,\
"Country" as COUNTRY,\
"Email" as EMAIL,\
"Phone" as PHONE,\
"Fax" as FAX,\
"MobilePhone" as MOBILE_PHONE,\
"Description" as DESCRIPTION,\
"DoNotCall" as DO_NOT_CALL,\
"HasOptedOutOfEmail" as HAS_OPTED_OUT_OF_EMAIL,\
"HasOptedOutOfFax" as HAS_OPTED_OUT_OF_FAX,\
"LeadSource" as LEAD_SOURCE,\
"CompanyOrAccount" as COMPANY_OR_ACCOUNT,\
"Type" as TYPE,\
"LeadOrContactId" as LEAD_OR_CONTACT_ID,\
"LeadOrContactOwnerId" as LEAD_OR_CONTACT_OWNER_ID,\
"Account_Type__c" as ACCOUNT_TYPE,\
"Continent__c" as CONTINENT,\
"Hubspot_Lifecycle_Stage__c" as HUBSPOT_LIFECYCLE_STAGE,\
"tt_itda_watch__Tech_Target_Import_Timestamp__c" as TT_ITDA_WATCH__TECH_TARGET_IMPORT_TIMESTAMP,\
"In_Target_Account_Group__c" as IN_TARGET_ACCOUNT_GROUP,\
"Last_activity_date__c" as LAST_ACTIVITY_DATE,\
"Lead_Contact_Status__c" as LEAD_CONTACT_STATUS,\
"Lead_Interest__c" as LEAD_INTEREST,\
"Persona__c" as PERSONA,\
"Recent_Conversion__c" as RECENT_CONVERSION,\
"Region__c" as REGION,\
"Industry__c" as INDUSTRY,\
"Related_parent_account__c" as RELATED_PARENT_ACCOUNT,\
"Sales_Sub_Region__c" as SALES_SUB_REGION,\
"Lead_Country__c" as LEAD_COUNTRY,\
"Trigger_MQL_Workflow__c" as TRIGGER_MQL_WORKFLOW,\
"MQL_Criteria_Met__c" as MQL_CRITERIA_MET,\
"For_Updates__c" as FOR_UPDATES,\
META_IS_DELETED\
FROM RAW.SALESFORCE_DSS.CAMPAIGN_MEMBER}