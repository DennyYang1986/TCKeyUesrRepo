@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: '##GENERATED ZTCEDI_SALES_HDR'
define root view entity ZR_TCEDI_SALES_HDR
  as select from ztcedi_sales_hdr
{
  key salesdocument as Salesdocument,
  issynced as Issynced,
  tmvisibility as Tmvisibility,
  gvsworkspaceid as GvsworkspaceID,
  @Semantics.systemDateTime.createdAt: true
  created_at as CreatedAt,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt,
  @Semantics.user.lastChangedBy: true
  last_changed_by as LastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed as LocalLastChanged
  
}
