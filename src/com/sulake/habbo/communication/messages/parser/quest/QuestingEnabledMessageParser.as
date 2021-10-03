package com.sulake.habbo.communication.messages.parser.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class QuestingEnabledMessageParser implements IMessageParser
   {
       
      
      private var var_1260:Boolean;
      
      private var var_1584:String;
      
      public function QuestingEnabledMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1260 = false;
         this.var_1584 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1260 = param1.readBoolean();
         this.var_1584 = param1.readString();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1260;
      }
      
      public function get defaultCampaignCode() : String
      {
         return this.var_1584;
      }
   }
}
