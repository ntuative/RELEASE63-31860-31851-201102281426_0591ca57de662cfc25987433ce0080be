package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1117:int;
      
      private var var_2605:String;
      
      private var var_2606:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1117 = param1.readInteger();
         this.var_2605 = param1.readString();
         this.var_2606 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1117;
      }
      
      public function get requesterName() : String
      {
         return this.var_2605;
      }
      
      public function get method_7() : int
      {
         return this.var_2606;
      }
   }
}
