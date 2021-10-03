package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2425:String;
      
      private var var_2058:int;
      
      private var var_2070:int;
      
      private var var_2059:String;
      
      private var var_2624:int;
      
      private var var_1712:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2425 = param1.readString();
         this.var_2058 = param1.readInteger();
         this.var_2070 = param1.readInteger();
         this.var_2059 = param1.readString();
         this.var_2624 = param1.readInteger();
         this.var_1712 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2425;
      }
      
      public function get unitPort() : int
      {
         return this.var_2058;
      }
      
      public function get worldId() : int
      {
         return this.var_2070;
      }
      
      public function get castLibs() : String
      {
         return this.var_2059;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2624;
      }
      
      public function get nodeId() : int
      {
         return this.var_1712;
      }
   }
}
