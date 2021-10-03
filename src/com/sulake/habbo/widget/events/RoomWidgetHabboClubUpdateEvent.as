package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_246:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2379:int = 0;
      
      private var var_2380:int = 0;
      
      private var var_2378:int = 0;
      
      private var var_2381:Boolean = false;
      
      private var var_2310:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_246,param6,param7);
         this.var_2379 = param1;
         this.var_2380 = param2;
         this.var_2378 = param3;
         this.var_2381 = param4;
         this.var_2310 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2379;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2380;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2378;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2381;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2310;
      }
   }
}
