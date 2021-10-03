package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1260:Boolean;
      
      private var var_2143:int;
      
      private var var_1582:int;
      
      private var var_1583:int;
      
      private var var_2146:int;
      
      private var var_2142:int;
      
      private var var_2145:int;
      
      private var var_2144:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1260;
      }
      
      public function get commission() : int
      {
         return this.var_2143;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1582;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1583;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2142;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2146;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2145;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2144;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1260 = param1.readBoolean();
         this.var_2143 = param1.readInteger();
         this.var_1582 = param1.readInteger();
         this.var_1583 = param1.readInteger();
         this.var_2142 = param1.readInteger();
         this.var_2146 = param1.readInteger();
         this.var_2145 = param1.readInteger();
         this.var_2144 = param1.readInteger();
         return true;
      }
   }
}
