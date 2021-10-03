package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1790:int;
      
      private var var_2503:int;
      
      private var var_1287:int;
      
      private var var_2069:int;
      
      private var var_108:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1790 = param1.readInteger();
         this.var_2503 = param1.readInteger();
         this.var_1287 = param1.readInteger();
         this.var_2069 = param1.readInteger();
         this.var_108 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1790);
      }
      
      public function get callId() : int
      {
         return this.var_1790;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2503;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1287;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2069;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_108;
      }
   }
}
