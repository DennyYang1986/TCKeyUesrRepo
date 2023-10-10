@ClientHandling.algorithm:#SESSION_VARIABLE
@EndUserText.label: 'Sales Order Header'
@AbapCatalog: {
  sqlViewName: 'ZTCASALESORDER',
  compiler.compareFilter: true
}
@AccessControl: { 
  authorizationCheck: #CHECK
}
@ObjectModel: {
   representativeKey: 'SalesOrder',
   usageType: {
     dataClass:      #TRANSACTIONAL,
     serviceQuality: #B,
     sizeCategory:   #L
   }
}
@Metadata.ignorePropagatedAnnotations: true

define view ZTCA_SalesOrder
  as select from I_SalesOrder as SalesOrder

  association [0..*] to ZTCA_SalesOrderItem               as _Item                   on _Item.SalesOrder = $projection.SalesOrder
  association [0..1] to ZTCIEDI_SALESHDR as _ExtHdrData on _ExtHdrData.ExtSalesdocument = $projection.SalesOrder
    //Extensibility
  association [0..1] to E_SalesDocumentBasic           as _Extension              on $projection.SalesOrder = _Extension.SalesDocument

{

  key SalesOrder,
      @ObjectModel.sapObjectNodeTypeReference: 'SalesOrderType'
      SalesOrderType,
      SalesOrganization,
      DistributionChannel,
      OrganizationDivision,

      SalesGroup,
      SalesOffice,
      SalesDistrict,

      SoldToParty,

      CreationDate,

      CreatedByUser,

      LastChangeDate,
      
      SenderBusinessSystemName,
      
      ExternalDocumentID,

     
      ExternalDocLastChangeDateTime,

      PurchaseOrderByCustomer,
      PurchaseOrderByShipToParty,
      @ObjectModel.sapObjectNodeTypeReference: 'PurchaseOrderTypeByCustomer' 
      CustomerPurchaseOrderType,
      CustomerPurchaseOrderDate,

      SalesOrderDate,

      @Semantics.amount.currencyCode: 'TransactionCurrency'
      TotalNetAmount,
      
      @ObjectModel.sapObjectNodeTypeReference: 'SalesDocOverallDeliveryStatus'
      OverallDeliveryStatus,
      
      TotalBlockStatus,
      
      @ObjectModel.sapObjectNodeTypeReference: 'OverallOrdReltdBillgStatus'
      OverallOrdReltdBillgStatus,
      
      @ObjectModel.sapObjectNodeTypeReference: 'OverallSDDocReferenceStatus'           
      OverallSDDocReferenceStatus,      

      @Semantics.currencyCode: true
      @ObjectModel.sapObjectNodeTypeReference: 'Currency'  
      TransactionCurrency,
      
      @ObjectModel.sapObjectNodeTypeReference: 'SalesDocumentReason'
      SDDocumentReason,
      PricingDate,
      
      BillingPlan,

      RequestedDeliveryDate,
      ShippingCondition,
      CompleteDeliveryIsDefined,
      ShippingType,
      
      @ObjectModel.sapObjectNodeTypeReference: 'BillingBlockReason'
      HeaderBillingBlockReason,
      DeliveryBlockReason,
      @ObjectModel.sapObjectNodeTypeReference: 'DeliveryDateTypeRule'
      DeliveryDateTypeRule,
      
      @ObjectModel.sapObjectNodeTypeReference: 'IncotermsClassification'
      IncotermsClassification,
      IncotermsTransferLocation,
      IncotermsLocation1,
      IncotermsLocation2,
      @ObjectModel.sapObjectNodeTypeReference: 'IncotermsVersion'
      IncotermsVersion,
      @ObjectModel.sapObjectNodeTypeReference: 'CustomerPriceGroup' 
      CustomerPriceGroup,     
      PriceListType,

      CustomerPaymentTerms,
      @ObjectModel.sapObjectNodeTypeReference: 'PaymentMethod'
      PaymentMethod,
      FixedValueDate,
      
      AssignmentReference,
      
      ReferenceSDDocument,
      ReferenceSDDocumentCategory,
      AccountingDocExternalReference,
      @ObjectModel.sapObjectNodeTypeReference: 'CustomerAccountAssignmentGroup' 
      CustomerAccountAssignmentGroup,
      
      @ObjectModel.sapObjectNodeTypeReference: 'CustomerGroup' 
      CustomerGroup,
      @ObjectModel.sapObjectNodeTypeReference: 'AdditionalCustomerGroup1' 
      AdditionalCustomerGroup1,
      @ObjectModel.sapObjectNodeTypeReference: 'AdditionalCustomerGroup2' 
      AdditionalCustomerGroup2,
      @ObjectModel.sapObjectNodeTypeReference: 'AdditionalCustomerGroup3' 
      AdditionalCustomerGroup3,
      @ObjectModel.sapObjectNodeTypeReference: 'AdditionalCustomerGroup4' 
      AdditionalCustomerGroup4,
      @ObjectModel.sapObjectNodeTypeReference: 'AdditionalCustomerGroup5' 
      AdditionalCustomerGroup5,
      SlsDocIsRlvtForProofOfDeliv,
      
      @ObjectModel.sapObjectNodeTypeReference: 'CustomerTaxClassification'       
      CustomerTaxClassification1,
      @ObjectModel.sapObjectNodeTypeReference: 'CustomerTaxClassification'   
      CustomerTaxClassification2,
      @ObjectModel.sapObjectNodeTypeReference: 'CustomerTaxClassification'   
      CustomerTaxClassification3,
      @ObjectModel.sapObjectNodeTypeReference: 'CustomerTaxClassification'   
      CustomerTaxClassification4,
      @ObjectModel.sapObjectNodeTypeReference: 'CustomerTaxClassification'   
      CustomerTaxClassification5,
      @ObjectModel.sapObjectNodeTypeReference: 'CustomerTaxClassification'   
      CustomerTaxClassification6,
      @ObjectModel.sapObjectNodeTypeReference: 'CustomerTaxClassification'   
      CustomerTaxClassification7,
      @ObjectModel.sapObjectNodeTypeReference: 'CustomerTaxClassification'   
      CustomerTaxClassification8,
      @ObjectModel.sapObjectNodeTypeReference: 'CustomerTaxClassification'   
      CustomerTaxClassification9,
      
      TaxDepartureCountry,
      VATRegistrationCountry,

      @ObjectModel.sapObjectNodeTypeReference: 'SalesOrderApprovalReason'
      SalesOrderApprovalReason,
      @ObjectModel.sapObjectNodeTypeReference: 'SalesDocApprovalStatus'
      SalesDocApprovalStatus,

      @ObjectModel.sapObjectNodeTypeReference: 'OverallSDProcessStatus'
      OverallSDProcessStatus,

      @ObjectModel.sapObjectNodeTypeReference: 'TotalCreditCheckStatus'
      TotalCreditCheckStatus,

      @ObjectModel.sapObjectNodeTypeReference: 'SlsDocOvrlTotalDeliveryStatus'
      OverallTotalDeliveryStatus,

      @ObjectModel.sapObjectNodeTypeReference: 'OverallSDDocumentRejectionSts'
      OverallSDDocumentRejectionSts,
      // Accounting
      BillingDocumentDate, 
      ContractAccount,
      AdditionalValueDays,
      CustomerPurchaseOrderSuplmnt,
      ServicesRenderedDate,
      
      // Expose own associations
      _Item,
      _ExtHdrData
      
}
where
  SalesOrder.SalesOrderProcessingType <> 'P' and // PBS scenarios
  SalesOrder.SalesOrderProcessingType <> 'S'     // Solution order scenarios
