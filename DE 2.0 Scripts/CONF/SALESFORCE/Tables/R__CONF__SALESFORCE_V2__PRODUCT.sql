{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 CREATE OR REPLACE DYNAMIC TABLE \{\{CONF\}\}.SALESFORCE_V2.PRODUCT\
TARGET_LAG = DOWNSTREAM\
WAREHOUSE = SF_TRANSFORM_WH\
REFRESH_MODE = INCREMENTAL\
INITIALIZE = ON_SCHEDULE\
DATA_METRIC_SCHEDULE = TRIGGER_ON_CHANGES\
as\
SELECT \
"Id" as ID\
,"Name" as NAME\
,"ProductCode" as PRODUCTCODE\
,"Description" as DESCRIPTION\
,"IsActive"::BOOLEAN as ISACTIVE\
,LEFT("CreatedDate",19)::date as CREATEDDATE\
,"CreatedById" as CREATEDBYID\
,LEFT("LastModifiedDate",19)::date as LASTMODIFIEDDATE\
,"LastModifiedById" as LASTMODIFIEDBYID\
,"SystemModstamp" as SYSTEMMODSTAMP\
,"Family" as FAMILY\
,"CurrencyIsoCode" as CURRENCYISOCODE\
,"ExternalDataSourceId" as EXTERNALDATASOURCEID\
,"ExternalId" as EXTERNALID\
,"DisplayUrl" as DISPLAYURL\
,"QuantityUnitOfMeasure" as QUANTITYUNITOFMEASURE\
,case when UPPER("IsDeleted") = 'FALSE' THEN FALSE ELSE TRUE END AS "ISDELETED"\
,"LastViewedDate" as LASTVIEWEDDATE\
,"LastReferencedDate" as LASTREFERENCEDDATE\
,"Product_Sub_Familly__c" as PRODUCT_SUB_FAMILLY__C\
,"Quote_Section__c" as QUOTE_SECTION__C\
,"Item_Category__c" as ITEM_CATEGORY__C\
,"SBQQ__AssetAmendmentBehavior__c" as SBQQ__ASSETAMENDMENTBEHAVIOR__C\
,"SBQQ__AssetConversion__c" as SBQQ__ASSETCONVERSION__C\
,"SBQQ__BatchQuantity__c" as SBQQ__BATCHQUANTITY__C\
,"SBQQ__BillingFrequency__c" as SBQQ__BILLINGFREQUENCY__C\
,"SBQQ__BillingType__c" as SBQQ__BILLINGTYPE__C\
,"SBQQ__BlockPricingField__c" as SBQQ__BLOCKPRICINGFIELD__C\
,"SBQQ__ChargeType__c" as SBQQ__CHARGETYPE__C\
,"SBQQ__Component__c" as SBQQ__COMPONENT__C\
,"SBQQ__CompoundDiscountRate__c" as SBQQ__COMPOUNDDISCOUNTRATE__C\
,"SBQQ__ConfigurationEvent__c" as SBQQ__CONFIGURATIONEVENT__C\
,"SBQQ__ConfigurationFieldSet__c" as SBQQ__CONFIGURATIONFIELDSET__C\
,"SBQQ__ConfigurationFields__c" as SBQQ__CONFIGURATIONFIELDS__C\
,"Pricing_Year__c" as PRICING_YEAR__C\
,"Milestone_Type__c" as MILESTONE_TYPE__C\
,"ARR__c"::BOOLEAN as ARR__C\
,"Full_Product_ID__c" as FULL_PRODUCT_ID__C\
,"SBQQ__ConfigurationFormTitle__c" as SBQQ__CONFIGURATIONFORMTITLE__C\
,"SBQQ__ConfigurationType__c" as SBQQ__CONFIGURATIONTYPE__C\
,"SBQQ__ConfigurationValidator__c" as SBQQ__CONFIGURATIONVALIDATOR__C\
,"SBQQ__ConfiguredCodePattern__c" as SBQQ__CONFIGUREDCODEPATTERN__C\
,"SBQQ__ConfiguredDescriptionPattern__c" as SBQQ__CONFIGUREDDESCRIPTIONPATTERN__C\
,"SBQQ__CostEditable__c" as SBQQ__COSTEDITABLE__C\
,"SBQQ__CostSchedule__c" as SBQQ__COSTSCHEDULE__C\
,"SBQQ__CustomConfigurationPage__c" as SBQQ__CUSTOMCONFIGURATIONPAGE__C\
,"SBQQ__CustomConfigurationRequired__c" as SBQQ__CUSTOMCONFIGURATIONREQUIRED__C\
,"SBQQ__CustomerCommunityAvailability__c" as SBQQ__CUSTOMERCOMMUNITYAVAILABILITY__C\
,"SBQQ__DefaultPricingTable__c" as SBQQ__DEFAULTPRICINGTABLE__C\
,"SBQQ__DefaultQuantity__c" as SBQQ__DEFAULTQUANTITY__C\
,"SBQQ__DescriptionLocked__c" as SBQQ__DESCRIPTIONLOCKED__C\
,"SBQQ__DiscountCategory__c" as SBQQ__DISCOUNTCATEGORY__C\
,"SBQQ__DiscountSchedule__c" as SBQQ__DISCOUNTSCHEDULE__C\
,"SBQQ__DynamicPricingConstraint__c" as SBQQ__DYNAMICPRICINGCONSTRAINT__C\
,"SBQQ__EnableLargeConfiguration__c" as SBQQ__ENABLELARGECONFIGURATION__C\
,"SBQQ__ExcludeFromMaintenance__c" as SBQQ__EXCLUDEFROMMAINTENANCE__C\
,"SBQQ__ExcludeFromOpportunity__c" as SBQQ__EXCLUDEFROMOPPORTUNITY__C\
,"SBQQ__ExternallyConfigurable__c" as SBQQ__EXTERNALLYCONFIGURABLE__C\
,"SBQQ__GenerateContractedPrice__c" as SBQQ__GENERATECONTRACTEDPRICE__C\
,"SBQQ__HasConfigurationAttributes__c" as SBQQ__HASCONFIGURATIONATTRIBUTES__C\
,"SBQQ__HasConsumptionSchedule__c" as SBQQ__HASCONSUMPTIONSCHEDULE__C\
,"SBQQ__Hidden__c" as SBQQ__HIDDEN__C\
,"SBQQ__HidePriceInSearchResults__c" as SBQQ__HIDEPRICEINSEARCHRESULTS__C\
,"SBQQ__IncludeInMaintenance__c" as SBQQ__INCLUDEINMAINTENANCE__C\
,"SBQQ__NewQuoteGroup__c" as SBQQ__NEWQUOTEGROUP__C\
,"SBQQ__NonDiscountable__c" as SBQQ__NONDISCOUNTABLE__C\
,"SBQQ__NonPartnerDiscountable__c" as SBQQ__NONPARTNERDISCOUNTABLE__C\
,"SBQQ__OptionLayout__c" as SBQQ__OPTIONLAYOUT__C\
,"SBQQ__OptionSelectionMethod__c" as SBQQ__OPTIONSELECTIONMETHOD__C\
,"SBQQ__Optional__c" as SBQQ__OPTIONAL__C\
,"SBQQ__PriceEditable__c" as SBQQ__PRICEEDITABLE__C\
,"SBQQ__PricingGuidance__c" as SBQQ__PRICINGGUIDANCE__C\
,"SBQQ__PricingMethodEditable__c" as SBQQ__PRICINGMETHODEDITABLE__C\
,"SBQQ__PricingMethod__c" as SBQQ__PRICINGMETHOD__C\
,"SBQQ__ProductPictureID__c" as SBQQ__PRODUCTPICTUREID__C\
,"SBQQ__QuantityEditable__c" as SBQQ__QUANTITYEDITABLE__C\
,"SBQQ__QuantityScale__c" as SBQQ__QUANTITYSCALE__C\
,"SBQQ__ReconfigurationDisabled__c" as SBQQ__RECONFIGURATIONDISABLED__C\
,"SBQQ__RenewalProduct__c" as SBQQ__RENEWALPRODUCT__C\
,"SBQQ__SortOrder__c" as SBQQ__SORTORDER__C\
,"SBQQ__Specifications__c" as SBQQ__SPECIFICATIONS__C\
,"SBQQ__SubscriptionBase__c" as SBQQ__SUBSCRIPTIONBASE__C\
,"SBQQ__SubscriptionCategory__c" as SBQQ__SUBSCRIPTIONCATEGORY__C\
,"SBQQ__SubscriptionPercent__c" as SBQQ__SUBSCRIPTIONPERCENT__C\
,"SBQQ__SubscriptionPricing__c" as SBQQ__SUBSCRIPTIONPRICING__C\
,"SBQQ__SubscriptionTarget__c" as SBQQ__SUBSCRIPTIONTARGET__C\
,"SBQQ__SubscriptionTerm__c" as SBQQ__SUBSCRIPTIONTERM__C\
,"SBQQ__SubscriptionType__c" as SBQQ__SUBSCRIPTIONTYPE__C\
,"SBQQ__TaxCode__c" as SBQQ__TAXCODE__C\
,"SBQQ__Taxable__c" as SBQQ__TAXABLE__C\
,"SBQQ__TermDiscountLevel__c" as SBQQ__TERMDISCOUNTLEVEL__C\
,"SBQQ__TermDiscountSchedule__c" as SBQQ__TERMDISCOUNTSCHEDULE__C\
,"SBQQ__UpgradeCredit__c" as SBQQ__UPGRADECREDIT__C\
,"SBQQ__UpgradeRatio__c" as SBQQ__UPGRADERATIO__C\
,"SBQQ__UpgradeSource__c" as SBQQ__UPGRADESOURCE__C\
,"SBQQ__UpgradeTarget__c" as SBQQ__UPGRADETARGET__C\
,"Level_4_Approval_Required__c" as LEVEL_4_APPROVAL_REQUIRED__C\
,"DeploymentType__c" as DEPLOYMENTTYPE__C\
,"EditionType__c" as EDITIONTYPE__C\
,"ExternalID__c" as EXTERNALID__C\
,"NewContract__c" as NEWCONTRACT__C\
,"Sellability__c" as SELLABILITY__C\
,"Tech_IsNode__c" as TECH_ISNODE__C\
,"Tech_ProfileNameVisibility__c" as TECH_PROFILENAMEVISIBILITY__C\
,"UserPricingOnly__c" as USERPRICINGONLY__C\
,"NetSuite_Product_Code__c" as NETSUITE_PRODUCT_CODE__C\
,"Deployment_Type_mult__c" as DEPLOYMENT_TYPE_MULT__C\
,"Edition_Type_mult__c" as EDITION_TYPE_MULT__C\
,"User_type__c" as USER_TYPE__C\
,"Level_3_Approval_Required__c" as LEVEL_3_APPROVAL_REQUIRED__C\
,"Online_product__c"::BOOLEAN as ONLINE_PRODUCT__C\
,"Legacy_Product__c"::BOOLEAN as LEGACY_PRODUCT__C\
,"Service_Controlled_Set_2__c" as SERVICE_CONTROLLED_SET_2__C\
,"Service_Controlled__c" as SERVICE_CONTROLLED__C\
,"Package_Type__c" AS PACKAGE_TYPE__C\
,"META_UNIQUE_HASH" as META_UNIQUE_HASH\
,"META_ROW_HASH" as META_ROW_HASH\
,"META_IS_DELETED" as META_IS_DELETED\
,"META_INSERT_TIMESTAMP" as META_INSERT_TIMESTAMP\
,"META_UPDATE_TIMESTAMP" as META_UPDATE_TIMESTAMP\
\
FROM RAW.SALESFORCE_DSS.PRODUCT}