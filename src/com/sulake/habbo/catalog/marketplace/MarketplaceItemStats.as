package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2025:int;
      
      private var var_2309:int;
      
      private var var_2307:int;
      
      private var _dayOffsets:Array;
      
      private var var_1896:Array;
      
      private var var_1895:Array;
      
      private var var_2308:int;
      
      private var var_2306:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2025;
      }
      
      public function get offerCount() : int
      {
         return this.var_2309;
      }
      
      public function get historyLength() : int
      {
         return this.var_2307;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1896;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1895;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2308;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2306;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2025 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2309 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2307 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1896 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1895 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2308 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2306 = param1;
      }
   }
}
