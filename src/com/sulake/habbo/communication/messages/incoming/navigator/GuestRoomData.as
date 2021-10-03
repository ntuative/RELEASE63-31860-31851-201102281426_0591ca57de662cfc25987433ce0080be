package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_372:int;
      
      private var var_717:Boolean;
      
      private var var_946:String;
      
      private var _ownerName:String;
      
      private var var_2296:int;
      
      private var var_2186:int;
      
      private var var_2697:int;
      
      private var var_1694:String;
      
      private var var_2698:int;
      
      private var var_2295:Boolean;
      
      private var var_766:int;
      
      private var var_1334:int;
      
      private var var_2700:String;
      
      private var var_800:Array;
      
      private var var_2699:RoomThumbnailData;
      
      private var var_2468:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_800 = new Array();
         super();
         this.var_372 = param1.readInteger();
         this.var_717 = param1.readBoolean();
         this.var_946 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2296 = param1.readInteger();
         this.var_2186 = param1.readInteger();
         this.var_2697 = param1.readInteger();
         this.var_1694 = param1.readString();
         this.var_2698 = param1.readInteger();
         this.var_2295 = param1.readBoolean();
         this.var_766 = param1.readInteger();
         this.var_1334 = param1.readInteger();
         this.var_2700 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_800.push(_loc4_);
            _loc3_++;
         }
         this.var_2699 = new RoomThumbnailData(param1);
         this.var_2468 = param1.readBoolean();
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
      
      public function get flatId() : int
      {
         return this.var_372;
      }
      
      public function get event() : Boolean
      {
         return this.var_717;
      }
      
      public function get roomName() : String
      {
         return this.var_946;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2296;
      }
      
      public function get userCount() : int
      {
         return this.var_2186;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2697;
      }
      
      public function get description() : String
      {
         return this.var_1694;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2698;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2295;
      }
      
      public function get score() : int
      {
         return this.var_766;
      }
      
      public function get categoryId() : int
      {
         return this.var_1334;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2700;
      }
      
      public function get tags() : Array
      {
         return this.var_800;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2699;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2468;
      }
   }
}
