package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1399:String = "WE_CREATE";
      
      public static const const_1627:String = "WE_CREATED";
      
      public static const const_1604:String = "WE_DESTROY";
      
      public static const const_279:String = "WE_DESTROYED";
      
      public static const const_1524:String = "WE_OPEN";
      
      public static const const_1552:String = "WE_OPENED";
      
      public static const const_1505:String = "WE_CLOSE";
      
      public static const const_1448:String = "WE_CLOSED";
      
      public static const const_1500:String = "WE_FOCUS";
      
      public static const const_314:String = "WE_FOCUSED";
      
      public static const const_1534:String = "WE_UNFOCUS";
      
      public static const const_1398:String = "WE_UNFOCUSED";
      
      public static const const_1527:String = "WE_ACTIVATE";
      
      public static const const_1565:String = "WE_ACTIVATED";
      
      public static const const_1609:String = "WE_DEACTIVATE";
      
      public static const const_785:String = "WE_DEACTIVATED";
      
      public static const const_572:String = "WE_SELECT";
      
      public static const const_57:String = "WE_SELECTED";
      
      public static const const_699:String = "WE_UNSELECT";
      
      public static const const_626:String = "WE_UNSELECTED";
      
      public static const const_1846:String = "WE_ATTACH";
      
      public static const const_1746:String = "WE_ATTACHED";
      
      public static const const_1840:String = "WE_DETACH";
      
      public static const const_1942:String = "WE_DETACHED";
      
      public static const const_1529:String = "WE_LOCK";
      
      public static const const_1498:String = "WE_LOCKED";
      
      public static const const_1640:String = "WE_UNLOCK";
      
      public static const const_1426:String = "WE_UNLOCKED";
      
      public static const const_613:String = "WE_ENABLE";
      
      public static const const_288:String = "WE_ENABLED";
      
      public static const const_700:String = "WE_DISABLE";
      
      public static const const_219:String = "WE_DISABLED";
      
      public static const const_1517:String = "WE_RELOCATE";
      
      public static const const_338:String = "WE_RELOCATED";
      
      public static const const_1385:String = "WE_RESIZE";
      
      public static const const_48:String = "WE_RESIZED";
      
      public static const const_1628:String = "WE_MINIMIZE";
      
      public static const const_1508:String = "WE_MINIMIZED";
      
      public static const const_1439:String = "WE_MAXIMIZE";
      
      public static const const_1496:String = "WE_MAXIMIZED";
      
      public static const const_1637:String = "WE_RESTORE";
      
      public static const const_1447:String = "WE_RESTORED";
      
      public static const const_1859:String = "WE_ARRANGE";
      
      public static const const_1830:String = "WE_ARRANGED";
      
      public static const const_105:String = "WE_UPDATE";
      
      public static const const_1825:String = "WE_UPDATED";
      
      public static const const_1902:String = "WE_CHILD_RELOCATE";
      
      public static const const_580:String = "WE_CHILD_RELOCATED";
      
      public static const const_1826:String = "WE_CHILD_RESIZE";
      
      public static const const_285:String = "WE_CHILD_RESIZED";
      
      public static const const_1722:String = "WE_CHILD_REMOVE";
      
      public static const const_429:String = "WE_CHILD_REMOVED";
      
      public static const const_1745:String = "WE_PARENT_RELOCATE";
      
      public static const const_1791:String = "WE_PARENT_RELOCATED";
      
      public static const const_1903:String = "WE_PARENT_RESIZE";
      
      public static const const_1433:String = "WE_PARENT_RESIZED";
      
      public static const const_185:String = "WE_OK";
      
      public static const const_854:String = "WE_CANCEL";
      
      public static const const_101:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_569:String = "WE_SCROLL";
      
      public static const const_159:String = "";
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_1983:IWindow;
      
      protected var var_1984:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_1983 = param3;
         this.var_1984 = false;
         super(param1,param4,param5);
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_1983;
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(this._type,this.window,this.related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            this.var_1984 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1984;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
   }
}
