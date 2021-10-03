package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class OpenPetPackageMessageComposer implements IMessageComposer
   {
       
      
      private var var_353:int;
      
      private var var_2273:String;
      
      public function OpenPetPackageMessageComposer(param1:int, param2:String)
      {
         super();
         this.var_353 = param1;
         this.var_2273 = param2;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_353,this.var_2273];
      }
      
      public function dispose() : void
      {
      }
   }
}
