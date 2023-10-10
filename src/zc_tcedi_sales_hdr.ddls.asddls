@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZR_TCEDI_SALES_HDR'
@ObjectModel.semanticKey: [ 'Salesdocument' ]
define root view entity ZC_TCEDI_SALES_HDR
  provider contract transactional_query
  as projection on ZR_TCEDI_SALES_HDR
{
  key Salesdocument,
  Issynced,
  Tmvisibility,
  GvsworkspaceID,
  LocalLastChanged
  
}
