{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.SALESFORCE_V2.OPPORTUNITY_LINE_ITEM\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT \
"Id" as ID\
,"OpportunityId" as OPPORTUNITY_ID\
,"SortOrder" as SORTORDER\
,"PricebookEntryId" as PRICEBOOK_ENTRY_ID\
,"Product2Id" as PRODUCT_2_ID\
,"ProductCode" as PRODUCT_CODE\
,"Name" as NAME\
,"Quantity" as QUANTITY\
,"Discount" as DISCOUNT\
,"Subtotal" as SUBTOTAL\
,"TotalPrice" as TOTAL_PRICE\
,"UnitPrice" as UNIT_PRICE\
,"ListPrice" as LIST_PRICE\
,"ServiceDate" as SERVICE_DATE\
,"Description" as DESCRIPTION\
,TO_TIMESTAMP_TZ(LEFT("CreatedDate",19)) as CREATEDDATE\
,"CreatedById" as CREATEDBYID\
,TO_TIMESTAMP_TZ(LEFT("LastModifiedDate",19)) as LASTMODIFIEDDATE\
,"LastModifiedById" as LASTMODIFIEDBYID\
,"SystemModstamp" as SYSTEMMODSTAMP\
,"Total__c" as TOTAL__C\
,"CPQ_Generated__c" as CPQ_GENERATED__C\
,"Product_Id__c" as PRODUCT_ID__C\
,"Familly__c" as FAMILLY__C\
,"Product_Description__c" as PRODUCT_DESCRIPTION__C\
,"Duration__c" as DURATION__C\
,"SBQQ__ParentID__c" as SBQQ__PARENTID__C\
,"Opportunity_Type__c" as OPPORTUNITY_TYPE__C\
,"SBQQ__QuoteLine__c" as SBQQ__QUOTELINE__C\
,"SBQQ__SubscriptionType__c" as SBQQ__SUBSCRIPTIONTYPE__C\
,"CPQQuoteLineMRR__c" as CPQQUOTELINEMRR__C\
,LEFT("EndDate__c",10)::DATE as ENDDATE__C\
,"GroupName__c" as GROUPNAME__C\
,"IgnoreLineCPQ__c" as IGNORELINECPQ__C\
,"Ignore_Line__c"::BOOLEAN as IGNORE_LINE__C\
,"MRRCPQ__c" as MRRCPQ__C\
,"ProrateMultiplier__c" as PRORATEMULTIPLIER__C\
,LEFT("StartDate__c",10)::DATE as STARTDATE__C\
,TO_TIMESTAMP_TZ(LEFT("Technical_Services_Availability_Date__c",19)) as TECHNICAL_SERVICES_AVAILABILITY_DATE__C\
,TO_TIMESTAMP_TZ(LEFT("Technical_Services_Expiry_Date__c",19)) as TECHNICAL_SERVICES_EXPIRY_DATE__C\
,"TEMP_Annual_Net_Unit_Price__c" as TEMP_ANNUAL_NET_UNIT_PRICE__C\
,"IsUser__c" as ISUSER__C\
,"Duration_text__c" as DURATION_TEXT__C\
,"Line_Description1__c" as LINE_DESCRIPTION1__C\
,"Milestone_Type__c" as MILESTONE_TYPE__C\
,"Annual_Fees_Per_User__c" as ANNUAL_FEES_PER_USER__C\
,"Fees_with_Discount__c" as FEES_WITH_DISCOUNT__C\
,"Discounted_Daily_Rate__c" as DISCOUNTED_DAILY_RATE__C\
,"ARR__c" as ARR__C\
,"Sub_Family__c" as SUB_FAMILY__C\
,"Annual_Fees__c" as ANNUAL_FEES__C\
,"sbaa__ApprovalStatus__c" as SBAA__APPROVALSTATUS__C\
,"Opportunity_Total__c" as OPPORTUNITY_TOTAL__C\
,"Sub_Family_From_Product__c" as SUB_FAMILY_FROM_PRODUCT__C\
,"CurrencyIsoCode" as CURRENCY_ISO_CODE\
,case when UPPER("IsDeleted") = 'FALSE' THEN FALSE ELSE TRUE END AS "ISDELETED"\
,"META_UNIQUE_HASH" as META_UNIQUE_HASH\
,"META_ROW_HASH" as META_ROW_HASH\
,"META_IS_DELETED" as META_IS_DELETED\
,"META_INSERT_TIMESTAMP" as META_INSERT_TIMESTAMP\
,"META_UPDATE_TIMESTAMP" as META_UPDATE_TIMESTAMP\
FROM RAW.SALESFORCE_DSS.OPPORTUNITY_LINE_ITEM}