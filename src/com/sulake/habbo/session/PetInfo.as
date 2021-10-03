package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1552:int;
      
      private var var_1467:int;
      
      private var var_2246:int;
      
      private var var_2244:int;
      
      private var var_2241:int;
      
      private var _energy:int;
      
      private var var_2242:int;
      
      private var _nutrition:int;
      
      private var var_2247:int;
      
      private var var_2243:int;
      
      private var _ownerName:String;
      
      private var var_2448:int;
      
      private var var_510:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1552;
      }
      
      public function get level() : int
      {
         return this.var_1467;
      }
      
      public function get levelMax() : int
      {
         return this.var_2246;
      }
      
      public function get experience() : int
      {
         return this.var_2244;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2241;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2242;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2247;
      }
      
      public function get ownerId() : int
      {
         return this.var_2243;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2448;
      }
      
      public function get age() : int
      {
         return this.var_510;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1552 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1467 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2246 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2244 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2241 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2242 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2247 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2243 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2448 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_510 = param1;
      }
   }
}
