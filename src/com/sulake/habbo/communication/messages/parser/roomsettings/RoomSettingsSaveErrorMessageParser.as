package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1741:int = 1;
      
      public static const const_1866:int = 2;
      
      public static const const_1756:int = 3;
      
      public static const const_1918:int = 4;
      
      public static const const_1641:int = 5;
      
      public static const const_1910:int = 6;
      
      public static const const_1481:int = 7;
      
      public static const const_1562:int = 8;
      
      public static const const_1863:int = 9;
      
      public static const const_1653:int = 10;
      
      public static const const_1414:int = 11;
      
      public static const const_1615:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1521:int;
      
      private var var_1390:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1521 = param1.readInteger();
         this.var_1390 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1521;
      }
      
      public function get info() : String
      {
         return this.var_1390;
      }
   }
}
