package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2215:int;
      
      private var var_1741:String;
      
      private var var_2428:String;
      
      private var var_2652:Boolean;
      
      private var var_2653:Boolean;
      
      private var var_2650:int;
      
      private var var_2427:String;
      
      private var var_2651:String;
      
      private var var_1740:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2215 = param1.readInteger();
         this.var_1741 = param1.readString();
         this.var_2428 = param1.readString();
         this.var_2652 = param1.readBoolean();
         this.var_2653 = param1.readBoolean();
         param1.readString();
         this.var_2650 = param1.readInteger();
         this.var_2427 = param1.readString();
         this.var_2651 = param1.readString();
         this.var_1740 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2215;
      }
      
      public function get avatarName() : String
      {
         return this.var_1741;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2428;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2652;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2653;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2650;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2427;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2651;
      }
      
      public function get realName() : String
      {
         return this.var_1740;
      }
   }
}
