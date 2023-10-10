@AbapCatalog.viewEnhancementCategory: [#PROJECTION_LIST]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'EDI extended sales hdr info'
@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel: {
   representativeKey: 'ExtSalesdocument',
   usageType: {
     dataClass:      #TRANSACTIONAL,
     serviceQuality: #B,
     sizeCategory:   #XL
   },
   supportedCapabilities: [ #ANALYTICAL_DIMENSION, #CDS_MODELING_ASSOCIATION_TARGET, #SQL_DATA_SOURCE, #CDS_MODELING_DATA_SOURCE ],
   modelingPattern: #ANALYTICAL_DIMENSION
}
@AbapCatalog.extensibility: {
  extensible: true,
  elementSuffix: 'YTC',
  allowNewDatasources: false,
  dataSources: ['ExtSalesHdr'],
  quota: {
    maximumFields: 250,
    maximumBytes: 2500
  }
}
define view entity ZTCIEDI_SALESHDR
  as select from ztcedi_sales_hdr as ExtSalesHdr
{
  key salesdocument as ExtSalesdocument,
      issynced      as Issynced,
      tmvisibility as TMVisibility,
      gvsworkspaceid as GVSWorkspaceId
}
