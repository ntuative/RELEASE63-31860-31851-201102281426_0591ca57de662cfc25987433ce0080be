package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1525:int;
      
      private var var_2010:String;
      
      private var var_820:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1525 = param1.readInteger();
         this.var_2010 = param1.readString();
         this.var_820 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1525;
      }
      
      public function get figureString() : String
      {
         return this.var_2010;
      }
      
      public function get gender() : String
      {
         return this.var_820;
      }
   }
}
