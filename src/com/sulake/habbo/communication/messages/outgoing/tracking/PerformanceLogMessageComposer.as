package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2325:int = 0;
      
      private var var_1476:String = "";
      
      private var var_1933:String = "";
      
      private var var_2324:String = "";
      
      private var var_2323:String = "";
      
      private var var_1655:int = 0;
      
      private var var_2328:int = 0;
      
      private var var_2327:int = 0;
      
      private var var_1479:int = 0;
      
      private var var_2326:int = 0;
      
      private var var_1478:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2325 = param1;
         this.var_1476 = param2;
         this.var_1933 = param3;
         this.var_2324 = param4;
         this.var_2323 = param5;
         if(param6)
         {
            this.var_1655 = 1;
         }
         else
         {
            this.var_1655 = 0;
         }
         this.var_2328 = param7;
         this.var_2327 = param8;
         this.var_1479 = param9;
         this.var_2326 = param10;
         this.var_1478 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2325,this.var_1476,this.var_1933,this.var_2324,this.var_2323,this.var_1655,this.var_2328,this.var_2327,this.var_1479,this.var_2326,this.var_1478];
      }
   }
}
