namespace my.purchase;

// Vendor Master
entity Vendor {
  key vendorID : UUID;
  vendorName   : String(100);
  location     : String(50);
  contact      : String(30);
  purchaseOrders : Association to many PurchaseOrder on purchaseOrders.vendor = $self;
}

// Purchase Order Header
entity PurchaseOrder {
  key poID   : UUID;
  vendor     : Association to Vendor;
  poDate     : Date;
  amount     : Decimal(15,2);
  status     : String(20);   // Open / Closed / Cancelled
  items      : Association to many PO_Item on items.po = $self;
}

// Purchase Order Items
entity PO_Item {
  key itemID : UUID;
  po         : Association to PurchaseOrder;
  material   : String(100);
  quantity   : Integer;
  price      : Decimal(15,2);
}