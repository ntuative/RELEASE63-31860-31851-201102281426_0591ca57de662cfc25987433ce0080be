package com.sulake.room.renderer.utils
{
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   
   public class SortableSprite
   {
      
      public static const const_1600:Number = 100000000;
       
      
      private var _x:int = 0;
      
      private var var_142:int = 0;
      
      private var var_141:Number = 0.0;
      
      private var _name:String = "";
      
      private var var_1928:IRoomObjectSprite = null;
      
      public function SortableSprite()
      {
         super();
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function set x(param1:int) : void
      {
         this._x = param1;
      }
      
      public function get y() : int
      {
         return this.var_142;
      }
      
      public function set y(param1:int) : void
      {
         this.var_142 = param1;
      }
      
      public function get z() : Number
      {
         return this.var_141;
      }
      
      public function set z(param1:Number) : void
      {
         this.var_141 = param1;
      }
      
      public function get sprite() : IRoomObjectSprite
      {
         return this.var_1928;
      }
      
      public function set sprite(param1:IRoomObjectSprite) : void
      {
         this.var_1928 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function dispose() : void
      {
         this.var_1928 = null;
         this.var_141 = -const_1600;
      }
   }
}
