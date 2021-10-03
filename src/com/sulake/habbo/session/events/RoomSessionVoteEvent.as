package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_127:String = "RSPE_VOTE_QUESTION";
      
      public static const const_140:String = "RSPE_VOTE_RESULT";
       
      
      private var var_1136:String = "";
      
      private var var_1376:Array;
      
      private var var_1053:Array;
      
      private var var_1742:int = 0;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         this.var_1376 = [];
         this.var_1053 = [];
         super(param1,param2,param7,param8);
         this.var_1136 = param3;
         this.var_1376 = param4;
         this.var_1053 = param5;
         if(this.var_1053 == null)
         {
            this.var_1053 = [];
         }
         this.var_1742 = param6;
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
