package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2539:Number;
      
      private var var_1532:Number;
      
      private var var_940:Number;
      
      private var var_941:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2539 = param1;
         this.var_1532 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_940 = param1;
         this.var_941 = 0;
      }
      
      public function update() : void
      {
         this.var_940 += this.var_1532;
         this.var_941 += this.var_940;
         if(this.var_941 > 0)
         {
            this.var_941 = 0;
            this.var_940 = this.var_2539 * -1 * this.var_940;
         }
      }
      
      public function get location() : Number
      {
         return this.var_941;
      }
   }
}
