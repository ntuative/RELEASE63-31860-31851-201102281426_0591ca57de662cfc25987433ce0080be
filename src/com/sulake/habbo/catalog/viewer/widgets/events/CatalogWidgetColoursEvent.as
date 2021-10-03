package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_957:Array;
      
      private var var_2018:String;
      
      private var var_2019:String;
      
      private var var_2017:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         this.var_957 = param1;
         this.var_2018 = param2;
         this.var_2019 = param3;
         this.var_2017 = param4;
      }
      
      public function get colours() : Array
      {
         return this.var_957;
      }
      
      public function get backgroundAssetName() : String
      {
         return this.var_2018;
      }
      
      public function get colourAssetName() : String
      {
         return this.var_2019;
      }
      
      public function get chosenColourAssetName() : String
      {
         return this.var_2017;
      }
   }
}
