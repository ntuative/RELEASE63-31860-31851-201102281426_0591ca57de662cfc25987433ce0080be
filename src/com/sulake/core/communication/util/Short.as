package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_785:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         this.var_785 = new ByteArray();
         this.var_785.writeShort(param1);
         this.var_785.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         this.var_785.position = 0;
         if(this.var_785.bytesAvailable)
         {
            _loc1_ = this.var_785.readShort();
            this.var_785.position = 0;
         }
         return _loc1_;
      }
   }
}
