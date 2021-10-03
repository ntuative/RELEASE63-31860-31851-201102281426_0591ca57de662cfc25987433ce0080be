package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1242:IHabboTracking;
      
      private var var_1514:Boolean = false;
      
      private var var_2272:int = 0;
      
      private var var_1632:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1242 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1242 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1514 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2272 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1514)
         {
            return;
         }
         ++this.var_1632;
         if(this.var_1632 <= this.var_2272)
         {
            this.var_1242.track("toolbar",param1);
         }
      }
   }
}
