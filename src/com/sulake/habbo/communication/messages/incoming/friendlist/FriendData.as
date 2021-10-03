package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_820:int;
      
      private var var_715:Boolean;
      
      private var var_1846:Boolean;
      
      private var var_541:String;
      
      private var var_1334:int;
      
      private var var_1916:String;
      
      private var var_1739:String;
      
      private var var_1740:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_820 = param1.readInteger();
         this.var_715 = param1.readBoolean();
         this.var_1846 = param1.readBoolean();
         this.var_541 = param1.readString();
         this.var_1334 = param1.readInteger();
         this.var_1916 = param1.readString();
         this.var_1739 = param1.readString();
         this.var_1740 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_820;
      }
      
      public function get online() : Boolean
      {
         return this.var_715;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1846;
      }
      
      public function get figure() : String
      {
         return this.var_541;
      }
      
      public function get categoryId() : int
      {
         return this.var_1334;
      }
      
      public function get motto() : String
      {
         return this.var_1916;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1739;
      }
      
      public function get realName() : String
      {
         return this.var_1740;
      }
   }
}
