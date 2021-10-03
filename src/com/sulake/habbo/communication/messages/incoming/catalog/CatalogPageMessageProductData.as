package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_82:String = "i";
      
      public static const const_90:String = "s";
      
      public static const const_256:String = "e";
       
      
      private var var_1906:String;
      
      private var var_2470:int;
      
      private var var_1455:String;
      
      private var var_1454:int;
      
      private var var_1907:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1906 = param1.readString();
         this.var_2470 = param1.readInteger();
         this.var_1455 = param1.readString();
         this.var_1454 = param1.readInteger();
         this.var_1907 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1906;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2470;
      }
      
      public function get extraParam() : String
      {
         return this.var_1455;
      }
      
      public function get productCount() : int
      {
         return this.var_1454;
      }
      
      public function get expiration() : int
      {
         return this.var_1907;
      }
   }
}
