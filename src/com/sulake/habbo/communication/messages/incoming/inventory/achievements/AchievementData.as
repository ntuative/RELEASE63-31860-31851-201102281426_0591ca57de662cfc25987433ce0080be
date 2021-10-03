package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1467:int;
      
      private var var_311:String;
      
      private var var_2477:int;
      
      private var var_2476:int;
      
      private var var_1923:int;
      
      private var var_2475:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1467 = param1.readInteger();
         this.var_311 = param1.readString();
         this.var_2477 = param1.readInteger();
         this.var_2476 = param1.readInteger();
         this.var_1923 = param1.readInteger();
         this.var_2475 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_311;
      }
      
      public function get level() : int
      {
         return this.var_1467;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2477;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2476;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1923;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2475;
      }
   }
}
