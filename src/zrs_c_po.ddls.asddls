@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Purchase Order Projection View'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZRS_C_PO as projection on ZRS_I_PO
{
    key VendorUuid,
    key PoUuid,
    PurchaseOrdNo,
    CompanyCode,
    DocCat,
    DocType,
    /* Associations */
    _Vendor: redirected to parent ZRS_C_VENDOR
}
