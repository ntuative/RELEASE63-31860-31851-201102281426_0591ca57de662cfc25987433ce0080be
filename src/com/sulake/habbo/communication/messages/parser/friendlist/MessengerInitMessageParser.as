package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2719:int;
      
      private var var_2721:int;
      
      private var var_2722:int;
      
      private var var_2720:int;
      
      private var var_95:Array;
      
      private var var_220:Array;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_95 = new Array();
         this.var_220 = new Array();
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2719 = param1.readInteger();
         this.var_2721 = param1.readInteger();
         this.var_2722 = param1.readInteger();
         this.var_2720 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_95.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_220.push(new FriendData(param1));
            _loc4_++;
         }
         return true;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2719;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2721;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2722;
      }
      
      public function get categories() : Array
      {
         return this.var_95;
      }
      
      public function get friends() : Array
      {
         return this.var_220;
      }
      
      public function get evenMoreExtendedFriendLimit() : int
      {
         return this.var_2720;
      }
   }
}
