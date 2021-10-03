package com.sulake.habbo.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.actions.ActionDefinition;
   import com.sulake.habbo.avatar.actions.ActiveActionData;
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.actions.IActiveActionData;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.animation.Animation;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.IAvatarDataContainer;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarDirectionAngle;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.avatar.structure.AvatarCanvas;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.display.BitmapData;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getTimer;
   
   public class AvatarImage implements IAvatarImage, IDisposable
   {
      
      private static const CHANNELS_EQUAL:String = "CHANNELS_EQUAL";
      
      private static const CHANNELS_UNIQUE:String = "CHANNELS_UNIQUE";
      
      private static const CHANNELS_RED:String = "CHANNELS_RED";
      
      private static const CHANNELS_GREEN:String = "CHANNELS_GREEN";
      
      private static const CHANNELS_BLUE:String = "CHANNELS_BLUE";
      
      private static const CHANNELS_SATURATED:String = "CHANNELS_SATURATED";
      
      private static const const_1295:String = "Default";
      
      private static const const_1294:int = 2;
      
      private static const const_1296:String = AvatarSetType.const_34;
       
      
      protected var _structure:AvatarStructure;
      
      protected var _scale:String;
      
      protected var var_88:int;
      
      protected var var_1995:int;
      
      protected var var_271:IActiveActionData;
      
      protected var var_734:Boolean;
      
      protected var var_731:Array;
      
      protected var _assets:AssetAliasCollection;
      
      protected var var_264:AvatarImageCache;
      
      protected var var_541:AvatarFigureContainer;
      
      protected var var_532:IAvatarDataContainer;
      
      protected var var_315:Array;
      
      protected var var_44:BitmapData;
      
      private var var_890:IActiveActionData;
      
      private var var_629:int = 0;
      
      private var var_1708:int = 0;
      
      private var var_630:Boolean;
      
      private var var_190:Array;
      
      private var var_838:Boolean;
      
      private var var_1360:Boolean = false;
      
      private var var_261:Array;
      
      private var var_1447:String;
      
      private var var_512:String;
      
      private var var_778:Map;
      
      protected var var_1241:Boolean = false;
      
      private var var_1183:Boolean;
      
      private var var_1448:int = -1;
      
      private var var_2815:int;
      
      private var var_2816:int;
      
      private var var_1891:Array;
      
      private var var_2642:int = -1;
      
      private var var_2643:String = null;
      
      private var var_2644:String = null;
      
      public function AvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         this.var_731 = new Array();
         this.var_315 = [];
         this.var_1891 = [];
         super();
         this.var_630 = true;
         this._structure = param1;
         this._assets = param2;
         this._scale = param4;
         if(this._scale == null)
         {
            this._scale = AvatarScaleType.const_56;
         }
         if(param3 == null)
         {
            param3 = new AvatarFigureContainer("hr-893-45.hd-180-2.ch-210-66.lg-270-82.sh-300-91.wa-2007-.ri-1-");
            Logger.log("Using default avatar figure");
         }
         this.var_541 = param3;
         this.var_264 = new AvatarImageCache(this._structure,this,this._assets,this._scale);
         this.setDirection(const_1296,const_1294);
         this.var_315 = new Array();
         this.var_890 = new ActiveActionData(AvatarAction.const_379);
         this.var_890.definition = this._structure.getActionDefinition(const_1295);
         this.resetActions();
         this.var_778 = new Map();
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(!this.var_734)
         {
            this._structure = null;
            this._assets = null;
            this.var_264 = null;
            this.var_271 = null;
            this.var_541 = null;
            this.var_532 = null;
            this.var_315 = null;
            if(this.var_44)
            {
               this.var_44.dispose();
            }
            _loc1_ = this.getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            if(this.var_778)
            {
               for each(_loc2_ in this.var_778)
               {
                  _loc2_.dispose();
               }
               this.var_778.dispose();
               this.var_778 = null;
            }
            this.var_44 = null;
            this.var_731 = null;
            this.var_734 = true;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_734;
      }
      
      public function getFigure() : IAvatarFigureContainer
      {
         return this.var_541;
      }
      
      public function getScale() : String
      {
         return this._scale;
      }
      
      public function getPartColor(param1:String) : IPartColor
      {
         return this._structure.getPartColor(this.var_541,param1);
      }
      
      public function setDirection(param1:String, param2:int) : void
      {
         param2 += this.var_1708;
         if(param2 < AvatarDirectionAngle.const_1194)
         {
            param2 = AvatarDirectionAngle.const_322 + (param2 + 1);
         }
         if(param2 > AvatarDirectionAngle.const_322)
         {
            param2 -= NaN;
         }
         if(this._structure.isMainAvatarSet(param1))
         {
            this.var_88 = param2;
         }
         if(param1 == AvatarSetType.const_49 || param1 == AvatarSetType.const_34)
         {
            if(param1 == AvatarSetType.const_49 && this.isHeadTurnPreventedByAction())
            {
               param2 = this.var_88;
            }
            this.var_1995 = param2;
         }
         this.getCache().setDirection(param1,param2);
         this.var_630 = true;
      }
      
      public function setDirectionAngle(param1:String, param2:int) : void
      {
         var _loc3_:int = 0;
         _loc3_ = param2 / 45;
         this.setDirection(param1,_loc3_);
      }
      
      public function getSprites() : Array
      {
         return this.var_190;
      }
      
      public function getCanvasOffsets() : Array
      {
         return this.var_731;
      }
      
      public function getLayerData(param1:ISpriteDataContainer) : IAnimationLayerData
      {
         return this._structure.getBodyPartData(param1.animation.id,this.var_629,param1.id);
      }
      
      public function updateAnimationByFrames(param1:int = 1) : void
      {
         this.var_629 += param1;
         this.var_630 = true;
      }
      
      private function getFullImageCacheKey() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         if(!this.var_1183)
         {
            return null;
         }
         if(this.var_261.length == 1 && this.var_88 == this.var_1995)
         {
            return this.var_88 + this.var_512 + this.var_629 % 4;
         }
         if(this.var_261.length == 2)
         {
            for each(_loc1_ in this.var_261)
            {
               if(_loc1_.actionType == "fx" && (_loc1_.actionParameter == "33" || _loc1_.actionParameter == "34" || _loc1_.actionParameter == "35" || _loc1_.actionParameter == "36"))
               {
                  return this.var_88 + this.var_512 + 0;
               }
               if(_loc1_.actionType == "fx" && (_loc1_.actionParameter == "38" || _loc1_.actionParameter == "39"))
               {
                  _loc2_ = this.var_629 % 11;
                  return this.var_88 + "_" + this.var_1995 + this.var_512 + _loc2_;
               }
            }
         }
         return null;
      }
      
      private function getBodyParts(param1:String, param2:String, param3:int) : Array
      {
         if(param3 != this.var_2642 || param2 != this.var_2643 || param1 != this.var_2644)
         {
            this.var_2642 = param3;
            this.var_2643 = param2;
            this.var_2644 = param1;
            this.var_1891 = this._structure.getBodyParts(param1,param2,param3);
         }
         return this.var_1891;
      }
      
      public function getImage(param1:String, param2:Boolean) : BitmapData
      {
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc13_:* = null;
         if(!this.var_630)
         {
            return this.var_44;
         }
         if(this.var_271 == null)
         {
            return null;
         }
         if(!this.var_1360)
         {
            this.endActionAppends();
         }
         var _loc3_:String = this.getFullImageCacheKey();
         if(_loc3_ != null)
         {
            if(this.getFullImage(_loc3_))
            {
               this.var_630 = false;
               if(param2)
               {
                  return (this.getFullImage(_loc3_) as BitmapData).clone();
               }
               this.var_44 = this.getFullImage(_loc3_) as BitmapData;
               this.var_1241 = true;
               return this.var_44;
            }
         }
         var _loc4_:AvatarImageCache = this.getCache();
         var _loc5_:AvatarCanvas = this._structure.getCanvas(this._scale,this.var_271.definition.geometryType);
         if(_loc5_ == null)
         {
            return null;
         }
         if(this.var_1241 || this.var_44 == null || (this.var_44.width != _loc5_.width || this.var_44.height != _loc5_.height))
         {
            if(this.var_44 != null && !this.var_1241)
            {
               this.var_44.dispose();
            }
            this.var_44 = new BitmapData(_loc5_.width,_loc5_.height,true,16777215);
            this.var_1241 = false;
         }
         var _loc6_:Array = this.getBodyParts(param1,this.var_271.definition.geometryType,this.var_88);
         this.var_44.lock();
         this.var_44.fillRect(this.var_44.rect,16777215);
         var _loc7_:Point = _loc5_.offset;
         if(_loc7_ == null)
         {
            _loc7_ = new Point(0,0);
         }
         var _loc12_:int = _loc6_.length - 1;
         while(_loc12_ >= 0)
         {
            _loc8_ = _loc6_[_loc12_];
            _loc9_ = _loc4_.getImageContainer(_loc8_,this.var_629);
            if(_loc9_ && _loc9_.image && _loc9_.regPoint)
            {
               _loc10_ = _loc9_.image;
               _loc11_ = _loc9_.regPoint.clone();
               this.var_44.copyPixels(_loc10_,_loc10_.rect,_loc11_.add(_loc7_),null,null,true);
            }
            _loc12_--;
         }
         this.var_44.unlock();
         this.var_630 = false;
         if(this.var_532 != null)
         {
            if(this.var_532.paletteIsGrayscale)
            {
               _loc13_ = this.convertToGrayscale(this.var_44);
               if(this.var_44)
               {
                  this.var_44.dispose();
               }
               this.var_44 = _loc13_;
               this.var_44.paletteMap(this.var_44,this.var_44.rect,new Point(0,0),this.var_532.reds,[],[]);
            }
            else
            {
               this.var_44.copyChannel(this.var_44,this.var_44.rect,new Point(0,0),2,8);
            }
         }
         if(_loc3_ != null)
         {
            this.cacheFullImage(_loc3_,this.var_44.clone());
         }
         if(this.var_44 && param2)
         {
            return this.var_44.clone();
         }
         return this.var_44;
      }
      
      public function getCroppedImage(param1:String) : BitmapData
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         if(this.var_271 == null)
         {
            return null;
         }
         var _loc2_:AvatarImageCache = this.getCache();
         var _loc3_:AvatarCanvas = this._structure.getCanvas(this._scale,this.var_271.definition.geometryType);
         if(_loc3_ == null)
         {
            return null;
         }
         var _loc4_:BitmapData = new BitmapData(_loc3_.width,_loc3_.height,true,16777215);
         var _loc5_:Array = this._structure.getBodyParts(param1,this.var_271.definition.geometryType,this.var_88);
         var _loc11_:Rectangle = new Rectangle();
         var _loc12_:int = _loc5_.length - 1;
         while(_loc12_ >= 0)
         {
            _loc7_ = _loc5_[_loc12_];
            _loc8_ = _loc2_.getImageContainer(_loc7_,this.var_629);
            if(_loc8_ != null)
            {
               _loc9_ = _loc8_.image;
               if(_loc9_ == null)
               {
                  _loc4_.dispose();
                  return null;
               }
               _loc10_ = _loc8_.regPoint.clone();
               _loc4_.copyPixels(_loc9_,_loc9_.rect,_loc10_,null,null,true);
               _loc11_.x = _loc10_.x;
               _loc11_.y = _loc10_.y;
               _loc11_.width = _loc9_.width;
               _loc11_.height = _loc9_.height;
               if(_loc6_ == null)
               {
                  _loc6_ = _loc11_;
               }
               else
               {
                  _loc6_ = _loc6_.union(_loc11_);
               }
            }
            _loc12_--;
         }
         if(_loc6_ == null)
         {
            _loc6_ = new Rectangle(0,0,1,1);
         }
         var _loc13_:BitmapData = new BitmapData(_loc6_.width,_loc6_.height,true,16777215);
         _loc13_.copyPixels(_loc4_,_loc6_,new Point(0,0),null,null,true);
         _loc4_.dispose();
         return _loc13_;
      }
      
      protected function getFullImage(param1:String) : BitmapData
      {
         return this.var_778[param1];
      }
      
      protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         this.var_778[param1] = param2;
      }
      
      public function getAsset(param1:String) : BitmapDataAsset
      {
         return this._assets.getAssetByName(param1) as BitmapDataAsset;
      }
      
      public function getDirection() : int
      {
         return this.var_88;
      }
      
      public function initActionAppends() : void
      {
         this.var_315 = new Array();
         this.var_1360 = false;
         this.var_512 = "";
         this.var_1183 = false;
      }
      
      public function endActionAppends() : void
      {
         if(this.sortActions())
         {
            this.resetActions();
            this.setActionsToParts();
         }
      }
      
      public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         this.var_1360 = false;
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
                     if(this.var_88 == 0)
                     {
                        this.setDirection(AvatarSetType.const_34,4);
                     }
                     else
                     {
                        this.setDirection(AvatarSetType.const_34,2);
                     }
                  case AvatarAction.const_524:
                     this.var_1183 = true;
                  case AvatarAction.const_379:
                     this.var_1183 = true;
                  case AvatarAction.const_758:
                  case AvatarAction.const_393:
                  case AvatarAction.const_671:
                  case AvatarAction.const_670:
                     this.addActionData(_loc3_);
                     break;
                  default:
                     this.errorThis("appendAction() >> UNKNOWN POSTURE TYPE: " + _loc3_);
               }
               break;
            case AvatarAction.const_273:
               switch(_loc3_)
               {
                  case AvatarAction.const_846:
                  case AvatarAction.const_553:
                  case AvatarAction.const_823:
                     this.addActionData(_loc3_);
                     break;
                  default:
                     this.errorThis("appendAction() >> UNKNOWN GESTURE TYPE: " + _loc3_);
               }
               break;
            case AvatarAction.const_312:
               if(_loc3_ == "33" || _loc3_ == "34" || _loc3_ == "35" || _loc3_ == "36" || _loc3_ == "38" || _loc3_ == "39")
               {
                  this.var_1183 = true;
               }
            case AvatarAction.const_780:
            case AvatarAction.const_286:
            case AvatarAction.const_229:
            case AvatarAction.const_573:
            case AvatarAction.const_651:
               this.addActionData(param1,_loc3_);
               break;
            case AvatarAction.const_704:
            case AvatarAction.const_793:
               _loc4_ = this._structure.getActionDefinitionWithState(param1);
               if(_loc4_ != null)
               {
                  this.logThis("appendAction:" + [_loc3_,"->",_loc4_.getParameterValue(_loc3_)]);
                  _loc3_ = _loc4_.getParameterValue(_loc3_);
               }
               this.addActionData(param1,_loc3_);
               break;
            default:
               this.errorThis("appendAction() >> UNKNOWN ACTION TYPE: " + param1);
         }
         return true;
      }
      
      protected function addActionData(param1:String, param2:String = "") : void
      {
         var _loc3_:* = null;
         if(this.var_315 == null)
         {
            this.var_315 = new Array();
         }
         var _loc4_:int = 0;
         while(_loc4_ < this.var_315.length)
         {
            _loc3_ = this.var_315[_loc4_];
            if(_loc3_.actionType == param1 && _loc3_.actionParameter == param2)
            {
               return;
            }
            _loc4_++;
         }
         this.var_315.push(new ActiveActionData(param1,param2,this.var_629));
      }
      
      public function isAnimating() : Boolean
      {
         return this.var_838;
      }
      
      private function resetActions() : Boolean
      {
         this.var_838 = false;
         this.var_190 = [];
         this.var_532 = null;
         this.var_1708 = 0;
         this._structure.removeDynamicItems();
         this.var_271 = this.var_890;
         this.var_271.definition = this.var_890.definition;
         this.resetBodyPartCache(this.var_890);
         return true;
      }
      
      private function isHeadTurnPreventedByAction() : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc1_:Boolean = false;
         if(this.var_261 == null)
         {
            return false;
         }
         for each(_loc3_ in this.var_261)
         {
            _loc2_ = this._structure.getActionDefinitionWithState(_loc3_.actionType);
            if(_loc2_ != null && _loc2_.getPreventHeadTurn(_loc3_.actionParameter))
            {
               _loc1_ = true;
            }
         }
         return _loc1_;
      }
      
      private function sortActions() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc1_:Boolean = false;
         this.var_512 = "";
         this.var_261 = this._structure.sortActions(this.var_315);
         if(this.var_261 == null)
         {
            this.var_731 = new Array(0,0,0);
            if(this.var_1447 != "")
            {
               _loc1_ = true;
               this.var_1447 = "";
            }
         }
         else
         {
            this.var_731 = this._structure.getCanvasOffsets(this.var_261,this._scale,this.var_88);
            for each(_loc4_ in this.var_261)
            {
               this.var_512 += _loc4_.actionType + _loc4_.actionParameter;
               if(_loc4_.actionType == AvatarAction.const_312)
               {
                  _loc5_ = parseInt(_loc4_.actionParameter);
                  if(this.var_1448 != _loc5_)
                  {
                     _loc2_ = true;
                  }
                  this.var_1448 = _loc5_;
                  _loc3_ = true;
               }
            }
            if(!_loc3_)
            {
               if(this.var_1448 > -1)
               {
                  _loc2_ = true;
               }
               this.var_1448 = -1;
            }
            if(_loc2_)
            {
               _loc6_ = this.getCache();
               if(_loc6_)
               {
                  _loc6_.disposeInactiveActions(0);
               }
            }
            if(this.var_1447 != this.var_512)
            {
               _loc1_ = true;
               this.var_1447 = this.var_512;
            }
         }
         this.var_1360 = true;
         return _loc1_;
      }
      
      private function setActionsToParts() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         if(this.var_261 == null)
         {
            return;
         }
         var _loc3_:int = getTimer();
         var _loc4_:Array = new Array();
         for each(_loc1_ in this.var_261)
         {
            _loc4_.push(_loc1_.actionType);
         }
         for each(_loc1_ in this.var_261)
         {
            if(_loc1_ && _loc1_.definition && _loc1_.definition.isAnimation)
            {
               _loc2_ = this._structure.getAnimation(_loc1_.definition.state + "." + _loc1_.actionParameter);
               if(_loc2_ && _loc2_.hasOverriddenActions())
               {
                  _loc5_ = _loc2_.overriddenActionNames();
                  if(_loc5_)
                  {
                     for each(_loc6_ in _loc5_)
                     {
                        if(_loc4_.indexOf(_loc6_) >= 0)
                        {
                           _loc1_.overridingAction = _loc2_.overridingAction(_loc6_);
                        }
                     }
                  }
               }
            }
         }
         for each(_loc1_ in this.var_261)
         {
            if(!(!_loc1_ || !_loc1_.definition))
            {
               if(_loc1_.definition.isAnimation && _loc1_.actionParameter == "")
               {
                  _loc1_.actionParameter = "1";
               }
               this.setActionToParts(_loc1_,_loc3_);
               if(_loc1_.definition.isAnimation)
               {
                  this.var_838 = _loc1_.definition.isAnimated(_loc1_.actionParameter);
                  _loc2_ = this._structure.getAnimation(_loc1_.definition.state + "." + _loc1_.actionParameter);
                  if(_loc2_ != null)
                  {
                     this.var_190 = this.var_190.concat(_loc2_.spriteData);
                     if(_loc2_.hasDirectionData())
                     {
                        this.var_1708 = _loc2_.directionData.offset;
                     }
                     if(_loc2_.hasAvatarData())
                     {
                        this.var_532 = _loc2_.avatarData;
                     }
                  }
               }
               if(_loc1_.actionType == AvatarAction.const_286 || _loc1_.actionType == AvatarAction.const_229 || _loc1_.actionType == AvatarAction.const_393)
               {
                  this.var_838 = true;
               }
            }
         }
      }
      
      protected function getCache() : AvatarImageCache
      {
         if(this.var_264 == null)
         {
            this.var_264 = new AvatarImageCache(this._structure,this,this._assets,this._scale);
         }
         return this.var_264;
      }
      
      private function setActionToParts(param1:IActiveActionData, param2:int) : void
      {
         if(param1 == null || param1.definition == null)
         {
            return;
         }
         if(param1.definition.assetPartDefinition == "")
         {
            return;
         }
         if(param1.definition.isMain)
         {
            this.var_271 = param1;
            this.getCache().setGeometryType(param1.definition.geometryType);
         }
         this.getCache().setAction(param1,param2);
         this.var_630 = true;
      }
      
      private function resetBodyPartCache(param1:IActiveActionData) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(param1.definition.assetPartDefinition == "")
         {
            return;
         }
         if(param1.definition.isMain)
         {
            this.var_271 = param1;
            this.getCache().setGeometryType(param1.definition.geometryType);
         }
         this.getCache().resetBodyPartCache(param1);
         this.var_630 = true;
      }
      
      public function get avatarSpriteData() : IAvatarDataContainer
      {
         return this.var_532;
      }
      
      private function convertToGrayscale(param1:BitmapData, param2:String = "CHANNELS_EQUAL") : BitmapData
      {
         var _loc3_:* = 0.33;
         var _loc4_:* = 0.33;
         var _loc5_:* = 0.33;
         switch(param2)
         {
            case "CHANNELS_UNIQUE":
               _loc3_ = 0.3;
               _loc4_ = 0.59;
               _loc5_ = 0.11;
               break;
            case "CHANNELS_RED":
               _loc3_ = 1;
               _loc4_ = 0;
               _loc5_ = 0;
               break;
            case "CHANNELS_GREEN":
               _loc3_ = 0;
               _loc4_ = 1;
               _loc5_ = 0;
               break;
            case "CHANNELS_BLUE":
               _loc3_ = 0;
               _loc4_ = 0;
               _loc5_ = 1;
               break;
            case "CHANNELS_DESATURATED":
               _loc3_ = 0.3086;
               _loc4_ = 0.6094;
               _loc5_ = 0.082;
         }
         var _loc7_:Array = [_loc3_,_loc4_,_loc5_,0,0,_loc3_,_loc4_,_loc5_,0,0,_loc3_,_loc4_,_loc5_,0,0,0,0,0,1,0];
         var _loc8_:ColorMatrixFilter = new ColorMatrixFilter(_loc7_);
         var _loc9_:BitmapData = new BitmapData(param1.width,param1.height,param1.transparent,4294967295);
         _loc9_.copyPixels(param1,param1.rect,new Point(0,0),null,null,false);
         _loc9_.applyFilter(_loc9_,_loc9_.rect,new Point(0,0),_loc8_);
         return _loc9_;
      }
      
      private function errorThis(param1:String) : void
      {
         Logger.log("[AvatarImageError] " + param1);
      }
      
      private function logThis(param1:String) : void
      {
      }
      
      public function getSubType() : int
      {
         return -1;
      }
      
      public function get petType() : int
      {
         return -1;
      }
      
      public function get petBreed() : int
      {
         return -1;
      }
      
      public function isPlaceholder() : Boolean
      {
         return false;
      }
   }
}
