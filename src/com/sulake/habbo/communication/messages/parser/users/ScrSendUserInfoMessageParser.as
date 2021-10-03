package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1901:int = 1;
      
      public static const const_1607:int = 2;
       
      
      private var var_872:String;
      
      private var var_2571:int;
      
      private var var_2568:int;
      
      private var var_2572:int;
      
      private var var_2565:int;
      
      private var var_2566:Boolean;
      
      private var var_2172:Boolean;
      
      private var var_2170:int;
      
      private var var_2171:int;
      
      private var var_2567:Boolean;
      
      private var var_2570:int;
      
      private var var_2569:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_872 = param1.readString();
         this.var_2571 = param1.readInteger();
         this.var_2568 = param1.readInteger();
         this.var_2572 = param1.readInteger();
         this.var_2565 = param1.readInteger();
         this.var_2566 = param1.readBoolean();
         this.var_2172 = param1.readBoolean();
         this.var_2170 = param1.readInteger();
         this.var_2171 = param1.readInteger();
         this.var_2567 = param1.readBoolean();
         this.var_2570 = param1.readInteger();
         this.var_2569 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_872;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2571;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2568;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2572;
      }
      
      public function get responseType() : int
      {
         return this.var_2565;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2566;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2172;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2170;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2171;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2567;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2570;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2569;
      }
   }
}
