package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1766:String;
      
      private var var_1112:int;
      
      private var var_1113:int;
      
      private var var_1765:int;
      
      private var var_1097:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1766 = param1.readString();
         this.var_1112 = param1.readInteger();
         this.var_1113 = param1.readInteger();
         this.var_1765 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1097 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1097.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
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
      
      public function get products() : Array
      {
         return this.var_1097;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1765;
      }
   }
}
