package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1647:IID;
      
      private var var_734:Boolean;
      
      private var var_1059:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1647 = param1;
         this.var_1059 = new Array();
         this.var_734 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1647;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_734;
      }
      
      public function get receivers() : Array
      {
         return this.var_1059;
      }
      
      public function dispose() : void
      {
         if(!this.var_734)
         {
            this.var_734 = true;
            this.var_1647 = null;
            while(this.var_1059.length > 0)
            {
               this.var_1059.pop();
            }
            this.var_1059 = null;
         }
      }
   }
}
