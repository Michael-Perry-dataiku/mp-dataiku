{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.SALESFORCE_V2.CAMPAIGN\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT\
"Id" as Id,\
case when UPPER("IsDeleted") = 'FALSE' THEN FALSE ELSE TRUE END AS IsDeleted,\
"Name" as Name,\
"ParentId" as ParentId,\
"Type" as Type,\
"RecordTypeId" as RecordTypeId,\
"Status" as Status,\
"StartDate" as StartDate,\
"EndDate" as EndDate,\
"CurrencyIsoCode" as CurrencyIsoCode,\
"ExpectedRevenue" as ExpectedRevenue,\
"BudgetedCost" as BudgetedCost,\
"ActualCost" as ActualCost,\
"ExpectedResponse" as ExpectedResponse,\
"NumberSent" as NumberSent,\
"IsActive" as IsActive,\
"Description" as Description,\
"NumberOfLeads" as NumberOfLeads,\
"NumberOfConvertedLeads" as NumberOfConvertedLeads,\
"NumberOfContacts" as NumberOfContacts,\
"NumberOfResponses" as NumberOfResponses,\
"NumberOfOpportunities" as NumberOfOpportunities,\
"NumberOfWonOpportunities" as NumberOfWonOpportunities,\
"AmountAllOpportunities" as AmountAllOpportunities,\
"AmountWonOpportunities" as AmountWonOpportunities,\
"HierarchyNumberOfLeads" as HierarchyNumberOfLeads,\
"HierarchyNumberOfConvertedLeads" as HierarchyNumberOfConvertedLeads,\
"HierarchyNumberOfContacts" as HierarchyNumberOfContacts,\
"HierarchyNumberOfResponses" as HierarchyNumberOfResponses,\
"HierarchyNumberOfOpportunities" as HierarchyNumberOfOpportunities,\
"HierarchyNumberOfWonOpportunities" as HierarchyNumberOfWonOpportunities,\
"HierarchyAmountAllOpportunities" as HierarchyAmountAllOpportunities,\
"HierarchyAmountWonOpportunities" as HierarchyAmountWonOpportunities,\
"HierarchyNumberSent" as HierarchyNumberSent,\
"HierarchyExpectedRevenue" as HierarchyExpectedRevenue,\
"HierarchyBudgetedCost" as HierarchyBudgetedCost,\
"HierarchyActualCost" as HierarchyActualCost,\
"OwnerId" as OwnerId,\
"CreatedDate" as CreatedDate,\
"CreatedById" as CreatedById,\
"LastModifiedDate" as LastModifiedDate,\
"LastModifiedById" as LastModifiedById,\
"SystemModstamp" as SystemModstamp,\
"LastActivityDate" as LastActivityDate,\
"LastViewedDate" as LastViewedDate,\
"LastReferencedDate" as LastReferencedDate,\
"CampaignMemberRecordTypeId" as CampaignMemberRecordTypeId,\
"Campaign_Level__c" as Campaign_Level__c,\
"Campaign_Partner_Account__c" as Campaign_Partner_Account__c,\
"Geo__c" as Geo__c,\
"Goal__c" as Goal__c,\
"Hubspot_Campaign_ID__c" as Hubspot_Campaign_ID__c,\
"Sales_Enablement_Link__c" as Sales_Enablement_Link__c,\
"Short_name__c" as Short_name__c,\
"Territory__c" as Territory__c,\
"Ultimate_Parent_Campaign__c" as Ultimate_Parent_Campaign__c,\
"Event_location__Street__s" as Event_location__Street__s,\
"Event_location__City__s" as Event_location__City__s,\
"Event_location__PostalCode__s" as Event_location__PostalCode__s,\
"Event_location__StateCode__s" as Event_location__StateCode__s,\
"Event_location__CountryCode__s" as Event_location__CountryCode__s,\
"Event_location__Latitude__s" as Event_location__Latitude__s,\
"Event_location__Longitude__s" as Event_location__Longitude__s,\
"Event_location__GeocodeAccuracy__s" as Event_location__GeocodeAccuracy__s,\
"Event_location__c" as Event_location__c,\
"Event_sponsorship_details__c" as Event_sponsorship_details__c,\
"Event_type__c" as Event_type__c,\
"Platform_Vendor__c" as Platform_Vendor__c,\
"Event_Category__c" as Event_Category__c,\
"Related_content_campaign__c" as Related_content_campaign__c,\
"DGDM_Campaign_Group__c" as DGDM_Campaign_Group__c,\
"Campaign_Channel__c" as Campaign_Channel__c,\
"Campaign_Category__c" as Campaign_Category__c,\
"Campaign_Channel_Type__c" as Campaign_Channel_Type__c,\
META_UNIQUE_HASH as META_UNIQUE_HASH,\
META_ROW_HASH as META_ROW_HASH,\
META_IS_DELETED as META_IS_DELETED,\
META_INSERT_TIMESTAMP as META_INSERT_TIMESTAMP,\
META_UPDATE_TIMESTAMP as META_UPDATE_TIMESTAMP\
FROM RAW.SALESFORCE_DSS.CAMPAIGN}