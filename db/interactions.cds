namespace app.interactions;

using { Country, managed } from '@sap/cds/common';

type BusinessKey : String(10);
type SDate : DateTime;
type LText : String(1024);


entity Interactions_Header {
  key ID : Integer;
  ITEMS  : Composition of many Interactions_Items on ITEMS.INTHeader = $self;
  PARTNER  : BusinessKey;
  LOG_DATE  : SDate;
  BPCOUNTRY : Country;

};
entity Interactions_Items {

    key INTHeader : association to Interactions_Header;
    key TEXT_ID : BusinessKey;
        LANGU   : String(2);
        LOGTEXT : LText;
};

entity Category {
  key ID_CATEGORY : Integer;
      NAME_CATEGORY : String(15);
}

entity Product : managed {
  key ID_PRODUCT : UUID;
      NAME_PRODUCT : String(20);
      DESCR_PRODUCT : String(50) null; 
      PRICE : Integer;
      STOCK : Integer;
      CATEGORY : Association to Category;
      
}

 

