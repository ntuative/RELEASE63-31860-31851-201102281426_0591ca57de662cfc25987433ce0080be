package com.sulake.habbo.room.object.visualization.pet
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IPetImageListener;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class PetVisualization extends RoomObjectSpriteVisualization implements IPetImageListener
   {
      
      private static const const_958:int = 2;
      
      private static const const_1348:Array = [0,0,0];
       
      
      private var var_619:PetVisualizationData = null;
      
      private var var_509:Map;
      
      private var var_1174:int = 0;
      
      private var var_535:int = 0;
      
      private var var_838:Boolean;
      
      private var var_541:String;
      
      private var var_1175:int = 0;
      
      private var _updateTimes:Array;
      
      private var var_621:BitmapDataAsset;
      
      private var _experienceData:ExperienceData;
      
      private var var_734:Boolean = false;
      
      private var var_1871:Boolean = false;
      
      private const const_1997:int = 3;
      
      private var var_1687:int = -1;
      
      private const const_957:int = 0;
      
      private const const_1711:int = 1;
      
      private const const_1709:int = 2;
      
      private const const_1349:int = 3;
      
      private var var_60:IAvatarImage = null;
      
      private var var_257:String = "";
      
      private var _postureParameter:String = "";
      
      private var _isSleeping:Boolean = false;
      
      private var var_1426:Boolean = false;
      
      private var var_1837:Boolean = false;
      
      private var var_1150:Boolean = false;
      
      private var var_1870:Boolean = false;
      
      private var var_1428:String = "";
      
      private var var_1340:int = 0;
      
      private var var_2244:int = 0;
      
      private var var_1838:Number = NaN;
      
      private var var_1839:int = -1;
      
      private var var_1840:int = -1;
      
      public function PetVisualization()
      {
         super();
         this._updateTimes = new Array();
         this.var_509 = new Map();
         this.var_838 = false;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_734;
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         super.dispose();
         if(this.var_509 != null)
         {
            _loc1_ = this.var_509.getKeys();
            for each(_loc2_ in _loc1_)
            {
               _loc3_ = this.var_509.getValue(_loc2_) as IAvatarImage;
               _loc3_.dispose();
            }
         }
         this.var_509.dispose();
         if(this._experienceData)
         {
            this._experienceData.dispose();
         }
         this._experienceData = null;
         this.var_619 = null;
         this.var_734 = true;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         this.var_619 = param1 as PetVisualizationData;
         createSprites(this.const_1349);
         var _loc2_:BitmapData = (this.var_619.getAvatarRendererAsset("pet_experience_bubble_png") as BitmapDataAsset).content as BitmapData;
         this._experienceData = new ExperienceData(_loc2_.clone());
         return true;
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number) : Boolean
      {
         var _loc3_:* = null;
         if(param1.getUpdateID() != var_163)
         {
            this._isSleeping = param1.getNumber(RoomObjectVariableEnum.const_351) > 0;
            this.var_1428 = param1.getString(RoomObjectVariableEnum.const_234);
            this.var_257 = param1.getString(RoomObjectVariableEnum.const_369);
            this._postureParameter = param1.getString(RoomObjectVariableEnum.const_883);
            this.var_1838 = param1.getNumber(RoomObjectVariableEnum.const_311);
            this.var_1340 = param1.getNumber(RoomObjectVariableEnum.const_721);
            this.var_2244 = param1.getNumber(RoomObjectVariableEnum.const_838);
            this.validateActions();
            _loc3_ = param1.getString(RoomObjectVariableEnum.const_198);
            if(this.var_541 != _loc3_)
            {
               this.var_541 = _loc3_;
               this.resetAvatarImages();
            }
            var_163 = param1.getUpdateID();
            return true;
         }
         return false;
      }
      
      private function resetAvatarImages() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_509)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         this.var_509.reset();
         this.var_60 = null;
      }
      
      private function validateActions() : void
      {
         var _loc1_:int = 0;
         this.var_1870 = false;
         switch(this.var_257)
         {
            case AvatarAction.const_524:
            case AvatarAction.const_1072:
            case AvatarAction.const_1011:
            case AvatarAction.const_1105:
            case AvatarAction.const_1106:
            case AvatarAction.const_1093:
            case AvatarAction.const_670:
            case AvatarAction.const_286:
            case AvatarAction.const_229:
               this.var_1870 = true;
         }
         this.var_1837 = false;
         this.var_1150 = false;
         if(this.var_257 == "lay")
         {
            this.var_1150 = true;
            _loc1_ = int(this._postureParameter);
            if(_loc1_ < 0)
            {
               this.var_1837 = true;
            }
         }
      }
      
      private function updateObject(param1:IRoomObject, param2:IRoomGeometry, param3:Boolean = false) : Boolean
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param3 || var_443 != param1.getUpdateID() || this.var_1687 != param2.updateId)
         {
            _loc4_ = param1.getDirection().x - param2.direction.x;
            _loc4_ = (_loc4_ % 360 + 360) % 360;
            _loc5_ = this.var_1838;
            if(isNaN(this.var_1838))
            {
               _loc5_ = _loc4_;
            }
            else
            {
               _loc5_ -= param2.direction.x;
               _loc5_ = (_loc5_ % 360 + 360) % 360;
            }
            if(_loc4_ != this.var_1839 || param3)
            {
               this.var_1839 = _loc4_;
               _loc4_ -= 112.5;
               _loc4_ = (_loc4_ + 360) % 360;
               this.var_60.setDirectionAngle(AvatarSetType.const_34,_loc4_);
            }
            if(_loc5_ != this.var_1840 || param3)
            {
               this.var_1840 = _loc5_;
               _loc5_ -= 112.5;
               _loc5_ = (_loc5_ + 360) % 360;
               this.var_60.setDirectionAngle(AvatarSetType.const_49,_loc5_);
            }
            var_443 = param1.getUpdateID();
            this.var_1687 = param2.updateId;
            return true;
         }
         return false;
      }
      
      private function getAvatarImage(param1:Number) : IAvatarImage
      {
         var _loc2_:String = "avatarImage" + param1.toString();
         var _loc3_:IAvatarImage = this.var_509.getValue(_loc2_) as IAvatarImage;
         if(_loc3_ == null)
         {
            _loc3_ = this.var_619.getAvatar(this.var_541,param1,this);
            if(_loc3_ != null)
            {
               this.var_509.add(_loc2_,_loc3_);
            }
         }
         return _loc3_;
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1711);
         this.var_621 = null;
         _loc2_ = getSprite(this.const_1711);
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1 < 48)
         {
            this.var_621 = this.var_60.getAsset("sh_std_sd_1_0_0");
            _loc3_ = -8;
            _loc4_ = -3;
         }
         else
         {
            this.var_621 = this.var_60.getAsset("h_std_sd_1_0_0");
            _loc3_ = -17;
            _loc4_ = -7;
         }
         if(this.var_621)
         {
            _loc2_.asset = this.var_621.content as BitmapData;
            _loc2_.offsetX = _loc3_;
            _loc2_.offsetY = _loc4_;
            _loc2_.alpha = 50;
            _loc2_.relativeDepth = 1;
         }
         else
         {
            _loc2_.asset = null;
         }
      }
      
      override public function update(param1:IRoomGeometry, param2:int, param3:Boolean) : void
      {
         var _loc12_:int = 0;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc19_:* = null;
         var _loc20_:int = 0;
         var _loc21_:int = 0;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:* = null;
         var _loc26_:* = null;
         var _loc4_:IRoomObject = object;
         if(_loc4_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(this.var_619 == null)
         {
            return;
         }
         var _loc5_:IRoomObjectModel = _loc4_.getModel();
         if(this.var_1871)
         {
            this.var_1871 = false;
            this.var_1174 = 0;
            this.var_1175 = 1;
            this.resetAvatarImages();
         }
         var _loc6_:Number = param1.scale;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = this.updateModel(_loc5_,_loc6_);
         if(_loc9_ || _loc6_ != var_184 || this.var_60 == null)
         {
            if(_loc6_ != var_184)
            {
               var_184 = _loc6_;
               _loc7_ = true;
            }
            if(_loc7_ || this.var_60 == null)
            {
               this.var_60 = this.getAvatarImage(_loc6_);
            }
            if(this.var_60 == null)
            {
               return;
            }
            if(_loc7_)
            {
               this.updateShadow(_loc6_);
            }
            _loc8_ = this.updateObject(_loc4_,param1,true);
            this.updateActions(this.var_60);
         }
         else
         {
            _loc8_ = this.updateObject(_loc4_,param1);
         }
         var _loc10_:Boolean = _loc8_ || _loc9_ || _loc7_;
         var _loc11_:Boolean = this.var_838 || this.var_1175 > 0 || this.var_1870;
         this._experienceData.alpha = 0;
         if(this.var_1340 > 0)
         {
            _loc12_ = param2 - this.var_1340;
            if(_loc12_ < AvatarAction.const_923)
            {
               this._experienceData.alpha = int(Math.sin(_loc12_ / 0 * 0) * 255);
               this._experienceData.setExperience(this.var_2244);
               this.var_1175 = this.const_1997;
            }
            else
            {
               this.var_1340 = 0;
            }
            _loc13_ = getSprite(this.const_1709);
            if(_loc13_ != null)
            {
               if(this._experienceData.alpha > 0)
               {
                  _loc13_.asset = this._experienceData.image;
                  _loc13_.offsetX = -20;
                  _loc13_.offsetY = -80;
                  _loc13_.alpha = this._experienceData.alpha;
                  _loc13_.visible = true;
               }
               else
               {
                  _loc13_.asset = null;
                  _loc13_.visible = false;
               }
            }
         }
         if(_loc10_ || _loc11_)
         {
            increaseUpdateId();
            --this.var_1175;
            ++this.var_535;
            --this.var_1174;
            if(!(this.var_1174 <= 0 || _loc7_))
            {
               return;
            }
            this.var_60.updateAnimationByFrames(1);
            this.var_1174 = const_958;
            this.var_838 = this.var_60.isAnimating();
            _loc14_ = this.var_60.getCanvasOffsets();
            if(_loc14_ == null || _loc14_.length < 3)
            {
               _loc14_ = const_1348;
            }
            _loc15_ = 0;
            if(object.getLocation().z > 0)
            {
               _loc15_ = Math.min(_loc6_ / 2.75,0);
            }
            _loc13_ = getSprite(this.const_957);
            if(_loc13_)
            {
               _loc18_ = this.var_60.getImage(AvatarSetType.const_34,false);
               if(_loc18_ != null)
               {
                  _loc13_.asset = _loc18_;
               }
               if(_loc6_ < 48)
               {
                  _loc13_.offsetX = -16 + _loc14_[0];
                  _loc13_.offsetY = -_loc13_.asset.height + 8 + _loc14_[1] + _loc15_;
               }
               else
               {
                  _loc13_.offsetX = -32 + _loc14_[0];
                  _loc13_.offsetY = -_loc13_.asset.height + 16 + _loc14_[1] + _loc15_;
               }
            }
            _loc16_ = this.const_1349;
            for each(_loc17_ in this.var_60.getSprites())
            {
               _loc13_ = getSprite(_loc16_);
               if(_loc13_ != null)
               {
                  _loc19_ = this.var_60.getLayerData(_loc17_);
                  _loc20_ = 0;
                  _loc21_ = _loc17_.getDirectionOffsetX(this.var_60.getDirection());
                  _loc22_ = _loc17_.getDirectionOffsetY(this.var_60.getDirection());
                  _loc23_ = _loc17_.getDirectionOffsetZ(this.var_60.getDirection());
                  _loc24_ = 0;
                  if(_loc17_.hasDirections)
                  {
                     _loc24_ = this.var_60.getDirection();
                  }
                  if(_loc19_ != null)
                  {
                     _loc20_ = _loc19_.animationFrame;
                     _loc21_ += _loc19_.dx;
                     _loc22_ += _loc19_.dy;
                     _loc24_ += _loc19_.directionOffset;
                  }
                  if(_loc6_ < 48)
                  {
                     _loc21_ /= 2;
                     _loc22_ /= 2;
                  }
                  if(_loc24_ < 0)
                  {
                     _loc24_ += 8;
                  }
                  if(_loc24_ > 7)
                  {
                     _loc24_ -= 8;
                  }
                  _loc25_ = this.var_60.getScale() + "_" + _loc17_.member + "_" + _loc24_ + "_" + _loc20_;
                  _loc26_ = this.var_60.getAsset(_loc25_);
                  if(_loc26_ != null)
                  {
                     _loc13_.asset = _loc26_.content as BitmapData;
                     _loc13_.offsetX = -1 * _loc26_.offset.x - _loc6_ / 2 + _loc21_;
                     _loc13_.offsetY = -1 * _loc26_.offset.y + _loc22_;
                     _loc13_.relativeDepth = -0.01 - 0.1 * _loc16_ * _loc23_;
                     if(_loc17_.ink == 33)
                     {
                        _loc13_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc13_.blendMode = BlendMode.NORMAL;
                     }
                     _loc16_++;
                  }
               }
            }
         }
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_355,this.var_257,this._postureParameter);
         if(this.var_1428 != null && this.var_1428 != "")
         {
            param1.appendAction(AvatarAction.const_273,this.var_1428);
         }
         if(this._isSleeping || this.var_1426)
         {
            param1.appendAction(AvatarAction.const_573);
         }
         param1.endActionAppends();
         var _loc2_:int = param1.getSprites().length + this.const_1349;
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
      
      public function imageReady() : void
      {
         this.var_1871 = true;
      }
      
      public function petImageReady(param1:String) : void
      {
         this.resetAvatarImages();
      }
   }
}
