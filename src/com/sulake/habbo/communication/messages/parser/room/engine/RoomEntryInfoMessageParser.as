package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1899:Boolean;
      
      private var var_2654:int;
      
      private var var_438:Boolean;
      
      private var var_1188:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_1899;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2654;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1188;
      }
      
      public function get owner() : Boolean
      {
         return this.var_438;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1188 != null)
         {
            this.var_1188.dispose();
            this.var_1188 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1899 = param1.readBoolean();
         if(this.var_1899)
         {
            this.var_2654 = param1.readInteger();
            this.var_438 = param1.readBoolean();
         }
         else
         {
            this.var_1188 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
