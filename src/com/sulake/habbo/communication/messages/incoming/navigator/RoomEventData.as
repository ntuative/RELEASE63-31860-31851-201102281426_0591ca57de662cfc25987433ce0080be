package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1215:Boolean;
      
      private var var_2458:int;
      
      private var var_2459:String;
      
      private var var_372:int;
      
      private var var_2456:int;
      
      private var var_2223:String;
      
      private var var_2457:String;
      
      private var var_2460:String;
      
      private var var_800:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_800 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1215 = false;
            return;
         }
         this.var_1215 = true;
         this.var_2458 = int(_loc2_);
         this.var_2459 = param1.readString();
         this.var_372 = int(param1.readString());
         this.var_2456 = param1.readInteger();
         this.var_2223 = param1.readString();
         this.var_2457 = param1.readString();
         this.var_2460 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_800.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_800 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2458;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2459;
      }
      
      public function get flatId() : int
      {
         return this.var_372;
      }
      
      public function get eventType() : int
      {
         return this.var_2456;
      }
      
      public function get eventName() : String
      {
         return this.var_2223;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2457;
      }
      
      public function get creationTime() : String
      {
         return this.var_2460;
      }
      
      public function get tags() : Array
      {
         return this.var_800;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1215;
      }
   }
}
