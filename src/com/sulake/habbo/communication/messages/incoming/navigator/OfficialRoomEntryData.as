package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1199:int = 1;
      
      public static const const_888:int = 2;
      
      public static const const_678:int = 3;
      
      public static const const_1443:int = 4;
       
      
      private var _index:int;
      
      private var var_2422:String;
      
      private var var_2420:String;
      
      private var var_2424:Boolean;
      
      private var var_2421:String;
      
      private var var_918:String;
      
      private var var_2423:int;
      
      private var var_2186:int;
      
      private var _type:int;
      
      private var var_2005:String;
      
      private var var_907:GuestRoomData;
      
      private var var_908:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2422 = param1.readString();
         this.var_2420 = param1.readString();
         this.var_2424 = param1.readInteger() == 1;
         this.var_2421 = param1.readString();
         this.var_918 = param1.readString();
         this.var_2423 = param1.readInteger();
         this.var_2186 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1199)
         {
            this.var_2005 = param1.readString();
         }
         else if(this._type == const_678)
         {
            this.var_908 = new PublicRoomData(param1);
         }
         else if(this._type == const_888)
         {
            this.var_907 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_907 != null)
         {
            this.var_907.dispose();
            this.var_907 = null;
         }
         if(this.var_908 != null)
         {
            this.var_908.dispose();
            this.var_908 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2422;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2420;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2424;
      }
      
      public function get picText() : String
      {
         return this.var_2421;
      }
      
      public function get picRef() : String
      {
         return this.var_918;
      }
      
      public function get folderId() : int
      {
         return this.var_2423;
      }
      
      public function get tag() : String
      {
         return this.var_2005;
      }
      
      public function get userCount() : int
      {
         return this.var_2186;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_907;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_908;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1199)
         {
            return 0;
         }
         if(this.type == const_888)
         {
            return this.var_907.maxUserCount;
         }
         if(this.type == const_678)
         {
            return this.var_908.maxUsers;
         }
         return 0;
      }
   }
}
