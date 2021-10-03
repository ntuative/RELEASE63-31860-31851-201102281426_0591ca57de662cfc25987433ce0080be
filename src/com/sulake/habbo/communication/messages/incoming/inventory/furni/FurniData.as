package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2148:int;
      
      private var var_1266:String;
      
      private var _objId:int;
      
      private var var_1526:int;
      
      private var _category:int;
      
      private var var_1975:String;
      
      private var var_2529:Boolean;
      
      private var var_2530:Boolean;
      
      private var var_2531:Boolean;
      
      private var var_2043:Boolean;
      
      private var var_2113:int;
      
      private var var_1420:int;
      
      private var var_1525:String = "";
      
      private var var_2493:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2148 = param1;
         this.var_1266 = param2;
         this._objId = param3;
         this.var_1526 = param4;
         this._category = param5;
         this.var_1975 = param6;
         this.var_2529 = param7;
         this.var_2530 = param8;
         this.var_2531 = param9;
         this.var_2043 = param10;
         this.var_2113 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1525 = param1;
         this.var_1420 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2148;
      }
      
      public function get itemType() : String
      {
         return this.var_1266;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1526;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1975;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2529;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2530;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2531;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2043;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2113;
      }
      
      public function get slotId() : String
      {
         return this.var_1525;
      }
      
      public function get songId() : int
      {
         return this.var_2493;
      }
      
      public function get extra() : int
      {
         return this.var_1420;
      }
   }
}
