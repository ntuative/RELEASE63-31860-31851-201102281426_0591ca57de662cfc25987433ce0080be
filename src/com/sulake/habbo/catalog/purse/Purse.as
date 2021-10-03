package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_180:int = 0;
       
      
      private var var_2149:int = 0;
      
      private var var_1282:Dictionary;
      
      private var var_1574:int = 0;
      
      private var var_1573:int = 0;
      
      private var var_2172:Boolean = false;
      
      private var var_2170:int = 0;
      
      private var var_2171:int = 0;
      
      public function Purse()
      {
         this.var_1282 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2149;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2149 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1574;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1574 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1573;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1573 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1574 > 0 || this.var_1573 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2172;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2172 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2170;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2170 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2171;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2171 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1282;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1282 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1282[param1];
      }
   }
}
