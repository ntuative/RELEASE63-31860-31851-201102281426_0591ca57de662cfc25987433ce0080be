package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeDetailsMessage extends RoomWidgetMessage
   {
      
      public static const const_731:String = "RWGOI_MESSAGE_GET_BADGE_DETAILS";
       
      
      private var var_1347:int = 0;
      
      public function RoomWidgetGetBadgeDetailsMessage(param1:int)
      {
         super(const_731);
         this.var_1347 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1347;
      }
   }
}
