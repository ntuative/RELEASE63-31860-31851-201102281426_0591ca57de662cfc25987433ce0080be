package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_782:int = 1;
      
      public static const const_740:int = 2;
      
      public static const const_675:int = 3;
      
      public static const const_1147:int = 4;
      
      public static const const_640:int = 5;
      
      public static const const_1135:int = 6;
       
      
      private var _type:int;
      
      private var var_1006:int;
      
      private var var_2257:String;
      
      private var var_2258:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1006 = param2;
         this.var_2257 = param3;
         this.var_2258 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2257;
      }
      
      public function get time() : String
      {
         return this.var_2258;
      }
      
      public function get senderId() : int
      {
         return this.var_1006;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
