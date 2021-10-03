package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_142:Number = 0;
      
      private var var_141:Number = 0;
      
      private var var_2455:Number = 0;
      
      private var var_2453:Number = 0;
      
      private var var_2452:Number = 0;
      
      private var var_2454:Number = 0;
      
      private var var_253:int = 0;
      
      private var var_2394:int = 0;
      
      private var var_315:Array;
      
      private var var_2451:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_315 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_142 = param3;
         this.var_141 = param4;
         this.var_2455 = param5;
         this.var_253 = param6;
         this.var_2394 = param7;
         this.var_2453 = param8;
         this.var_2452 = param9;
         this.var_2454 = param10;
         this.var_2451 = param11;
         this.var_315 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_142;
      }
      
      public function get z() : Number
      {
         return this.var_141;
      }
      
      public function get localZ() : Number
      {
         return this.var_2455;
      }
      
      public function get targetX() : Number
      {
         return this.var_2453;
      }
      
      public function get targetY() : Number
      {
         return this.var_2452;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2454;
      }
      
      public function get dir() : int
      {
         return this.var_253;
      }
      
      public function get dirHead() : int
      {
         return this.var_2394;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2451;
      }
      
      public function get actions() : Array
      {
         return this.var_315.slice();
      }
   }
}
