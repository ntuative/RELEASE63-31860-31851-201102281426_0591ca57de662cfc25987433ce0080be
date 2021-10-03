package com.sulake.core.window.components
{
   import com.sulake.core.window.IWindow;
   import flash.display.BitmapData;
   
   public interface IBitmapWrapperWindow extends IWindow
   {
       
      
      function set bitmap(param1:BitmapData) : void;
      
      function get bitmap() : BitmapData;
      
      function get bitmapAssetName() : String;
      
      function set bitmapAssetName(param1:String) : void;
      
      function set method_1(param1:Boolean) : void;
      
      function get method_1() : Boolean;
   }
}
