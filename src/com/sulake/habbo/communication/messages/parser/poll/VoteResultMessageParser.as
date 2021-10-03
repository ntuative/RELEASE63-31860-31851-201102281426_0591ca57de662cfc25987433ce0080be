package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1136:String;
      
      private var var_1376:Array;
      
      private var var_1053:Array;
      
      private var var_1742:int;
      
      public function VoteResultMessageParser()
      {
         super();
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
      
      public function flush() : Boolean
      {
         this.var_1136 = "";
         this.var_1376 = [];
         this.var_1053 = [];
         this.var_1742 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1136 = param1.readString();
         this.var_1376 = [];
         this.var_1053 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1376.push(param1.readString());
            this.var_1053.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1742 = param1.readInteger();
         return true;
      }
   }
}
