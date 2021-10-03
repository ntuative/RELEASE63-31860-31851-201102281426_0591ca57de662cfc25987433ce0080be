package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_372:int;
      
      private var var_2186:int;
      
      private var var_2337:Boolean;
      
      private var var_2243:int;
      
      private var _ownerName:String;
      
      private var var_108:RoomData;
      
      private var var_717:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_372 = param1.readInteger();
         this.var_2186 = param1.readInteger();
         this.var_2337 = param1.readBoolean();
         this.var_2243 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_108 = new RoomData(param1);
         this.var_717 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_108 != null)
         {
            this.var_108.dispose();
            this.var_108 = null;
         }
         if(this.var_717 != null)
         {
            this.var_717.dispose();
            this.var_717 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_372;
      }
      
      public function get userCount() : int
      {
         return this.var_2186;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2337;
      }
      
      public function get ownerId() : int
      {
         return this.var_2243;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_108;
      }
      
      public function get event() : RoomData
      {
         return this.var_717;
      }
   }
}
