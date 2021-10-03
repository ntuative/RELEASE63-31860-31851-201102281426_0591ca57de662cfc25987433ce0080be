package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_666:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_990:String = "inventory_effects";
      
      public static const const_1154:String = "inventory_badges";
      
      public static const const_1648:String = "inventory_clothes";
      
      public static const const_1612:String = "inventory_furniture";
       
      
      private var var_1999:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_666);
         this.var_1999 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_1999;
      }
   }
}
