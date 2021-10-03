package com.sulake.habbo.communication.messages.outgoing.friendlist
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   
   public class AcceptBuddyMessageComposer implements IMessageComposer, IDisposable
   {
       
      
      private var var_833:Array;
      
      public function AcceptBuddyMessageComposer()
      {
         this.var_833 = new Array();
         super();
      }
      
      public function getMessageArray() : Array
      {
         var _loc1_:Array = new Array();
         _loc1_.push(this.var_833.length);
         var _loc2_:int = 0;
         while(_loc2_ < this.var_833.length)
         {
            _loc1_.push(this.var_833[_loc2_]);
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function addAcceptedRequest(param1:int) : void
      {
         this.var_833.push(param1);
      }
      
      public function dispose() : void
      {
         this.var_833 = null;
      }
      
      public function get disposed() : Boolean
      {
         return false;
      }
   }
}
