package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1552:int;
      
      private var var_2273:String;
      
      private var var_1467:int;
      
      private var var_1168:int;
      
      private var var_1709:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1552 = param1.readInteger();
         this.var_2273 = param1.readString();
         this.var_1467 = param1.readInteger();
         this.var_1168 = param1.readInteger();
         this.var_1709 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1552;
      }
      
      public function get petName() : String
      {
         return this.var_2273;
      }
      
      public function get level() : int
      {
         return this.var_1467;
      }
      
      public function get petType() : int
      {
         return this.var_1168;
      }
      
      public function get breed() : int
      {
         return this.var_1709;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
