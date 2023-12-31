@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Header 1 CDS View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_SalesHdr1 as select from I_SalesDocument
{
    key SalesDocument,
    SDDocumentCategory,
    SalesDocumentType,
    SalesDocumentProcessingType,
    CreatedByUser,
    LastChangedByUser,
    CreationDate,
    CreationTime,
    LastChangeDate,
    LastChangeDateTime,
    LastCustomerContactDate,
    SenderBusinessSystemName,
    ExternalDocumentID,
    ExternalDocLastChangeDateTime,
    SalesOrganization,
    DistributionChannel,
    OrganizationDivision,
    SalesGroup,
    SalesOffice,
    SoldToParty,
    CustomerGroup,
    AdditionalCustomerGroup1,
    AdditionalCustomerGroup2,
    AdditionalCustomerGroup3,
    AdditionalCustomerGroup4,
    AdditionalCustomerGroup5,
    SlsDocIsRlvtForProofOfDeliv,
    CreditControlArea,
    CustomerRebateAgreement,
    SalesDocumentDate,
    ServicesRenderedDate,
    SDDocumentReason,
    PurchaseOrderByCustomer,
    PurchaseOrderByShipToParty,
    SDDocumentCollectiveNumber,
    CustomerPurchaseOrderType,
    CustomerPurchaseOrderDate,
    CustomerPurchaseOrderSuplmnt,
    SalesDistrict,
    StatisticsCurrency,
    ProductCatalog,
    RetsMgmtProcess,
    NextCreditCheckDate,
    BindingPeriodValidityStartDate,
    BindingPeriodValidityEndDate,
    HdrOrderProbabilityInPercent,
    SalesContractSignedDate,
    ContractPartnerCanclnDocDate,
    NmbrOfSalesContractValdtyPerd,
    SalesContractValidityPerdUnit,
    SalesContractValidityPerdCat,
    SlsContractCanclnReqRcptDate,
    RequestedCancellationDate,
    SalesContractCanclnParty,
    SalesContractCanclnReason,
    SalesContractCanclnProcedure,
    EquipmentInstallationDate,
    EquipmentDeliveryAccptcDate,
    EquipmentDismantlingDate,
    SalesContractFollowUpAction,
    SlsContractFollowUpActionDate,
    CanclnDocByContrPartner,
    MasterSalesContract,
    SchedulingAgreementProfileCode,
    DelivSchedTypeMRPRlvnceCode,
    AgrmtValdtyStartDate,
    AgrmtValdtyEndDate,
    MatlUsageIndicator,
    TransactionCurrency,
    PricingDate,
    RetailPromotion,
    PriceDetnExchangeRate,
    SalesDocumentCondition,
    SDPricingProcedure,
    CustomerPriceGroup,
    PriceListType,
    CustomerTaxClassification1,
    CustomerTaxClassification2,
    CustomerTaxClassification3,
    CustomerTaxClassification4,
    CustomerTaxClassification5,
    CustomerTaxClassification6,
    CustomerTaxClassification7,
    CustomerTaxClassification8,
    CustomerTaxClassification9,
    TaxDepartureCountry,
    VATRegistrationCountry,
    RequestedDeliveryDate,
    ShippingType,
    ReceivingPoint,
    ShippingCondition,
    IncotermsClassification,
    IncotermsTransferLocation,
    IncotermsLocation1,
    IncotermsLocation2,
    IncotermsVersion,
    CompleteDeliveryIsDefined,
    OrderCombinationIsAllowed,
    DeliveryBlockReason,
    FashionCancelDate,
    BillingPlan,
    BillingDocumentDate,
    BillingCompanyCode,
    HeaderBillingBlockReason,
    SalesDocApprovalReason,
    CustomerPaymentTerms,
    PaymentMethod,
    FixedValueDate,
    AdditionalValueDays,
    ContractAccount,
    FiscalYear,
    FiscalPeriod,
    ExchangeRateDate,
    ExchangeRateType,
    AccountingExchangeRate,
    BusinessArea,
    CustomerAccountAssignmentGroup,
    CostCenterBusinessArea,
    CostCenter,
    ControllingArea,
    OrderID,
    ControllingObject,
    AssignmentReference,
    PaymentPlan,
    CustomerCreditAccount,
    ControllingAreaCurrency,
    CreditBlockReleaseDate,
    NextShippingDate,
    ReferenceSDDocument,
    AccountingDocExternalReference,
    ReferenceSDDocumentCategory,
    SalesItemProposalDescription,
    CorrespncExternalReference,
    BusinessSolutionOrder,
    OverallSDProcessStatus,
    OverallPurchaseConfStatus,
    OverallSDDocumentRejectionSts,
    TotalBlockStatus,
    OverallDelivConfStatus,
    OverallTotalDeliveryStatus,
    OverallDeliveryStatus,
    OverallDeliveryBlockStatus,
    OverallOrdReltdBillgStatus,
    OverallBillingBlockStatus,
    OverallTotalSDDocRefStatus,
    OverallSDDocReferenceStatus,
    TotalCreditCheckStatus,
    MaxDocValueCreditCheckStatus,
    PaymentTermCreditCheckStatus,
    FinDocCreditCheckStatus,
    ExprtInsurCreditCheckStatus,
    PaytAuthsnCreditCheckSts,
    CentralCreditCheckStatus,
    CentralCreditChkTechErrSts,
    HdrGeneralIncompletionStatus,
    OverallPricingIncompletionSts,
    HeaderDelivIncompletionStatus,
    HeaderBillgIncompletionStatus,
    OvrlItmGeneralIncompletionSts,
    OvrlItmBillingIncompletionSts,
    OvrlItmDelivIncompletionSts,
    ContractManualCompletion,
    OverallChmlCmplncStatus,
    OverallDangerousGoodsStatus,
    OverallSafetyDataSheetStatus,
    SalesDocApprovalStatus,
    ContractDownPaymentStatus,
    OverallTrdCmplncEmbargoSts,
    OvrlTrdCmplncSnctndListChkSts,
    OvrlTrdCmplncLegalCtrlChkSts,
    DeliveryDateTypeRule,
    OmniChnlSalesPromotionStatus,
    AlternativePricingDate,
    IsEUTriangularDeal,
    RetailAdditionalCustomerGrp6,
    RetailAdditionalCustomerGrp7,
    RetailAdditionalCustomerGrp8,
    RetailAdditionalCustomerGrp9,
    RetailAdditionalCustomerGrp10,
    /* Associations */
    _AdditionalCustomerGroup1,
    _AdditionalCustomerGroup2,
    _AdditionalCustomerGroup3,
    _AdditionalCustomerGroup4,
    _AdditionalCustomerGroup5,
    _BillingCompanyCode,
    _BillingPlan,
    _BusinessArea,
    _BusinessAreaText,
    _CentralCreditCheckStatus,
    _CentralCreditChkTechErrSts,
    _ControllingArea,
    _ControllingAreaCurrency,
    _ControllingObject,
    _CostCenter,
    _CostCenterBusinessArea,
    _CostCenterBusinessAreaText,
    _CreatedByUser,
    _CreditControlArea,
    _CreditControlAreaText,
    _CustomerAccountAssgmtGroup,
    _CustomerCreditAccount,
    _CustomerGroup,
    _CustomerPaymentTerms,
    _CustomerPriceGroup,
    _CustomerPurchaseOrderType,
    _DeliveryBlockReason,
    _DeliveryDateTypeRule,
    _DelivSchedTypeMRPRlvnceCode,
    _DistributionChannel,
    _DownPaymentStatus,
    _EngagementProjectItem,
    _ExchangeRateType,
    _ExprtInsurCreditCheckStatus,
    _FinDocCreditCheckStatus,
    _HdrGeneralIncompletionStatus,
    _HeaderBillgIncompletionStatus,
    _HeaderBillingBlockReason,
    _HeaderDelivIncompletionStatus,
    _IncotermsClassification,
    _IncotermsVersion,
    _Item,
    _LastChangedByUser,
    _MaxDocValueCreditCheckStatus,
    _OmniChnlSalesPromotionStatus,
    _OrganizationDivision,
    _OverallBillingBlockStatus,
    _OverallChmlCmplncStatus,
    _OverallDangerousGoodsStatus,
    _OverallDelivConfStatus,
    _OverallDeliveryBlockStatus,
    _OverallDeliveryStatus,
    _OverallOrdReltdBillgStatus,
    _OverallPricingIncompletionSts,
    _OverallPurchaseConfStatus,
    _OverallSDDocReferenceStatus,
    _OverallSDDocumentRejectionSts,
    _OverallSDProcessStatus,
    _OverallTotalDeliveryStatus,
    _OverallTotalSDDocRefStatus,
    _OvrlItmBillingIncompletionSts,
    _OvrlItmDelivIncompletionSts,
    _OvrlItmGeneralIncompletionSts,
    _OvrlSftyDataSheetSts,
    _OvrlTradeCmplncEmbargoStatus,
    _OvrlTrdCmplncLegalCtrlChkSts,
    _OvTrdCmplncSnctndListChkSts,
    _Partner,
    _PaymentTermCreditCheckStatus,
    _PaytAuthsnCreditCheckSts,
    _PrecedingProcFlowDoc,
    _PriceListType,
    _PricingElement,
    _ReferenceSDDocumentCategory,
    _RetsMgmtProcess,
    _SalesArea,
    _SalesContractCanclnParty,
    _SalesContractCanclnReason,
    _SalesContractFollowUpAction,
    _SalesContractValidityPerdCat,
    _SalesContractValidityPerdUnit,
    _SalesDistrict,
    _SalesDocApprovalReason,
    _SalesDocApprovalStatus,
    _SalesDocumentType,
    _SalesGroup,
    _SalesOffice,
    _SalesOrganization,
    _SDDocumentCategory,
    _SDDocumentReason,
    _SDPricingProcedure,
    _ShippingCondition,
    _ShippingType,
    _SoldToParty,
    _SolutionOrder,
    _StandardPartner,
    _StatisticsCurrency,
    _SubsequentProcFlowDoc,
    _TaxDepartureCountry,
    _TotalBlockStatus,
    _TotalCreditCheckStatus,
    _TransactionCurrency,
    _VATRegistrationCountry
}
