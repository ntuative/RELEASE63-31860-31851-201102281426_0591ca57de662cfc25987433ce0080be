package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1712:int;
      
      private var var_2696:String;
      
      private var var_376:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1712 = param1.readInteger();
         this.var_2696 = param1.readString();
         this.var_376 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1712;
      }
      
      public function get nodeName() : String
      {
         return this.var_2696;
      }
      
      public function get visible() : Boolean
      {
         return this.var_376;
      }
   }
}
