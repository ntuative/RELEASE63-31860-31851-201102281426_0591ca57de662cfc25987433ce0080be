package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2305:Number = 0.0;
      
      private var var_2302:Number = 0.0;
      
      private var var_2303:Number = 0.0;
      
      private var var_2304:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2305 = param1;
         this.var_2302 = param2;
         this.var_2303 = param3;
         this.var_2304 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2305;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2302;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2303;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2304;
      }
   }
}
