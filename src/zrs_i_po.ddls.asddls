@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Purchase Order Interface View'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZRS_I_PO as select from zrs_purchase_ord
association to parent ZRS_I_VENDOR as _Vendor
on $projection.VendorUuid = _Vendor.VendorUuid
{
    key vendor_uuid as VendorUuid,
    key po_uuid as PoUuid,
    ebeln as PurchaseOrdNo,
    bukrs as CompanyCode,
    vbtyp as DocCat,
    blart as DocType,
    _Vendor
}
