package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2026:int;
      
      private var var_1975:String;
      
      private var var_1576:int;
      
      private var var_378:int;
      
      private var var_2024:int = -1;
      
      private var var_2025:int;
      
      private var var_1577:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2026 = param3;
         this.var_1975 = param4;
         this.var_1576 = param5;
         this.var_378 = param6;
         this.var_2024 = param7;
         this.var_2025 = param8;
         this.var_1577 = param9;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2026;
      }
      
      public function get stuffData() : String
      {
         return this.var_1975;
      }
      
      public function get price() : int
      {
         return this.var_1576;
      }
      
      public function get status() : int
      {
         return this.var_378;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2024;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2025;
      }
      
      public function get offerCount() : int
      {
         return this.var_1577;
      }
   }
}
