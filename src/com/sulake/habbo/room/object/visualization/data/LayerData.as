package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_800:String = "";
      
      public static const const_518:int = 0;
      
      public static const const_522:int = 255;
      
      public static const const_835:Boolean = false;
      
      public static const const_467:int = 0;
      
      public static const const_565:int = 0;
      
      public static const const_435:int = 0;
      
      public static const const_993:int = 1;
      
      public static const const_1177:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2005:String = "";
      
      private var var_1608:int = 0;
      
      private var var_2007:int = 255;
      
      private var var_2136:Boolean = false;
      
      private var var_2135:int = 0;
      
      private var var_2134:int = 0;
      
      private var var_2137:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2005 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2005;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1608 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1608;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2007 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2007;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2136 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2136;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2135 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2135;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2134 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2134;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2137 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2137;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
