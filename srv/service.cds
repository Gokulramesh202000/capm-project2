using my.purchase as db from '../db/src/schema';


service CatalogService {
 
  entity Vendors       as projection on db.Vendor;


  entity PurchaseOrders as projection on db.PurchaseOrder;
  
 
  entity PO_Items      as projection on db.PO_Item;
}