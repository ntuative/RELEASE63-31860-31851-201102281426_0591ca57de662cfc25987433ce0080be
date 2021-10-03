package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2823:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         var_135 = param1.desktop;
         var_82 = param1.var_1219 as WindowController;
         _lastClickTarget = param1.var_1221 as WindowController;
         var_149 = param1.renderer;
         var_799 = param1.var_1220;
         param2.begin();
         param2.end();
         param1.desktop = var_135;
         param1.var_1219 = var_82;
         param1.var_1221 = _lastClickTarget;
         param1.renderer = var_149;
         param1.var_1220 = var_799;
      }
   }
}
