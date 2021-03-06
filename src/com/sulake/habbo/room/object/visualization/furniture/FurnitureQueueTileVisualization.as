package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const ANIMATION_ID_ROLL:int = 3;
      
      private static const const_1301:int = 2;
      
      private static const const_1300:int = 1;
      
      private static const ANIMATION_DURATION:int = 15;
       
      
      private var var_310:Array;
      
      private var var_1099:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_310 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1301)
         {
            this.var_310 = new Array();
            this.var_310.push(const_1300);
            this.var_1099 = ANIMATION_DURATION;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(this.var_1099 > 0)
         {
            --this.var_1099;
         }
         if(this.var_1099 == 0)
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
