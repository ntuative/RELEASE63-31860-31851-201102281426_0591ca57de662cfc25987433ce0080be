package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_778:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_734)
         {
            _structure = null;
            _assets = null;
            var_264 = null;
            var_271 = null;
            var_541 = null;
            var_532 = null;
            var_315 = null;
            if(!var_1241 && var_44)
            {
               var_44.dispose();
            }
            var_44 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_731 = null;
            var_734 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_778[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_778[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_355:
               switch(_loc3_)
               {
                  case AvatarAction.const_831:
                  case AvatarAction.const_524:
                  case AvatarAction.const_379:
                  case AvatarAction.const_758:
                  case AvatarAction.const_393:
                  case AvatarAction.const_671:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_312:
            case AvatarAction.const_780:
            case AvatarAction.const_229:
            case AvatarAction.const_651:
            case AvatarAction.const_704:
            case AvatarAction.const_793:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
