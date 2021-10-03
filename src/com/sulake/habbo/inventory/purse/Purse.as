package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1574:int = 0;
      
      private var var_1573:int = 0;
      
      private var var_2584:int = 0;
      
      private var var_2583:Boolean = false;
      
      private var var_2172:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1574 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1573 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2584 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2583 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2172 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1574;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1573;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2584;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2583;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2172;
      }
   }
}
