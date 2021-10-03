package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1530:String;
      
      private var var_1576:int;
      
      private var var_2088:Boolean;
      
      private var var_2089:Boolean;
      
      private var var_2090:int;
      
      private var var_2093:int;
      
      private var var_2092:int;
      
      private var var_2087:int;
      
      private var var_2091:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1530 = param1.readString();
         this.var_1576 = param1.readInteger();
         this.var_2088 = param1.readBoolean();
         this.var_2089 = param1.readBoolean();
         this.var_2090 = param1.readInteger();
         this.var_2093 = param1.readInteger();
         this.var_2092 = param1.readInteger();
         this.var_2087 = param1.readInteger();
         this.var_2091 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1530;
      }
      
      public function get price() : int
      {
         return this.var_1576;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2088;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2089;
      }
      
      public function get periods() : int
      {
         return this.var_2090;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2093;
      }
      
      public function get year() : int
      {
         return this.var_2092;
      }
      
      public function get month() : int
      {
         return this.var_2087;
      }
      
      public function get day() : int
      {
         return this.var_2091;
      }
   }
}
