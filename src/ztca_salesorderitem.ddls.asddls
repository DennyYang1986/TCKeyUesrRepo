@ClientHandling.algorithm:#SESSION_VARIABLE
@EndUserText.label: 'Sales Order Item'
@AbapCatalog: {
  sqlViewName: 'ZTCASOITEM',
  compiler.compareFilter: true
}
@AccessControl: {
  authorizationCheck: #CHECK
}
@ObjectModel: {
   usageType: {
     dataClass:      #TRANSACTIONAL,
     serviceQuality: #C,
     sizeCategory:   #XL
   }
}
@Metadata.ignorePropagatedAnnotations: true

define view ZTCA_SalesOrderItem

  as select from I_SalesOrderItem
  association [1..1] to I_SalesDocument           as SalesDocumentBasic         on  SalesDocumentBasic.SalesDocument = $projection.SalesOrder
  association [1..1] to ZTCA_SalesOrder                   as _SalesOrder                on  _SalesOrder.SalesOrder = $projection.SalesOrder

  //Extensibility
  association [0..1] to E_SalesDocumentItemBasic       as _Extension                 on  _Extension.SalesDocument     = $projection.SalesOrder
                                                                                     and _Extension.SalesDocumentItem = $projection.SalesOrderItem

{
  key  SalesOrder,

       @ObjectModel.text.element: [ 'SalesOrderItemText']
  key  SalesOrderItem,

       HigherLevelItem,

       HigherLevelItemUsage,

       SalesOrderItemCategory,

       @Semantics.text: true
       SalesOrderItemText,

       PurchaseOrderByCustomer,
       PurchaseOrderByShipToParty,
       UnderlyingPurchaseOrderItem,

       ExternalItemID,

       Product,

       MaterialByCustomer,

       PricingDate,

       PricingReferenceMaterial,

       BillingPlan,


       @Semantics.quantity.unitOfMeasure: 'RequestedQuantityUnit'
       RequestedQuantity,

       @Semantics.unitOfMeasure: true
       RequestedQuantityUnit,

       @Semantics.unitOfMeasure: true
       OrderQuantityUnit,


       @Semantics.quantity.unitOfMeasure: 'OrderQuantityUnit'
       ConfdDelivQtyInOrderQtyUnit,

       @Semantics.quantity.unitOfMeasure: 'ItemWeightUnit'
       ItemGrossWeight,

       @Semantics.quantity.unitOfMeasure: 'ItemWeightUnit'
       ItemNetWeight,

       @Semantics.unitOfMeasure: true
       ItemWeightUnit,

       @Semantics.quantity.unitOfMeasure: 'ItemVolumeUnit'
       ItemVolume,

       @Semantics.unitOfMeasure: true
       ItemVolumeUnit,

       @Semantics.currencyCode: true
       TransactionCurrency,

       @Semantics.amount.currencyCode: 'TransactionCurrency'
       NetAmount,

       TotalSDDocReferenceStatus,
       @ObjectModel.sapObjectNodeTypeReference: 'SDDocReferenceStatus'
       SDDocReferenceStatus,

       @ObjectModel.sapObjectNodeTypeReference: 'MaterialSubstitutionReason'
       MaterialSubstitutionReason,

       MaterialGroup,
       MaterialPricingGroup,

       AdditionalMaterialGroup1,
       AdditionalMaterialGroup2,
       AdditionalMaterialGroup3,
       AdditionalMaterialGroup4,
       AdditionalMaterialGroup5,
       BillingDocumentDate,
       ContractAccount,
       AdditionalValueDays,
       ServicesRenderedDate,


       Batch,
       Plant                                                                                    as ProductionPlant,
       OriginalPlant,
       AltvBsdConfSubstitutionStatus,
       StorageLocation,
       DeliveryGroup,
       ShippingPoint,
       ShippingType,
       DeliveryPriority,
       DeliveryDateQuantityIsFixed,
       DeliveryDateTypeRule,

       IncotermsClassification,
       IncotermsTransferLocation,
       IncotermsLocation1,
       IncotermsLocation2,

       @Semantics.amount.currencyCode: 'TransactionCurrency'
       TaxAmount,
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
       @Semantics.amount.currencyCode: 'TransactionCurrency'
       CostAmount,
       CustomerPaymentTerms,
       FixedValueDate,

       CustomerGroup,
       @ObjectModel.sapObjectNodeTypeReference: 'SalesDocumentRjcnReason'
       SalesDocumentRjcnReason,
       ItemBillingBlockReason,
       SlsDocIsRlvtForProofOfDeliv,

       WBSElementInternalID,
       ProfitCenter,

       ReferenceSDDocument,
       ReferenceSDDocumentItem,

       SDProcessStatus,

       DeliveryStatus,

       OrderRelatedBillingStatus,

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

       // For Access control
       @Consumption.hidden: true
       @ObjectModel.sapObjectNodeTypeReference: 'SalesOrderType'
       SalesDocumentBasic.SalesDocumentType                                                     as SalesOrderType,
       //_SalesOrder.SalesOrderType,
       @Consumption.hidden: true
       SalesDocumentBasic.OrganizationDivision,
       @Consumption.hidden: true
       SalesDocumentBasic.SalesOrganization,
       @Consumption.hidden: true
       SalesDocumentBasic.DistributionChannel,


       // Expose own associations
       _SalesOrder



}
