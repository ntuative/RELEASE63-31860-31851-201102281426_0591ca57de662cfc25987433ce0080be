package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_28:String = "AssetLoaderEventComplete";
      
      public static const const_1166:String = "AssetLoaderEventProgress";
      
      public static const const_1163:String = "AssetLoaderEventUnload";
      
      public static const const_1137:String = "AssetLoaderEventStatus";
      
      public static const const_46:String = "AssetLoaderEventError";
      
      public static const const_1203:String = "AssetLoaderEventOpen";
       
      
      private var var_378:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         this.var_378 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return this.var_378;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,this.var_378);
      }
   }
}
