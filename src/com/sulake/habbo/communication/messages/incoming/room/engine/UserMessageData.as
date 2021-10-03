package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1066:String = "M";
      
      public static const const_1495:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_142:Number = 0;
      
      private var var_141:Number = 0;
      
      private var var_253:int = 0;
      
      private var _name:String = "";
      
      private var _userType:int = 0;
      
      private var var_923:String = "";
      
      private var var_541:String = "";
      
      private var var_2284:String = "";
      
      private var var_2199:int;
      
      private var var_2198:int = 0;
      
      private var var_2281:String = "";
      
      private var var_2283:int = 0;
      
      private var var_2201:int = 0;
      
      private var var_2282:String = "";
      
      private var var_170:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_170 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_170)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_142;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_170)
         {
            this.var_142 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_141;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_170)
         {
            this.var_141 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_253;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_170)
         {
            this.var_253 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_170)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this._userType;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_170)
         {
            this._userType = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_923;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_170)
         {
            this.var_923 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_541;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_170)
         {
            this.var_541 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2284;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_170)
         {
            this.var_2284 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2199;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_170)
         {
            this.var_2199 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2198;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_170)
         {
            this.var_2198 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2281;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_170)
         {
            this.var_2281 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2283;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_170)
         {
            this.var_2283 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2201;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_170)
         {
            this.var_2201 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2282;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_170)
         {
            this.var_2282 = param1;
         }
      }
   }
}
