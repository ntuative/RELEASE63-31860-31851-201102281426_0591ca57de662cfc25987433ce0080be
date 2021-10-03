package com.sulake.habbo.room.object.visualization.room.rasterizer.basic
{
   import flash.display.BitmapData;
   
   public class PlaneTextureBitmap
   {
      
      public static const const_55:Number = -1;
      
      public static const MAX_NORMAL_COORDINATE_VALUE:Number = 1;
       
      
      private var _bitmap:BitmapData = null;
      
      private var var_2253:Number = -1.0;
      
      private var _normalMaxX:Number = 1.0;
      
      private var var_2254:Number = -1.0;
      
      private var var_2252:Number = 1.0;
      
      public function PlaneTextureBitmap(param1:BitmapData, param2:Number = -1.0, param3:Number = 1.0, param4:Number = -1.0, param5:Number = 1.0)
      {
         super();
         this.var_2253 = param2;
         this._normalMaxX = param3;
         this.var_2254 = param4;
         this.var_2252 = param5;
         this._bitmap = param1;
      }
      
      public function get bitmap() : BitmapData
      {
         return this._bitmap;
      }
      
      public function get normalMinX() : Number
      {
         return this.var_2253;
      }
      
      public function get normalMaxX() : Number
      {
         return this._normalMaxX;
      }
      
      public function get normalMinY() : Number
      {
         return this.var_2254;
      }
      
      public function get normalMaxY() : Number
      {
         return this.var_2252;
      }
      
      public function dispose() : void
      {
         this._bitmap = null;
      }
   }
}
