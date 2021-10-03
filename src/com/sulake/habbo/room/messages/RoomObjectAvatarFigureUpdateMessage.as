package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_541:String;
      
      private var var_2077:String;
      
      private var var_820:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_541 = param1;
         this.var_820 = param2;
         this.var_2077 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_541;
      }
      
      public function get race() : String
      {
         return this.var_2077;
      }
      
      public function get gender() : String
      {
         return this.var_820;
      }
   }
}
