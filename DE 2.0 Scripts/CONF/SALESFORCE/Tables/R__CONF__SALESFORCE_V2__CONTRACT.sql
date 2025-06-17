{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.SALESFORCE_V2.CONTRACT\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT \
"Id" as ID\
,"AccountId" as ACCOUNTID\
,"CurrencyIsoCode" as CURRENCYISOCODE\
,"Pricebook2Id" as PRICEBOOK2ID\
,"OwnerExpirationNotice" as OWNEREXPIRATIONNOTICE\
,LEFT("StartDate",10)::date as STARTDATE\
,LEFT("EndDate",10)::date as ENDDATE\
,"BillingStreet" as BILLINGSTREET\
,"BillingCity" as BILLINGCITY\
,"BillingState" as BILLINGSTATE\
,"BillingPostalCode" as BILLINGPOSTALCODE\
,"BillingCountry" as BILLINGCOUNTRY\
,"BillingStateCode" as BILLINGSTATECODE\
,"BillingCountryCode" as BILLINGCOUNTRYCODE\
,"BillingLatitude" as BILLINGLATITUDE\
,"BillingLongitude" as BILLINGLONGITUDE\
,"BillingGeocodeAccuracy" as BILLINGGEOCODEACCURACY\
,"BillingAddress" as BILLINGADDRESS\
,"ShippingStreet" as SHIPPINGSTREET\
,"ShippingCity" as SHIPPINGCITY\
,"ShippingState" as SHIPPINGSTATE\
,"ShippingPostalCode" as SHIPPINGPOSTALCODE\
,"ShippingCountry" as SHIPPINGCOUNTRY\
,"ShippingStateCode" as SHIPPINGSTATECODE\
,"ShippingCountryCode" as SHIPPINGCOUNTRYCODE\
,"ShippingLatitude" as SHIPPINGLATITUDE\
,"ShippingLongitude" as SHIPPINGLONGITUDE\
,"ShippingGeocodeAccuracy" as SHIPPINGGEOCODEACCURACY\
,"ShippingAddress" as SHIPPINGADDRESS\
,"ContractTerm" as CONTRACTTERM\
,"OwnerId" as OWNERID\
,"Status" as STATUS\
,"CompanySignedId" as COMPANYSIGNEDID\
,"CompanySignedDate" as COMPANYSIGNEDDATE\
,"CustomerSignedId" as CUSTOMERSIGNEDID\
,"CustomerSignedTitle" as CUSTOMERSIGNEDTITLE\
,"CustomerSignedDate" as CUSTOMERSIGNEDDATE\
,"SpecialTerms" as SPECIALTERMS\
,"ActivatedById" as ACTIVATEDBYID\
,LEFT("ActivatedDate",10)::date as ACTIVATEDDATE\
,"StatusCode" as STATUSCODE\
,"Description" as DESCRIPTION\
,"Name" as NAME\
,case when UPPER("IsDeleted") = 'FALSE' THEN FALSE ELSE TRUE END AS ISDELETED\
,"ContractNumber" as CONTRACTNUMBER\
,"LastApprovedDate" as LASTAPPROVEDDATE\
,LEFT("CreatedDate",10)::DATE as CREATEDDATE\
,"CreatedById" as CREATEDBYID\
,LEFT("LastModifiedDate",10)::DATE as LASTMODIFIEDDATE\
,"LastModifiedById" as LASTMODIFIEDBYID\
,"SystemModstamp" as SYSTEMMODSTAMP\
,"LastActivityDate" as LASTACTIVITYDATE\
,"LastViewedDate" as LASTVIEWEDDATE\
,"LastReferencedDate" as LASTREFERENCEDDATE\
,"SBQQ__ActiveContract__c" as SBQQ__ACTIVECONTRACT__C\
,"SBQQ__AmendmentOpportunityRecordTypeId__c" as SBQQ__AMENDMENTOPPORTUNITYRECORDTYPEID__C\
,"SBQQ__AmendmentOpportunityStage__c" as SBQQ__AMENDMENTOPPORTUNITYSTAGE__C\
,"SBQQ__AmendmentOwner__c" as SBQQ__AMENDMENTOWNER__C\
,"SBQQ__AmendmentPricebookId__c" as SBQQ__AMENDMENTPRICEBOOKID__C\
,"SBQQ__AmendmentRenewalBehavior__c" as SBQQ__AMENDMENTRENEWALBEHAVIOR__C\
,"SBQQ__AmendmentStartDate__c" as SBQQ__AMENDMENTSTARTDATE__C\
,"SBQQ__DefaultRenewalContactRoles__c" as SBQQ__DEFAULTRENEWALCONTACTROLES__C\
,"SBQQ__DefaultRenewalPartners__c" as SBQQ__DEFAULTRENEWALPARTNERS__C\
,"SBQQ__DisableAmendmentCoTerm__c" as SBQQ__DISABLEAMENDMENTCOTERM__C\
,"SBQQ__Evergreen__c" as SBQQ__EVERGREEN__C\
,"SBQQ__ExpirationDate__c" as SBQQ__EXPIRATIONDATE__C\
,"SBQQ__MDQRenewalBehavior__c" as SBQQ__MDQRENEWALBEHAVIOR__C\
,"SBQQ__MasterContract__c" as SBQQ__MASTERCONTRACT__C\
,"SBQQ__OpportunityPricebookId__c" as SBQQ__OPPORTUNITYPRICEBOOKID__C\
,"SBQQ__Opportunity__c" as SBQQ__OPPORTUNITY__C\
,"SBQQ__Order__c" as SBQQ__ORDER__C\
,"SBQQ__PreserveBundleStructureUponRenewals__c" as SBQQ__PRESERVEBUNDLESTRUCTUREUPONRENEWALS__C\
,"SBQQ__Quote__c" as SBQQ__QUOTE__C\
,"SBQQ__RenewalForecast__c" as SBQQ__RENEWALFORECAST__C\
,"SBQQ__RenewalOpportunityRecordTypeId__c" as SBQQ__RENEWALOPPORTUNITYRECORDTYPEID__C\
,"SBQQ__RenewalOpportunityStage__c" as SBQQ__RENEWALOPPORTUNITYSTAGE__C\
,"SBQQ__RenewalOpportunity__c" as SBQQ__RENEWALOPPORTUNITY__C\
,"SBQQ__RenewalOwner__c" as SBQQ__RENEWALOWNER__C\
,"SBQQ__RenewalPricebookId__c" as SBQQ__RENEWALPRICEBOOKID__C\
,"SBQQ__RenewalQuoted__c" as SBQQ__RENEWALQUOTED__C\
,"SBQQ__RenewalTerm__c" as SBQQ__RENEWALTERM__C\
,"SBQQ__RenewalUpliftRate__c" as SBQQ__RENEWALUPLIFTRATE__C\
,"SBQQ__SubscriptionQuantitiesCombined__c" as SBQQ__SUBSCRIPTIONQUANTITIESCOMBINED__C\
,"BeginningSubscriptionFees__c" as BEGINNINGSUBSCRIPTIONFEES__C\
,"CPQSumOfOpportunitiesARR__c" as CPQSUMOFOPPORTUNITIESARR__C\
,"EndingSubscriptionFees__c" as ENDINGSUBSCRIPTIONFEES__C\
,"OneTimeDiscount__c" as ONETIMEDISCOUNT__C\
,"SumOfOpportunitiesARR__c" as SUMOFOPPORTUNITIESARR__C\
,"Tech_ContractUnderAmend__c" as TECH_CONTRACTUNDERAMEND__C\
,"Tech_CountOpenAmendedOpp__c" as TECH_COUNTOPENAMENDEDOPP__C\
,"LegacyOneTimeDiscount__c" as LEGACYONETIMEDISCOUNT__C\
,"ContractStartDate__c"::DATE as CONTRACTSTARTDATE__C\
,"ContractEndDate__c"::DATE as CONTRACTENDDATE__C\
,"Duration__c" as DURATION__C\
,"MainOpportunityARR__c" as MAINOPPORTUNITYARR__C\
,"AmendmentOpportunitiesARR__c" as AMENDMENTOPPORTUNITIESARR__C\
,"SumOpportunitiesARR__c" as SUMOPPORTUNITIESARR__C\
,"Active_Analysts__c" as ACTIVE_ANALYSTS__C\
,"Potential_Phased_Contract__c" as POTENTIAL_PHASED_CONTRACT__C\
,"Active_Designers__c" as ACTIVE_DESIGNERS__C\
,"Active_Explorers__c" as ACTIVE_EXPLORERS__C\
,"Active_Readers__c" as ACTIVE_READERS__C\
,"Active_Visual_Designers__c" as ACTIVE_VISUAL_DESIGNERS__C\
,"Active_Admins__c" as ACTIVE_ADMINS__C\
,"Active_Designers_override__c" as ACTIVE_DESIGNERS_OVERRIDE__C\
,"Active_Designers_final__c" as ACTIVE_DESIGNERS_FINAL__C\
,"Active_Full_Designers__c" AS ACTIVE_FULL_DESIGNERS__C\
,"Active_Advanced_Analytics_Designers__c" AS ACTIVE_ADVANCED_ANALYTICS_DESIGNERS__C\
,"Active_Data_Designers__c" AS ACTIVE_DATA_DESIGNERS__C\
,"Active_Governance_Managers__c" AS ACTIVE_GOVERNANCE_MANAGERS__C\
,"Active_Technical_Accounts__c" AS ACTIVE_TECHNICAL_ACCOUNTS__C\
,"Online_Contract__c" as ONLINE_CONTRACT__C\
,"META_UNIQUE_HASH" as META_UNIQUE_HASH\
,"META_ROW_HASH" as META_ROW_HASH\
,"META_IS_DELETED" as META_IS_DELETED\
,TO_TIMESTAMP_TZ("META_INSERT_TIMESTAMP") as META_INSERT_TIMESTAMP\
,TO_TIMESTAMP_TZ("META_UPDATE_TIMESTAMP") as META_UPDATE_TIMESTAMP\
\
FROM RAW.SALESFORCE_DSS.CONTRACT}