package com.sulake.habbo.communication.messages.parser.inventory.avatareffect
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvatarEffectExpiredMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      public function AvatarEffectExpiredMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this._type = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
