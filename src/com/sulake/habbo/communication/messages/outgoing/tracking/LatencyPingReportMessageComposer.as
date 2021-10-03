package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2495:int;
      
      private var var_2496:int;
      
      private var var_2497:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2495 = param1;
         this.var_2496 = param2;
         this.var_2497 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2495,this.var_2496,this.var_2497];
      }
      
      public function dispose() : void
      {
      }
   }
}
