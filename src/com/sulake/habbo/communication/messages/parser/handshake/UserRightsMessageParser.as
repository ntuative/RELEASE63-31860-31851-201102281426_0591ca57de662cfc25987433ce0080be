package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserRightsMessageParser implements IMessageParser
   {
       
      
      private var var_1094:Boolean;
      
      private var var_895:Array = null;
      
      private var var_2310:int;
      
      private var var_1716:int;
      
      public function UserRightsMessageParser()
      {
         super();
         this.var_895 = [];
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:Boolean = param1.readBoolean();
         if(_loc2_)
         {
            this.var_895 = [];
            _loc3_ = param1.readInteger();
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.var_895.push(param1.readString());
               _loc4_++;
            }
            this.var_1094 = false;
         }
         else
         {
            this.var_2310 = param1.readInteger();
            this.var_1716 = param1.readInteger();
            this.var_1094 = true;
         }
         return true;
      }
      
      public function get simpleSecurity() : Boolean
      {
         return this.var_1094;
      }
      
      public function get rights() : Array
      {
         return this.var_895.slice();
      }
      
      public function get clubLevel() : int
      {
         return this.var_2310;
      }
      
      public function get securityLevel() : int
      {
         return this.var_1716;
      }
   }
}
