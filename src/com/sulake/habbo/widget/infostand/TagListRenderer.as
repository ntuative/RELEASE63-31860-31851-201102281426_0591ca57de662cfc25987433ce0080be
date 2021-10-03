package com.sulake.habbo.widget.infostand
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.ICoreWindowManager;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import flash.geom.Rectangle;
   
   public class TagListRenderer
   {
       
      
      private const const_1954:int = 5;
      
      private const const_1955:int = 5;
      
      private var _widget:InfostandWidget;
      
      private var var_154:Function;
      
      private var _offsetX:int;
      
      private var var_1038:int;
      
      private var var_1039:Rectangle = null;
      
      private var var_2766:int = 0;
      
      private var var_1435:Array;
      
      public function TagListRenderer(param1:InfostandWidget, param2:Function)
      {
         super();
         this._widget = param1;
         this.var_154 = param2;
      }
      
      public function dispose() : void
      {
         this._widget = null;
         this.var_154 = null;
      }
      
      public function renderTags(param1:Array, param2:IWindowContainer, param3:Array) : int
      {
         var _loc4_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         this.var_1435 = param3;
         if(this.var_1435 != null)
         {
            _loc8_ = [];
            while((_loc9_ = param1.pop()) != null)
            {
               if(param3.indexOf(_loc9_) != -1)
               {
                  _loc8_.unshift(_loc9_);
               }
               else
               {
                  _loc8_.push(_loc9_);
               }
            }
            param1 = _loc8_;
         }
         while(param2.removeChildAt(0) != null)
         {
         }
         this.var_2766 = 0;
         this._offsetX = 0;
         this.var_1038 = 0;
         this.var_1039 = param2.rectangle.clone();
         this.var_1039.height = 150;
         var _loc5_:int = 0;
         while(_loc5_ < param1.length)
         {
            _loc4_ = this.createTag(param1[_loc5_] as String);
            if(this.method_4(_loc4_.rectangle))
            {
               param2.addChild(_loc4_);
            }
            else
            {
               _loc4_.dispose();
            }
            _loc5_++;
         }
         var _loc6_:int = param2.numChildren;
         if(_loc6_ == 0)
         {
            return 0;
         }
         var _loc7_:IWindow = param2.getChildAt(param2.numChildren - 1);
         return _loc7_.rectangle.bottom;
      }
      
      private function method_4(param1:Rectangle) : Boolean
      {
         if(param1.width > this.var_1039.width)
         {
            return false;
         }
         if(this.var_1038 + param1.height > this.var_1039.height)
         {
            return false;
         }
         if(this._offsetX + param1.width > this.var_1039.width)
         {
            this._offsetX = 0;
            this.var_1038 += param1.height + this.const_1955;
            return this.method_4(param1);
         }
         param1.offset(this._offsetX,this.var_1038);
         this._offsetX += param1.width + this.const_1954;
         return true;
      }
      
      private function createTag(param1:String) : ITextWindow
      {
         var _loc2_:* = null;
         if(this.var_1435 != null && this.var_1435.indexOf(param1) != -1)
         {
            _loc2_ = this._widget.assets.getAssetByName("user_tag_highlighted") as XmlAsset;
         }
         else
         {
            _loc2_ = this._widget.assets.getAssetByName("user_tag") as XmlAsset;
         }
         if(_loc2_ == null)
         {
            return null;
         }
         var _loc3_:ITextWindow = (this._widget.windowManager as ICoreWindowManager).buildFromXML(_loc2_.content as XML) as ITextWindow;
         if(_loc3_ == null)
         {
            throw new Error("Failed to construct window from XML!");
         }
         _loc3_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.var_154);
         _loc3_.caption = param1;
         return _loc3_;
      }
   }
}
