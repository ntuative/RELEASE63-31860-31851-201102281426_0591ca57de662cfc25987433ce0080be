package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2445:String;
      
      private var var_2447:Class;
      
      private var var_2446:Class;
      
      private var var_1756:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2445 = param1;
         this.var_2447 = param2;
         this.var_2446 = param3;
         if(rest == null)
         {
            this.var_1756 = new Array();
         }
         else
         {
            this.var_1756 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2445;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2447;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2446;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1756;
      }
   }
}
