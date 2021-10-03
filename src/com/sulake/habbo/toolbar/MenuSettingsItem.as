package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2085:String;
      
      private var var_2083:Array;
      
      private var var_2084:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2085 = param1;
         this.var_2083 = param2;
         this.var_2084 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2085;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2083;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2084;
      }
   }
}
