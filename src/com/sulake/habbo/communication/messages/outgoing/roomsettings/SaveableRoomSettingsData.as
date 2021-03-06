package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1694:String;
      
      private var var_2296:int;
      
      private var _password:String;
      
      private var var_1334:int;
      
      private var var_2463:int;
      
      private var var_800:Array;
      
      private var var_2466:Array;
      
      private var var_2468:Boolean;
      
      private var var_2462:Boolean;
      
      private var var_2465:Boolean;
      
      private var var_2467:Boolean;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2468;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2468 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2462;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2462 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2465;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2465 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2467;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2467 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1694;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1694 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2296;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2296 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1334;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1334 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2463;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2463 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_800;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_800 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2466;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2466 = param1;
      }
   }
}
