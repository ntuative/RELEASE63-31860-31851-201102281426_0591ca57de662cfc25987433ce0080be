package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1547:String = "pricing_model_unknown";
      
      public static const const_494:String = "pricing_model_single";
      
      public static const const_523:String = "pricing_model_multi";
      
      public static const const_492:String = "pricing_model_bundle";
      
      public static const const_1605:String = "price_type_none";
      
      public static const const_894:String = "price_type_credits";
      
      public static const const_984:String = "price_type_activitypoints";
      
      public static const const_996:String = "price_type_credits_and_activitypoints";
       
      
      private var var_727:String;
      
      private var var_1111:String;
      
      private var _offerId:int;
      
      private var var_1766:String;
      
      private var var_1112:int;
      
      private var var_1113:int;
      
      private var var_1765:int;
      
      private var var_433:ICatalogPage;
      
      private var var_728:IProductContainer;
      
      private var var_2483:int;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         this._offerId = param1.offerId;
         this.var_1766 = param1.localizationId;
         this.var_1112 = param1.priceInCredits;
         this.var_1113 = param1.priceInActivityPoints;
         this.var_1765 = param1.activityPointType;
         this.var_433 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         this.analyzePricingModel(_loc3_);
         this.analyzePriceType();
         this.createProductContainer(_loc3_);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_433;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1766;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1112;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1113;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1765;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_728;
      }
      
      public function get pricingModel() : String
      {
         return this.var_727;
      }
      
      public function get priceType() : String
      {
         return this.var_1111;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2483;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2483 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_1766 = "";
         this.var_1112 = 0;
         this.var_1113 = 0;
         this.var_1765 = 0;
         this.var_433 = null;
         if(this.var_728 != null)
         {
            this.var_728.dispose();
            this.var_728 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_727)
         {
            case const_494:
               this.var_728 = new SingleProductContainer(this,param1);
               break;
            case const_523:
               this.var_728 = new MultiProductContainer(this,param1);
               break;
            case const_492:
               this.var_728 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_727);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_727 = const_494;
            }
            else
            {
               this.var_727 = const_523;
            }
         }
         else if(param1.length > 1)
         {
            this.var_727 = const_492;
         }
         else
         {
            this.var_727 = const_1547;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1112 > 0 && this.var_1113 > 0)
         {
            this.var_1111 = const_996;
         }
         else if(this.var_1112 > 0)
         {
            this.var_1111 = const_894;
         }
         else if(this.var_1113 > 0)
         {
            this.var_1111 = const_984;
         }
         else
         {
            this.var_1111 = const_1605;
         }
      }
   }
}
