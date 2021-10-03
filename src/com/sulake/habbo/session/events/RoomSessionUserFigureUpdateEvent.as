package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionUserFigureUpdateEvent extends RoomSessionEvent
   {
      
      public static const const_158:String = "RSUBE_FIGURE";
       
      
      private var _userId:int = 0;
      
      private var var_541:String = "";
      
      private var var_820:String = "";
      
      private var var_1769:String = "";
      
      private var var_2199:int;
      
      public function RoomSessionUserFigureUpdateEvent(param1:IRoomSession, param2:int, param3:String, param4:String, param5:String, param6:int, param7:Boolean = false, param8:Boolean = false)
      {
         super(const_158,param1,param7,param8);
         this._userId = param2;
         this.var_541 = param3;
         this.var_820 = param4;
         this.var_1769 = param5;
         this.var_2199 = param6;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get figure() : String
      {
         return this.var_541;
      }
      
      public function get gender() : String
      {
         return this.var_820;
      }
      
      public function get customInfo() : String
      {
         return this.var_1769;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2199;
      }
   }
}
