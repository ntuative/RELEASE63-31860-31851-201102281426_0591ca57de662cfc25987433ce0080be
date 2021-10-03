package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2408:Boolean;
      
      private var var_2409:int;
      
      private var var_1620:Array;
      
      private var var_685:Array;
      
      private var var_686:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2408;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2409;
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1620 = [];
         this.var_685 = [];
         this.var_686 = [];
         this.var_2408 = param1.readBoolean();
         this.var_2409 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1620.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_685.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_686.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
