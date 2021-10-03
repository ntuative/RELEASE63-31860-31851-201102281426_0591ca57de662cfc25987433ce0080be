package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PopularTagData
   {
       
      
      private var var_2187:String;
      
      private var var_2186:int;
      
      public function PopularTagData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2187 = param1.readString();
         this.var_2186 = param1.readInteger();
      }
      
      public function get tagName() : String
      {
         return this.var_2187;
      }
      
      public function get userCount() : int
      {
         return this.var_2186;
      }
   }
}
