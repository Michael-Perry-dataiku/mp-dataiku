{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.SALESFORCE_V2.LEAD\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT\
"Id" as "ID",\
CASE WHEN UPPER("IsDeleted"::VARCHAR) = 'FALSE' then False else True END as "ISDELETED",\
"LastName" as "LASTNAME",\
"FirstName" as "FIRSTNAME",\
"Name" as "NAME",\
"RecordTypeId" as "RECORDTYPEID",\
"Title" as "TITLE",\
"Phone" as "PHONE",\
"Email" as "EMAIL",\
"Website" as "WEBSITE",\
"LeadSource" as "LEADSOURCE",\
"Status" as "STATUS",\
"Industry" as "INDUSTRY",\
"CurrencyIsoCode" as "CURRENCYISOCODE",\
"AnnualRevenue" as "ANNUALREVENUE",\
"OwnerId" as "OWNERID",\
"IsConverted" as "ISCONVERTED",\
"ConvertedDate" as "CONVERTEDDATE",\
"ConvertedAccountId" as "CONVERTEDACCOUNTID",\
"ConvertedContactId" as "CONVERTEDCONTACTID",\
"ConvertedOpportunityId" as "CONVERTEDOPPORTUNITYID",\
"CreatedDate" as "CREATEDDATE",\
"CreatedById" as "CREATEDBYID",\
"LastModifiedDate" as "LASTMODIFIEDDATE",\
"LastModifiedById" as "LASTMODIFIEDBYID",\
"SDR_Status__c" as "SDR_STATUS__C",\
"Contact_Qualification__c" as "CONTACT_QUALIFICATION__C",\
"Role__c" as "ROLE__C",\
"Country__c" as "COUNTRY__C",\
"Conversion_Origin__c" as "CONVERSION_ORIGIN__C",\
"Lead_owner_copy__c" as "LEAD_OWNER_COPY__C",\
"SDR_Lead_Channel__c" as "SDR_LEAD_CHANNEL__C",\
"MQL_Score__c" as "MQL_SCORE__C",\
"SDR_Refuse_MQL__c" as "SDR_REFUSE_MQL__C",\
"Discovery_Call_Date__c" as "DISCOVERY_CALL_DATE__C",\
"MQL_Conversion__c" as "MQL_CONVERSION__C",\
"Recent_Conversion__c" as "RECENT_CONVERSION__C",\
"Became_a_MQL_Date__c" as "BECAME_A_MQL_DATE__C",\
"Reactivated_First_Outreach_Engagement__c" as "REACTIVATED_FIRST_OUTREACH_ENGAGEMENT__C",\
"First_Conversion__c" as "FIRST_CONVERSION__C",\
"Lead_Qualification_Document__c" as "LEAD_QUALIFICATION_DOCUMENT__C",\
"SAL_Meeting_Date__c" as "SAL_MEETING_DATE__C",\
"MQL_Origin__c" as "MQL_ORIGIN__C",\
"Lead_Interest_Date__c" as "LEAD_INTEREST_DATE__C",\
"Recent_Lead_Interest_Date__c" as "RECENT_LEAD_INTEREST_DATE__C",\
"Account__c" as "ACCOUNT__C",\
"Lead_Interest__c" as "LEAD_INTEREST__C",\
"Generated_Opportunity__c" as "GENERATED_OPPORTUNITY__C",\
"Days_Dormant__c" as "DAYS_DORMANT__C",\
"Lead_Owner_Role__c" as "LEAD_OWNER_ROLE__C",\
"State_or_Territory__c" as "STATE_OR_TERRITORY__C",\
"Lead_Continent__c" as "LEAD_CONTINENT__C",\
"Inbound_First_Outreach_Engagement__c" as "INBOUND_FIRST_OUTREACH_ENGAGEMENT__C",\
"Record_Last_Transferred_by__c" as "RECORD_LAST_TRANSFERRED_BY__C",\
"Recent_Lead_Interest__c" as "RECENT_LEAD_INTEREST__C",\
"In_Target_Account_Group__c" as "IN_TARGET_ACCOUNT_GROUP__C",\
"First_Lead_Interest__c" as "FIRST_LEAD_INTEREST__C",\
"First_Lead_Interest_Date__c" as "FIRST_LEAD_INTEREST_DATE__C",\
"Number_of_Employees__c" as "NUMBER_OF_EMPLOYEES__C",\
"Re_engage_after_Lost_Date__c" as "RE_ENGAGE_AFTER_LOST_DATE__C",\
"Date_of_Contact_Request__c" as "DATE_OF_CONTACT_REQUEST__C",\
"Related_Account__c" as "RELATED_ACCOUNT__C",\
"Date_Moved_to_Dormant__c" as "DATE_MOVED_TO_DORMANT__C",\
"Region__c" as "REGION__C",\
"Sub_Region__c" as "SUB_REGION__C",\
"Date_Moved_to_Discovery_Call__c" as "DATE_MOVED_TO_DISCOVERY_CALL__C",\
"Original_Source__c" as "ORIGINAL_SOURCE__C",\
"Marketing_Territory__c" as "MARKETING_TERRITORY__C",\
"Lead_Provider__c" as "LEAD_PROVIDER__C",\
"Secondary_Email__c" as "SECONDARY_EMAIL__C",\
"SQA_Date__c" as "SQA_DATE__C",\
"Marketing_Lead_Sources__c" as "MARKETING_LEAD_SOURCES__C",\
"Marketing_Territory_Main__c" as "MARKETING_TERRITORY_MAIN__C",\
"Disqualified_Date__c" as "DISQUALIFIED_DATE__C",\
"SDR_Lead_Source__c" as "SDR_LEAD_SOURCE__C",\
"Days_since_became_an_MQL__c" as "DAYS_SINCE_BECAME_AN_MQL__C",\
"Reactivation_Reason__c" as "REACTIVATION_REASON__C",\
"Number_of_Active_Sequences__c" as "NUMBER_OF_ACTIVE_SEQUENCES__C",\
"Name_of_Currently_Active_Sequence__c" as "NAME_OF_CURRENTLY_ACTIVE_SEQUENCE__C",\
"Is_Dataiku_Candidate__c" as "IS_DATAIKU_CANDIDATE__C",\
"Do_not_contact__c" as "DO_NOT_CONTACT__C",\
"HasOptedOutOfEmail" as "HASOPTEDOUTOFEMAIL",\
"Unsubscribed__c" as "UNSUBSCRIBED__C",\
"Marketing_email_hard_bounce__c" as "MARKETING_EMAIL_HARD_BOUNCE__C",\
"High_Priority__c" as "HIGH_PRIORITY__C",\
"Target_Account__c" as "TARGET_ACCOUNT__C",\
"Date_Moved_to_In_Process__c" as "DATE_MOVED_TO_IN_PROCESS__C",\
"Date_SDR_Assigned__c" as "DATE_SDR_ASSIGNED__C",\
"Persona__c" as "PERSONA__C",\
"Actively_Engaged_Lead__c" as "ACTIVELY_ENGAGED_LEAD__C",\
"Current_Sequence_Step_Due__c" as "CURRENT_SEQUENCE_STEP_DUE__C",\
"Initial_Sequence_Date__c" as "INITIAL_SEQUENCE_DATE__C",\
"Outreach_Actively_being_sequenced__c" as "OUTREACH_ACTIVELY_BEING_SEQUENCED__C",\
"Outreach_Current_Sequence_ID__c" as "OUTREACH_CURRENT_SEQUENCE_ID__C",\
"Outreach_Current_Sequence_Name__c" as "OUTREACH_CURRENT_SEQUENCE_NAME__C",\
"Outreach_Current_Sequence_Status__c" as "OUTREACH_CURRENT_SEQUENCE_STATUS__C",\
"Outreach_Current_Sequence_Step_Number__c" as "OUTREACH_CURRENT_SEQUENCE_STEP_NUMBER__C",\
"Outreach_Current_Sequence_Step_Type__c" as "OUTREACH_CURRENT_SEQUENCE_STEP_TYPE__C",\
"Outreach_Current_Sequence_Task_Due_Date__c" as "OUTREACH_CURRENT_SEQUENCE_TASK_DUE_DATE__C",\
"Outreach_Current_Sequence_User_SFDC_ID__c" as "OUTREACH_CURRENT_SEQUENCE_USER_SFDC_ID__C",\
"Outreach_Initial_Sequence_ID__c" as "OUTREACH_INITIAL_SEQUENCE_ID__C",\
"Outreach_Initial_Sequence_Name__c" as "OUTREACH_INITIAL_SEQUENCE_NAME__C",\
"Date_Became_Open__c" as "DATE_BECAME_OPEN__C",\
"Date_Became_Reactivated__c" as "DATE_BECAME_REACTIVATED__C",\
"Outreach_Last_Touched_Date__c" as "OUTREACH_LAST_TOUCHED_DATE__C",\
"Outreach_Last_Engaged_Date__c" as "OUTREACH_LAST_ENGAGED_DATE__C",\
"Recent_Conversion_Date__c" as "RECENT_CONVERSION_DATE__C",\
"Eligible_for_the_Lead_Process__c" as "ELIGIBLE_FOR_THE_LEAD_PROCESS__C",\
"In_Target_Account_Group_in_Country__c" as "IN_TARGET_ACCOUNT_GROUP_IN_COUNTRY__C",\
"Partner_First_Name__c" AS Partner_First_Name,\
"Partner_Last_Name__c" AS Partner_Last_Name,\
"Partner_Contact_Job_Title__c" AS Partner_Contact_Job_Title,\
"Partner_Email__c" AS Partner_Email,\
"Partner_Company_Name__c" AS Partner_Company_Name,\
"Goal_of_the_project__c" AS Goal_of_the_project,\
"Scope_of_the_Partner_s_engagement__c" AS Scope_of_the_Partners_engagement,\
"Role_of_Dataiku_and_Dataiku_Product_s__c" AS Role_of_Dataiku_and_Dataiku_Products,\
"Expected_deal_value__c" AS Expected_deal_value,\
META_UNIQUE_HASH as META_UNIQUE_HASH,\
META_ROW_HASH as META_ROW_HASH,\
META_IS_DELETED as META_IS_DELETED,\
CASE WHEN META_IS_DELETED::BOOLEAN = TRUE THEN FALSE ELSE TRUE END AS META_ACTIVE_FLAG,\
META_INSERT_TIMESTAMP as META_INSERT_TIMESTAMP,\
META_UPDATE_TIMESTAMP as META_UPDATE_TIMESTAMP,\
'SALESFORCE' AS META_SOURCE_NAME\
from RAW.SALESFORCE_DSS.LEAD}