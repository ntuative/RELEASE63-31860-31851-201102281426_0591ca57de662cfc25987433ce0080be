package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_933:int = 20;
      
      private static const const_607:int = 9;
      
      private static const ANIMATION_ID_ROLL:int = -1;
       
      
      private var var_310:Array;
      
      private var var_655:Boolean = false;
      
      public function FurnitureBottleVisualization()
      {
         this.var_310 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_655)
            {
               this.var_655 = true;
               this.var_310 = new Array();
               this.var_310.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(this.var_655)
            {
               this.var_655 = false;
               this.var_310 = new Array();
               this.var_310.push(const_933);
               this.var_310.push(const_607 + param1);
               this.var_310.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(0))
         {
            if(this.var_310.length > 0)
            {
               super.setAnimation(this.var_310.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
