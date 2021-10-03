package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1618:String = "WN_CRETAE";
      
      public static const const_1363:String = "WN_CREATED";
      
      public static const const_1053:String = "WN_DESTROY";
      
      public static const const_1119:String = "WN_DESTROYED";
      
      public static const const_1151:String = "WN_OPEN";
      
      public static const const_1057:String = "WN_OPENED";
      
      public static const const_1156:String = "WN_CLOSE";
      
      public static const const_1071:String = "WN_CLOSED";
      
      public static const const_1160:String = "WN_FOCUS";
      
      public static const const_1054:String = "WN_FOCUSED";
      
      public static const const_1089:String = "WN_UNFOCUS";
      
      public static const const_1152:String = "WN_UNFOCUSED";
      
      public static const const_1015:String = "WN_ACTIVATE";
      
      public static const const_359:String = "WN_ACTVATED";
      
      public static const const_1050:String = "WN_DEACTIVATE";
      
      public static const const_1076:String = "WN_DEACTIVATED";
      
      public static const const_555:String = "WN_SELECT";
      
      public static const const_398:String = "WN_SELECTED";
      
      public static const const_893:String = "WN_UNSELECT";
      
      public static const const_679:String = "WN_UNSELECTED";
      
      public static const const_1080:String = "WN_LOCK";
      
      public static const const_1116:String = "WN_LOCKED";
      
      public static const const_1056:String = "WN_UNLOCK";
      
      public static const const_1097:String = "WN_UNLOCKED";
      
      public static const const_1094:String = "WN_ENABLE";
      
      public static const const_687:String = "WN_ENABLED";
      
      public static const const_1171:String = "WN_DISABLE";
      
      public static const const_875:String = "WN_DISABLED";
      
      public static const const_684:String = "WN_RESIZE";
      
      public static const const_191:String = "WN_RESIZED";
      
      public static const const_1118:String = "WN_RELOCATE";
      
      public static const const_577:String = "WN_RELOCATED";
      
      public static const const_1032:String = "WN_MINIMIZE";
      
      public static const const_1005:String = "WN_MINIMIZED";
      
      public static const const_1091:String = "WN_MAXIMIZE";
      
      public static const const_1037:String = "WN_MAXIMIZED";
      
      public static const const_1070:String = "WN_RESTORE";
      
      public static const const_1020:String = "WN_RESTORED";
      
      public static const const_1818:String = "WN_ARRANGE";
      
      public static const const_1769:String = "WN_ARRANGED";
      
      public static const const_1807:String = "WN_UPDATE";
      
      public static const const_1889:String = "WN_UPDATED";
      
      public static const const_387:String = "WN_CHILD_ADDED";
      
      public static const const_790:String = "WN_CHILD_REMOVED";
      
      public static const const_297:String = "WN_CHILD_RESIZED";
      
      public static const const_292:String = "WN_CHILD_RELOCATED";
      
      public static const const_230:String = "WN_CHILD_ACTIVATED";
      
      public static const const_501:String = "WN_PARENT_ADDED";
      
      public static const const_1173:String = "WN_PARENT_REMOVED";
      
      public static const const_489:String = "WN_PARENT_RESIZED";
      
      public static const const_1153:String = "WN_PARENT_RELOCATED";
      
      public static const const_826:String = "WN_PARENT_ACTIVATED";
      
      public static const const_512:String = "WN_STATE_UPDATED";
      
      public static const const_483:String = "WN_STYLE_UPDATED";
      
      public static const const_464:String = "WN_PARAM_UPDATED";
      
      public static const const_1862:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1983,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
