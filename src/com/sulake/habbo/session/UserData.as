package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_923:String = "";
      
      private var var_541:String = "";
      
      private var var_2284:String = "";
      
      private var var_2199:int;
      
      private var var_2198:int = 0;
      
      private var var_2281:String = "";
      
      private var var_2283:int = 0;
      
      private var var_2201:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2199;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2199 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_923;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_923 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_541;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_541 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2284;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2284 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2198;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2198 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2281;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2281 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2283;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2283 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2201;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2201 = param1;
      }
   }
}
