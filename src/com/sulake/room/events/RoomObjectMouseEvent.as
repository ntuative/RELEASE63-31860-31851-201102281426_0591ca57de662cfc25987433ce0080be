package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_251:String = "ROE_MOUSE_CLICK";
      
      public static const const_1924:String = "ROE_MOUSE_ENTER";
      
      public static const const_458:String = "ROE_MOUSE_MOVE";
      
      public static const const_1938:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1770:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_482:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1669:String = "";
      
      private var var_2023:Boolean;
      
      private var var_2020:Boolean;
      
      private var var_2021:Boolean;
      
      private var var_2022:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1669 = param2;
         this.var_2023 = param5;
         this.var_2020 = param6;
         this.var_2021 = param7;
         this.var_2022 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1669;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2023;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2020;
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
