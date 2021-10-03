package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_633:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_638:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_633);
         this.var_638 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_638;
      }
   }
}
