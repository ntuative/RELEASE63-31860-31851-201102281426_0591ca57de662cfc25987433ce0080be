package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2493:int;
      
      private var var_2640:int;
      
      private var var_2639:String;
      
      private var var_2638:String;
      
      private var var_2641:int = 0;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this.var_2493 = param1;
         this.var_2640 = param2;
         this.var_2639 = param3;
         this.var_2638 = param4;
      }
      
      public function get id() : int
      {
         return this.var_2493;
      }
      
      public function get length() : int
      {
         return this.var_2640;
      }
      
      public function get name() : String
      {
         return this.var_2639;
      }
      
      public function get creator() : String
      {
         return this.var_2638;
      }
      
      public function get startPlayHeadPos() : int
      {
         return this.var_2641;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         this.var_2641 = param1;
      }
   }
}
