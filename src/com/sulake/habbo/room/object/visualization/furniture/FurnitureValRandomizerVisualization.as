package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_933:int = 20;
      
      private static const const_607:int = 10;
      
      private static const const_1302:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
      
      private static const ANIMATION_ID_OFF:int = 30;
       
      
      private var var_310:Array;
      
      private var var_655:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_310 = new Array();
         super();
         super.setAnimation(ANIMATION_ID_OFF);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
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
         if(param1 > 0 && param1 <= const_607)
         {
            if(this.var_655)
            {
               this.var_655 = false;
               this.var_310 = new Array();
               if(_direction == 2)
               {
                  this.var_310.push(const_933 + 5 - param1);
                  this.var_310.push(const_607 + 5 - param1);
               }
               else
               {
                  this.var_310.push(const_933 + param1);
                  this.var_310.push(const_607 + param1);
               }
               this.var_310.push(ANIMATION_ID_OFF);
               return;
            }
            super.setAnimation(ANIMATION_ID_OFF);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(11))
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
