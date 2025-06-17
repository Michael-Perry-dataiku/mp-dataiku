{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.SALESFORCE_V2.LICENSE_PERIMETER\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT\
"Id" as ID\
,"OwnerId" as OWNER_ID\
,case when UPPER("IsDeleted") = 'FALSE' THEN FALSE ELSE TRUE END AS IS_DELETED\
,"Name" as NAME\
,"CurrencyIsoCode" as CURRENCY_ISO_CODE\
,"RecordTypeId" as RECORDTYPEID\
,TO_TIMESTAMP_TZ(LEFT("CreatedDate",19)) as CREATED_DATE\
,"CreatedById" as CREATED_BY_ID\
,TO_TIMESTAMP_TZ(LEFT("LastModifiedDate",19)) as LASTMODIFIEDDATE\
,"LastModifiedById" as LASTMODIFIEDBYID\
,"SystemModstamp" as SYSTEMMODSTAMP\
,"LastActivityDate" as LASTACTIVITYDATE\
,"LastViewedDate" as LASTVIEWEDDATE\
,"LastReferencedDate" as LASTREFERENCEDDATE\
,"Account__c" as ACCOUNT__C\
,"License_Perimeter_Type__c" as LICENSE_PERIMETER_TYPE__C\
,"Dataiku_Cloud_Space_Id__c" as DATAIKU_CLOUD_SPACE_ID__C\
,"Max_DS_Designers__c" as MAX_DS_DESIGNERS__C\
,"Instance_ID__c" as INSTANCE_ID__C\
,"License_Owner1__c" as LICENSE_OWNER1__C\
,"Perimeter_Id__c" as PERIMETER_ID__C\
,"Project_Description__c" as PROJECT_DESCRIPTION__C\
,"Prevent_email_collection__c" as PREVENT_EMAIL_COLLECTION__C\
,"License_Owner_Email__c" as LICENSE_OWNER_EMAIL__C\
,"Perimeter_Warning__c" as PERIMETER_WARNING__C\
,"Exclude_from_reporting__c" as EXCLUDE_FROM_REPORTING__C\
,TO_TIMESTAMP_TZ(LEFT("Last_license_expiration__c",19)) as LAST_LICENSE_EXPIRATION__C\
,"Legacy_license_perimeter__c" as LEGACY_LICENSE_PERIMETER__C\
,"DSS_version__c" as DSS_VERSION__C\
,"Prevent_license_creation__c" as PREVENT_LICENSE_CREATION__C\
,"Customer_License_count__c" as CUSTOMER_LICENSE_COUNT__C\
,"Licenses_Contain_Usage_Collection__c" AS LICENSES_CONTAIN_USAGE_COLLECTION__C\
,"Prevent_Email_Collection_New__c" AS PREVENT_EMAIL_COLLECTION_NEW__C\
,"META_UNIQUE_HASH" as META_UNIQUE_HASH\
,"META_ROW_HASH" as META_ROW_HASH\
,"META_IS_DELETED" as META_IS_DELETED\
,"META_INSERT_TIMESTAMP" as META_INSERT_TIMESTAMP\
,"META_UPDATE_TIMESTAMP" as META_UPDATE_TIMESTAMP\
\
FROM RAW.SALESFORCE_DSS.LICENSE_PERIMETER}