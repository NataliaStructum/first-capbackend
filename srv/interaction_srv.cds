using app.interactions from '../db/interactions';

service CatalogService {

 entity Interactions_Header
    as projection on interactions.Interactions_Header;

 entity Interactions_Items
    as projection on  interactions.Interactions_Items;

 entity Product
    as projection on  interactions.Product;

 entity Category
    as projection on  interactions.Category;

 view ProductAndCategory as select from interactions.Product { * , CATEGORY.NAME_CATEGORY } ;

}
