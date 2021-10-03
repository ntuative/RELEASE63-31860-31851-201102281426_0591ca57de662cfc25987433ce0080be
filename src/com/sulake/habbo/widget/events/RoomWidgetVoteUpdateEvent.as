package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_127:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_140:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1136:String;
      
      private var var_1376:Array;
      
      private var var_1053:Array;
      
      private var var_1742:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1136 = param2;
         this.var_1376 = param3;
         this.var_1053 = param4;
         if(this.var_1053 == null)
         {
            this.var_1053 = [];
         }
         this.var_1742 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1136;
      }
      
      public function get choices() : Array
      {
         return this.var_1376.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1053.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1742;
      }
   }
}
