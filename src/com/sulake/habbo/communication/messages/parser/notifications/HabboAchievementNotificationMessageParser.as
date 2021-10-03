package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1467:int;
      
      private var var_1760:int;
      
      private var var_2476:int;
      
      private var var_1923:int;
      
      private var var_1468:int;
      
      private var var_2053:String = "";
      
      private var var_2670:String = "";
      
      private var var_2671:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1467 = param1.readInteger();
         this.var_2053 = param1.readString();
         this.var_1760 = param1.readInteger();
         this.var_2476 = param1.readInteger();
         this.var_1923 = param1.readInteger();
         this.var_1468 = param1.readInteger();
         this.var_2671 = param1.readInteger();
         this.var_2670 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1467;
      }
      
      public function get points() : int
      {
         return this.var_1760;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2476;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1923;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1468;
      }
      
      public function get badgeID() : String
      {
         return this.var_2053;
      }
      
      public function get achievementID() : int
      {
         return this.var_2671;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2670;
      }
   }
}
