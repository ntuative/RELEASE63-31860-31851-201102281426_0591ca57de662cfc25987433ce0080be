package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_933:int = 10;
      
      private static const const_607:int = 20;
      
      private static const const_1302:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
       
      
      private var var_310:Array;
      
      private var var_655:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
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
               this.var_310.push(const_1302);
               this.var_310.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_933)
         {
            if(this.var_655)
            {
               this.var_655 = false;
               this.var_310 = new Array();
               this.var_310.push(const_933 + param1);
               this.var_310.push(const_607 + param1);
               this.var_310.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
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
