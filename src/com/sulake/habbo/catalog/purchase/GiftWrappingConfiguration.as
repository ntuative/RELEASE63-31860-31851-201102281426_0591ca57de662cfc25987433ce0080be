package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1260:Boolean = false;
      
      private var var_1576:int;
      
      private var var_1620:Array;
      
      private var var_685:Array;
      
      private var var_686:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1260 = _loc2_.isWrappingEnabled;
         this.var_1576 = _loc2_.wrappingPrice;
         this.var_1620 = _loc2_.stuffTypes;
         this.var_685 = _loc2_.boxTypes;
         this.var_686 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1260;
      }
      
      public function get price() : int
      {
         return this.var_1576;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1620;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_685;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_686;
      }
   }
}
