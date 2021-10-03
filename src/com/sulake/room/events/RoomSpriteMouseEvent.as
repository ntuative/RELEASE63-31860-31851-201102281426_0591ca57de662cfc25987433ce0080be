package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1669:String = "";
      
      private var var_1876:String = "";
      
      private var var_2117:String = "";
      
      private var var_2115:Number = 0;
      
      private var var_2116:Number = 0;
      
      private var var_2118:Number = 0;
      
      private var var_2114:Number = 0;
      
      private var var_2020:Boolean = false;
      
      private var var_2023:Boolean = false;
      
      private var var_2021:Boolean = false;
      
      private var var_2022:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1669 = param2;
         this.var_1876 = param3;
         this.var_2117 = param4;
         this.var_2115 = param5;
         this.var_2116 = param6;
         this.var_2118 = param7;
         this.var_2114 = param8;
         this.var_2020 = param9;
         this.var_2023 = param10;
         this.var_2021 = param11;
         this.var_2022 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1669;
      }
      
      public function get canvasId() : String
      {
         return this.var_1876;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2117;
      }
      
      public function get screenX() : Number
      {
         return this.var_2115;
      }
      
      public function get screenY() : Number
      {
         return this.var_2116;
      }
      
      public function get localX() : Number
      {
         return this.var_2118;
      }
      
      public function get localY() : Number
      {
         return this.var_2114;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2020;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2023;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2021;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2022;
      }
   }
}
