package com.sulake.habbo.inventory.items
{
   public class WallItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _type:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var var_1420:Number;
      
      protected var var_1975:String;
      
      protected var var_2736:Boolean;
      
      protected var var_2737:Boolean;
      
      protected var var_2271:Boolean;
      
      protected var var_2501:Boolean;
      
      protected var var_956:Boolean;
      
      public function WallItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2271 = param5;
         this.var_2737 = param6;
         this.var_2736 = param7;
         this.var_2501 = param8;
         this.var_1975 = param9;
         this.var_1420 = param10;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get extra() : Number
      {
         return this.var_1420;
      }
      
      public function get stuffData() : String
      {
         return this.var_1975;
      }
      
      public function set stuffData(param1:String) : void
      {
         this.var_1975 = param1;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_2736;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_2737;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2271;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2501;
      }
      
      public function get locked() : Boolean
      {
         return this.var_956;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_956 = param1;
      }
   }
}
