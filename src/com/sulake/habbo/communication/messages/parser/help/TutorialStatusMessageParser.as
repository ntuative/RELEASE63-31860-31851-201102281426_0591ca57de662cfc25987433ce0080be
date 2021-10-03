package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1186:Boolean;
      
      private var var_1185:Boolean;
      
      private var var_1449:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1186;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1185;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1449;
      }
      
      public function flush() : Boolean
      {
         this.var_1186 = false;
         this.var_1185 = false;
         this.var_1449 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1186 = param1.readBoolean();
         this.var_1185 = param1.readBoolean();
         this.var_1449 = param1.readBoolean();
         return true;
      }
   }
}
