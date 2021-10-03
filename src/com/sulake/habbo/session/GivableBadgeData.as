package com.sulake.habbo.session
{
   public class GivableBadgeData
   {
       
      
      private var var_311:int;
      
      private var var_2623:String;
      
      public function GivableBadgeData(param1:int, param2:String)
      {
         super();
         this.var_311 = param1;
         this.var_2623 = param2;
      }
      
      public function get badgeId() : int
      {
         return this.var_311;
      }
      
      public function get achievementTypeName() : String
      {
         return this.var_2623;
      }
   }
}
