package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1266:int;
      
      private var var_1536:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         this.var_1266 = param1;
         this.var_1536 = param2;
      }
      
      public function get itemType() : int
      {
         return this.var_1266;
      }
      
      public function get method_8() : String
      {
         return this.var_1536;
      }
   }
}
