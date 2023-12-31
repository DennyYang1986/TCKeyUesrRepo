@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Line 2 CDS View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_SalesLine2 as select from I_SalesDocumentItem
{
    key SalesDocument,
    key SalesDocumentItem,
    SalesDocumentItemUUID,
    SDDocumentCategory,
    SalesDocumentItemCategory,
    SalesDocumentItemType,
    IsReturnsItem,
    CompletionRule,
    CreatedByUser,
    CreationDate,
    CreationTime,
    LastChangeDate,
    Division,
    Material,
    Product,
    OriginallyRequestedMaterial,
    MaterialByCustomer,
    InternationalArticleNumber,
    Batch,
    ProductHierarchyNode,
    ProductCatalog,
    MaterialSubstitutionReason,
    MaterialGroup,
    ProductGroup,
    AdditionalMaterialGroup1,
    AdditionalMaterialGroup2,
    AdditionalMaterialGroup3,
    AdditionalMaterialGroup4,
    AdditionalMaterialGroup5,
    ProductConfiguration,
    MaterialDeterminationType,
    HigherLevelItemUsage,
    MRPArea,
    BillOfMaterial,
    BOMExplosionDate,
    ProdAvailabilityCheckGroup,
    SalesDocumentItemText,
    PurchaseOrderByCustomer,
    PurchaseOrderByShipToParty,
    CustomerPurchaseOrderDate,
    UnderlyingPurchaseOrderItem,
    ExternalItemID,
    @Semantics.quantity.unitOfMeasure: 'OrderQuantityUnit'
    OrderQuantity,
    OrderQuantityUnit,
    OrderToBaseQuantityDnmntr,
    OrderToBaseQuantityNmrtr,
    @Semantics.quantity.unitOfMeasure: 'TargetQuantityUnit'
    TargetQuantity,
    TargetQuantityUnit,
    TargetToBaseQuantityDnmntr,
    TargetToBaseQuantityNmrtr,
    @Semantics.quantity.unitOfMeasure: 'OrderQuantityUnit'
    ConfdDelivQtyInOrderQtyUnit,
    @Semantics.quantity.unitOfMeasure: 'OrderQuantityUnit'
    TargetDelivQtyInOrderQtyUnit,
    @Semantics.quantity.unitOfMeasure: 'BaseUnit'
    ConfdDeliveryQtyInBaseUnit,
    BaseUnit,
    MDSubstnConversionNumerator,
    MDSubstnConversionDenominator,
    @Semantics.quantity.unitOfMeasure: 'OrderQuantityUnit'
    CommittedDelivQtyInOrdQtyUnit,
    CommittedDelivCreationDate,
    CommittedDeliveryDate,
    @Semantics.quantity.unitOfMeasure: 'RequestedQuantityUnit'
    RequestedQuantity,
    RequestedQuantityUnit,
    @Semantics.quantity.unitOfMeasure: 'BaseUnit'
    RequestedQuantityInBaseUnit,
    @Semantics.quantity.unitOfMeasure: 'ItemWeightUnit'
    ItemGrossWeight,
    @Semantics.quantity.unitOfMeasure: 'ItemWeightUnit'
    ItemNetWeight,
    ItemWeightUnit,
    @Semantics.quantity.unitOfMeasure: 'ItemVolumeUnit'
    ItemVolume,
    ItemVolumeUnit,
    ServicesRenderedDate,
    SalesDistrict,
    SalesDeal,
    SalesPromotion,
    RetailPromotion,
    CustomerGroup,
    SlsDocIsRlvtForProofOfDeliv,
    SalesDocumentRjcnReason,
    AlternativeToItem,
    ReturnReason,
    ReturnsRefundExtent,
    RetsMgmtProcessingBlock,
    RequirementSegment,
    QuantityIsFixed,
    ItemOrderProbabilityInPercent,
    @Semantics.amount.currencyCode: 'TransactionCurrency'
    OutlineAgreementTargetAmount,
    SalesContractValidityStartDate,
    SalesContractValidityEndDate,
    NmbrOfSalesContractValdtyPerd,
    SalesContractValidityPerdUnit,
    SalesContractValidityPerdCat,
    SalesContractSignedDate,
    EquipmentInstallationDate,
    EquipmentDeliveryAccptcDate,
    EquipmentDismantlingDate,
    SalesContractCanclnProcedure,
    RequestedCancellationDate,
    SlsContractCanclnReqRcptDate,
    CanclnDocByContrPartner,
    ContractPartnerCanclnDocDate,
    SalesContractCanclnParty,
    SalesContractCanclnReason,
    SalesContractFollowUpAction,
    SlsContractFollowUpActionDate,
    SalesDocumentItemProcgCode,
    PlngDelivSchedInstrn,
    @Semantics.amount.currencyCode: 'TransactionCurrency'
    NetAmount,
    TransactionCurrency,
    PricingReferenceMaterial,
    MaterialPricingGroup,
    ProductTaxClassification1,
    ProductTaxClassification2,
    ProductTaxClassification3,
    ProductTaxClassification4,
    ProductTaxClassification5,
    ProductTaxClassification6,
    ProductTaxClassification7,
    ProductTaxClassification8,
    ProductTaxClassification9,
    MatlAccountAssignmentGroup,
    PricingDate,
    ExchangeRateDate,
    PriceDetnExchangeRate,
    @Semantics.amount.currencyCode: 'TransactionCurrency'
    NetPriceAmount,
    NetPriceQuantity,
    NetPriceQuantityUnit,
    StatisticalValueControl,
    @Semantics.amount.currencyCode: 'TransactionCurrency'
    TaxAmount,
    @Semantics.amount.currencyCode: 'TransactionCurrency'
    CostAmount,
    @Semantics.amount.currencyCode: 'TransactionCurrency'
    Subtotal1Amount,
    @Semantics.amount.currencyCode: 'TransactionCurrency'
    Subtotal2Amount,
    @Semantics.amount.currencyCode: 'TransactionCurrency'
    Subtotal3Amount,
    @Semantics.amount.currencyCode: 'TransactionCurrency'
    Subtotal4Amount,
    @Semantics.amount.currencyCode: 'TransactionCurrency'
    Subtotal5Amount,
    @Semantics.amount.currencyCode: 'TransactionCurrency'
    Subtotal6Amount,
    SalesDocumentCondition,
    MainItemPricingRefProduct,
    CustomerPriceGroup,
    ShippingPoint,
    ShippingType,
    InventorySpecialStockType,
    InventorySpecialStockValnType,
    DeliveryPriority,
    Plant,
    OriginalPlant,
    TransitPlant,
    StorageLocation,
    Route,
    DeliveryGroup,
    DeliveryDateQuantityIsFixed,
    PartialDeliveryIsAllowed,
    MaxNmbrOfPartialDelivery,
    UnlimitedOverdeliveryIsAllowed,
    OverdelivTolrtdLmtRatioInPct,
    UnderdelivTolrtdLmtRatioInPct,
    @Semantics.quantity.unitOfMeasure: 'BaseUnit'
    MinDeliveryQtyInBaseUnit,
    OpenDeliveryLeadingUnitCode,
    ItemIsDeliveryRelevant,
    BatchManagementIsSalesInternal,
    ReceivingPoint,
    ProductSeasonYear,
    ProductSeason,
    ProductCollection,
    ProductTheme,
    FashionCancelDate,
    ProductCharacteristic1,
    ProductCharacteristic2,
    ProductCharacteristic3,
    ShippingGroupNumber,
    ShippingGroupRule,
    ARunPriorityValue,
    ARunDemandGroupPriority,
    BillingDocumentDate,
    ItemIsBillingRelevant,
    ItemBillingBlockReason,
    BillingPlan,
    ReferenceBillingPlan,
    ReferenceBillingPlanItem,
    IncotermsVersion,
    IncotermsClassification,
    IncotermsTransferLocation,
    IncotermsLocation1,
    IncotermsLocation2,
    OrderCombinationIsAllowed,
    CustomerPaymentTerms,
    PaymentMethod,
    FixedValueDate,
    AdditionalValueDays,
    ContractAccount,
    FiscalYear,
    FiscalPeriod,
    CustomerAccountAssignmentGroup,
    BusinessArea,
    ControllingArea,
    ProfitCenter,
    WBSElement,
    WBSElementInternalID,
    OrderID,
    ControllingObject,
    ProfitabilitySegment,
    ProfitabilitySegment_2,
    OriginSDDocument,
    OriginSDDocumentItem,
    AccountingExchangeRate,
    ReferenceSDDocument,
    ReferenceSDDocumentItem,
    ReferenceSDDocumentCategory,
    HigherLevelItem,
    ValueContract,
    ValueContractItem,
    BusinessSolutionOrder,
    BusinessSolutionOrderItem,
    SDProcessStatus,
    DeliveryConfirmationStatus,
    DeliveryDateTypeRule,
    PurchaseConfirmationStatus,
    TotalDeliveryStatus,
    DeliveryStatus,
    DeliveryBlockStatus,
    OrderRelatedBillingStatus,
    BillingBlockStatus,
    ItemGeneralIncompletionStatus,
    ItemBillingIncompletionStatus,
    PricingIncompletionStatus,
    ItemDeliveryIncompletionStatus,
    SDDocumentRejectionStatus,
    TotalSDDocReferenceStatus,
    SDDocReferenceStatus,
    ChmlCmplncStatus,
    DangerousGoodsStatus,
    SafetyDataSheetStatus,
    TrdCmplncEmbargoSts,
    TrdCmplncSnctndListChkSts,
    OvrlTrdCmplncLegalCtrlChkSts,
    AltvBsdConfSubstitutionStatus,
    ContractItemDownPaymentStatus,
    ValueChainCategory,
    @Semantics.amount.currencyCode: 'TransactionCurrency'
    CappedNetAmount,
    CappedNetAmtAlertThldInPct,
    @Semantics.amount.currencyCode: 'TransactionCurrency'
    TotalStandAloneSellingPrice,
    ResultAnalysisInternalID,
    ServiceDocumentType,
    ServiceDocument,
    ServiceDocumentItem,
    SalesDocumentType,
    SalesOrganization,
    DistributionChannel,
    OrganizationDivision,
    SalesOffice,
    SalesGroup,
    SoldToParty,
    AdditionalCustomerGroup1,
    AdditionalCustomerGroup2,
    AdditionalCustomerGroup3,
    AdditionalCustomerGroup4,
    AdditionalCustomerGroup5,
    SalesDocumentDate,
    SDDocumentReason,
    RequestedDeliveryDate,
    ShippingCondition,
    ShipToParty,
    PayerParty,
    BillToParty,
    SalesEmployee,
    ResponsibleEmployee,
    SalesEmployeeWorkAgreement,
    ResponsibleEmployeeWorkAgrmt,
    OmniChannelSalesPromotion,
    OmniChannelSalesPromotionRule,
    ConsumptionPosting,
    PlanningMaterial,
    PlanningPlant,
    ProductBaseUnit,
    ProdPlntPlngMatlConversionFctr,
    SeasonCompletenessStatus,
    YY1_UDF_Number_SDI,
    /* Associations */
    _AdditionalCustomerGroup1,
    _AdditionalCustomerGroup2,
    _AdditionalCustomerGroup3,
    _AdditionalCustomerGroup4,
    _AdditionalCustomerGroup5,
    _AdditionalMaterialGroup1,
    _AdditionalMaterialGroup2,
    _AdditionalMaterialGroup3,
    _AdditionalMaterialGroup4,
    _AdditionalMaterialGroup5,
    _AltvBsdConfSubstitutionSts,
    _BaseUnit,
    _Batch,
    _BillingBlockStatus,
    _BillingPlan,
    _BillToParty,
    _BusinessArea,
    _BusinessAreaText,
    _ChmlCmplncStatus,
    _ConsumptionPosting,
    _ContractItemDownPaymentStatus,
    _ControllingArea,
    _CreatedByUser,
    _CustomerAccountAssgmtGroup,
    _CustomerGroup,
    _CustomerPaymentTerms,
    _CustomerPriceGroup,
    _DangerousGoodsStatus,
    _DeliveryBlockStatus,
    _DeliveryConfirmationStatus,
    _DeliveryDateTypeRule,
    _DeliveryPriority,
    _DeliveryStatus,
    _DistributionChannel,
    _Division,
    _HigherLevelItem,
    _IncotermsClassification,
    _IncotermsVersion,
    _ItemBillingBlockReason,
    _ItemBillingIncompletionStatus,
    _ItemBillingPlan,
    _ItemCategory,
    _ItemDelivIncompletionSts,
    _ItemGeneralIncompletionStatus,
    _ItemIsBillingRelevant,
    _ItemVolumeUnit,
    _ItemWeightUnit,
    _MainItemPricingRefProduct,
    _Material,
    _MaterialGroup,
    _MaterialPlant,
    _MaterialPricingGroup,
    _MaterialSubstitutionReason,
    _MaterialText,
    _MatlAccountAssignmentGroup,
    _NetPriceQuantityUnit,
    _OrderQuantityUnit,
    _OrderRelatedBillingStatus,
    _OrganizationDivision,
    _OriginallyRequestedMaterial,
    _OriginalPlant,
    _OrigMaterialText,
    _OvrlTrdCmplncLegalCtrlChkSts,
    _PartialDeliveryItem,
    _Partner,
    _PayerParty,
    _PlanningPlant,
    _PlanningProduct,
    _Plant,
    _PlngDelivSchedInstrn,
    _PrecedingDocument,
    _PrecedingProcFlowDocItem,
    _PricingElement,
    _PricingIncompletionStatus,
    _Product,
    _ProductGroup,
    _ProductHierarchyNode,
    _ProductText,
    _ProductUnit,
    _ProfitCenter,
    _PurchaseConfirmationStatus,
    _ReferenceSDDocument,
    _ReferenceSDDocumentCategory,
    _ReferenceSDDocumentItem,
    _RequestedQuantityUnit,
    _ResponsibleEmployee,
    _ReturnReason,
    _ReturnsRefundExtent,
    _Route,
    _SafetyDataSheetStatus,
    _SalesContractCanclnParty,
    _SalesContractCanclnReason,
    _SalesContractValidityPerdUnit,
    _SalesDeal,
    _SalesDistrict,
    _SalesDocument,
    _SalesDocumentItemProcgCode,
    _SalesDocumentRjcnReason,
    _SalesDocumentType,
    _SalesEmployee,
    _SalesGroup,
    _SalesOffice,
    _SalesOrganization,
    _SalesValueChainCategory,
    _ScheduleLine,
    _SDDocReferenceStatus,
    _SDDocumentCategory,
    _SDDocumentReason,
    _SDDocumentRejectionStatus,
    _SDProcessStatus,
    _ServiceDocumentType,
    _ShippingCondition,
    _ShippingPoint,
    _ShippingPointText,
    _ShippingType,
    _ShipToParty,
    _SlsDocItemEnhancedFields,
    _SoldToParty,
    _SolutionOrder,
    _SolutionOrderItem,
    _StatisticalValueControl,
    _StorageLocation,
    _SubsequentDocument,
    _SubsequentProcFlowDocItem,
    _TargetQuantityUnit,
    _TotalDeliveryStatus,
    _TotalSDDocReferenceStatus,
    _TransactionCurrency,
    _TransitPlant,
    _TrdCmplncEmbargoSts,
    _TrdCmplncSnctndListChkSts,
    _WBSElementBasicData,
    _WBSElementBasicData_2
}
