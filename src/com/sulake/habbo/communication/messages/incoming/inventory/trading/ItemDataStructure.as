package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2011:int;
      
      private var var_1266:String;
      
      private var var_2265:int;
      
      private var var_2267:int;
      
      private var _category:int;
      
      private var var_1975:String;
      
      private var var_1420:int;
      
      private var var_2266:int;
      
      private var var_2268:int;
      
      private var var_2270:int;
      
      private var var_2269:int;
      
      private var var_2271:Boolean;
      
      private var var_2811:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2011 = param1;
         this.var_1266 = param2;
         this.var_2265 = param3;
         this.var_2267 = param4;
         this._category = param5;
         this.var_1975 = param6;
         this.var_1420 = param7;
         this.var_2266 = param8;
         this.var_2268 = param9;
         this.var_2270 = param10;
         this.var_2269 = param11;
         this.var_2271 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2011;
      }
      
      public function get itemType() : String
      {
         return this.var_1266;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2265;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2267;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1975;
      }
      
      public function get extra() : int
      {
         return this.var_1420;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2266;
      }
      
      public function get creationDay() : int
      {
         return this.var_2268;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2270;
      }
      
      public function get creationYear() : int
      {
         return this.var_2269;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2271;
      }
      
      public function get songID() : int
      {
         return this.var_1420;
      }
   }
}
