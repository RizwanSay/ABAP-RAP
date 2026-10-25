@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vendor Interface View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZRS_I_VENDOR
  as select from zrs_vendor
//  association [0..*] to ZRS_I_VH_COUNTRY_DOMAIN as _CountryVH on $projection.Country = _CountryVH.Value
//                                                          and _CountryVH.language = $session.system_language
  composition [0..*] of ZRS_I_PO as _PurchaseOrd
{
  key vendor_uuid as VendorUuid,
      lifnr       as VendorNo,
      name        as VendorName,
      land1       as Country,
      ort01       as City,
//      _CountryVH,
      _PurchaseOrd
      //    _association_name // Make association public
}
