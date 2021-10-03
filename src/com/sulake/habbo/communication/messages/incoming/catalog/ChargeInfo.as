package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2211:int;
      
      private var var_2210:int;
      
      private var var_1112:int;
      
      private var var_1113:int;
      
      private var var_1765:int;
      
      private var var_2212:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2211 = param1.readInteger();
         this.var_2210 = param1.readInteger();
         this.var_1112 = param1.readInteger();
         this.var_1113 = param1.readInteger();
         this.var_1765 = param1.readInteger();
         this.var_2212 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2211;
      }
      
      public function get charges() : int
      {
         return this.var_2210;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1112;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1113;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2212;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1765;
      }
   }
}
