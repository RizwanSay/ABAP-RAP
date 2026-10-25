@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vendor Consumption View'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZRS_C_VENDOR 
provider contract transactional_query
as projection on ZRS_I_VENDOR
{
    key VendorUuid,
    VendorNo,
    VendorName,
    Country,
    City,
//    _CountryVH,
    _PurchaseOrd: redirected to composition child ZRS_C_PO
}
