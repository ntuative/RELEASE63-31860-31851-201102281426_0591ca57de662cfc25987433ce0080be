package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2779:uint;
      
      private var var_138:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var _windowContext:IWindowContext;
      
      private var var_1088:IMouseDraggingService;
      
      private var var_1090:IMouseScalingService;
      
      private var var_1089:IMouseListenerService;
      
      private var var_1087:IFocusManagerService;
      
      private var var_1086:IToolTipAgentService;
      
      private var var_1091:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2779 = 0;
         this.var_138 = param2;
         this._windowContext = param1;
         this.var_1088 = new WindowMouseDragger(param2);
         this.var_1090 = new WindowMouseScaler(param2);
         this.var_1089 = new WindowMouseListener(param2);
         this.var_1087 = new FocusManager(param2);
         this.var_1086 = new WindowToolTipAgent(param2);
         this.var_1091 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1088 != null)
         {
            this.var_1088.dispose();
            this.var_1088 = null;
         }
         if(this.var_1090 != null)
         {
            this.var_1090.dispose();
            this.var_1090 = null;
         }
         if(this.var_1089 != null)
         {
            this.var_1089.dispose();
            this.var_1089 = null;
         }
         if(this.var_1087 != null)
         {
            this.var_1087.dispose();
            this.var_1087 = null;
         }
         if(this.var_1086 != null)
         {
            this.var_1086.dispose();
            this.var_1086 = null;
         }
         if(this.var_1091 != null)
         {
            this.var_1091.dispose();
            this.var_1091 = null;
         }
         this.var_138 = null;
         this._windowContext = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1088;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1090;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1089;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1087;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1086;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1091;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
