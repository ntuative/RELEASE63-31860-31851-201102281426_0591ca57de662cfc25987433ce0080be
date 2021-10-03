package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_919:int = 3;
       
      
      private var var_2287:int = -1;
      
      private var var_2294:int = -2;
      
      private var var_336:Vector3d = null;
      
      private var var_400:Vector3d = null;
      
      private var var_2289:Boolean = false;
      
      private var var_2290:Boolean = false;
      
      private var var_2293:Boolean = false;
      
      private var var_2291:Boolean = false;
      
      private var var_2286:int = 0;
      
      private var var_2288:int = 0;
      
      private var var_2285:int = 0;
      
      private var var_2292:int = 0;
      
      private var var_1319:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_400;
      }
      
      public function get targetId() : int
      {
         return this.var_2287;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2294;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2289;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2290;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2293;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2291;
      }
      
      public function get screenWd() : int
      {
         return this.var_2286;
      }
      
      public function get screenHt() : int
      {
         return this.var_2288;
      }
      
      public function get roomWd() : int
      {
         return this.var_2285;
      }
      
      public function get roomHt() : int
      {
         return this.var_2292;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2287 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2294 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2289 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2290 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2293 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2291 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2286 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2288 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2285 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2292 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_336 == null)
         {
            this.var_336 = new Vector3d();
         }
         if(this.var_336.x != param1.x || this.var_336.y != param1.y || this.var_336.z != param1.z)
         {
            this.var_336.assign(param1);
            this.var_1319 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_336 = null;
         this.var_400 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_400 != null)
         {
            return;
         }
         this.var_400 = new Vector3d();
         this.var_400.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_336 != null && this.var_400 != null)
         {
            ++this.var_1319;
            _loc4_ = Vector3d.dif(this.var_336,this.var_400);
            if(_loc4_.length <= param2)
            {
               this.var_400 = this.var_336;
               this.var_336 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_919 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1319 <= const_919)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_400 = Vector3d.sum(this.var_400,_loc4_);
            }
         }
      }
   }
}
