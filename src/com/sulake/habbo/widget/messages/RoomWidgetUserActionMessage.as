package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_644:String = "RWUAM_WHISPER_USER";
      
      public static const const_650:String = "RWUAM_IGNORE_USER";
      
      public static const const_693:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_446:String = "RWUAM_KICK_USER";
      
      public static const const_647:String = "RWUAM_BAN_USER";
      
      public static const const_749:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_708:String = "RWUAM_RESPECT_USER";
      
      public static const const_868:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_654:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_660:String = "RWUAM_START_TRADING";
      
      public static const const_796:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_461:String = "RWUAM_KICK_BOT";
      
      public static const const_655:String = "RWUAM_REPORT";
      
      public static const const_506:String = "RWUAM_PICKUP_PET";
      
      public static const const_1652:String = "RWUAM_TRAIN_PET";
      
      public static const const_497:String = " RWUAM_RESPECT_PET";
      
      public static const const_403:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_839:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
