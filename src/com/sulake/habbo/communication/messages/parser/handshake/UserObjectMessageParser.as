package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_541:String;
      
      private var var_923:String;
      
      private var var_2157:String;
      
      private var var_1740:String;
      
      private var var_2160:int;
      
      private var var_2159:String;
      
      private var var_2158:int;
      
      private var var_2162:int;
      
      private var var_2161:int;
      
      private var _respectLeft:int;
      
      private var var_710:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_541 = param1.readString();
         this.var_923 = param1.readString();
         this.var_2157 = param1.readString();
         this.var_1740 = param1.readString();
         this.var_2160 = param1.readInteger();
         this.var_2159 = param1.readString();
         this.var_2158 = param1.readInteger();
         this.var_2162 = param1.readInteger();
         this.var_2161 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_710 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_541;
      }
      
      public function get sex() : String
      {
         return this.var_923;
      }
      
      public function get customData() : String
      {
         return this.var_2157;
      }
      
      public function get realName() : String
      {
         return this.var_1740;
      }
      
      public function get tickets() : int
      {
         return this.var_2160;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2159;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2158;
      }
      
      public function get directMail() : int
      {
         return this.var_2162;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2161;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_710;
      }
   }
}
