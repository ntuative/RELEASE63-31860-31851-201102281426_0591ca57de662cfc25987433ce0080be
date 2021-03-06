package com.sulake.habbo.room.object.logic
{
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.room.events.RoomObjectMoveEvent;
   import com.sulake.habbo.room.messages.RoomObjectAvatarCarryObjectUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarChatUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarDanceUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarEffectUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarFigureUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarFlatControlUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarGestureUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarPlayerValueUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarPostureUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarSelectedMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarSignUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarSleepUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarTypingUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarUseObjectUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarWaveUpdateMessage;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.events.RoomObjectEvent;
   import com.sulake.room.events.RoomObjectMouseEvent;
   import com.sulake.room.events.RoomSpriteMouseEvent;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.object.IRoomObjectModelController;
   import com.sulake.room.utils.IRoomGeometry;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class AvatarLogic extends MovingObjectLogic
   {
      
      private static const const_926:Number = 1.5;
      
      private static const const_929:int = 28;
      
      private static const const_928:int = 29;
      
      private static const const_927:int = 500;
      
      private static const const_1293:int = 999999999;
       
      
      private var var_200:Boolean = false;
      
      private var var_478:Vector3d = null;
      
      private var var_706:int = 0;
      
      private var var_1358:int = 0;
      
      private var var_1354:int = 0;
      
      private var var_889:int = 0;
      
      private var var_707:int = 0;
      
      private var var_1085:int = 0;
      
      private var var_1356:int = 0;
      
      private var var_1353:int = 0;
      
      private var var_888:int = 0;
      
      private var var_1706:Boolean = false;
      
      private var var_1357:int = 0;
      
      private var var_1707:int = 0;
      
      private var var_1355:int = 0;
      
      public function AvatarLogic()
      {
         super();
         this.var_1707 = getTimer() + this.getBlinkInterval();
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(this.var_200 && object != null)
         {
            if(eventDispatcher != null)
            {
               _loc1_ = new RoomObjectMoveEvent(RoomObjectMoveEvent.const_539,object.getId(),object.getType());
               eventDispatcher.dispatchEvent(_loc1_);
            }
         }
         super.dispose();
         this.var_478 = null;
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc19_:* = null;
         var _loc20_:* = null;
         var _loc21_:* = null;
         var _loc22_:* = null;
         var _loc23_:* = null;
         if(param1 == null || object == null)
         {
            return;
         }
         super.processUpdateMessage(param1);
         var _loc2_:IRoomObjectModelController = object.getModelController();
         if(param1 is RoomObjectAvatarPostureUpdateMessage)
         {
            _loc3_ = param1 as RoomObjectAvatarPostureUpdateMessage;
            _loc2_.setString(RoomObjectVariableEnum.const_369,_loc3_.postureType);
            _loc2_.setString(RoomObjectVariableEnum.const_883,_loc3_.parameter);
            return;
         }
         if(param1 is RoomObjectAvatarChatUpdateMessage)
         {
            _loc4_ = param1 as RoomObjectAvatarChatUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_218,1);
            this.var_1354 = getTimer() + _loc4_.numberOfWords * 1000;
            return;
         }
         if(param1 is RoomObjectAvatarTypingUpdateMessage)
         {
            _loc5_ = param1 as RoomObjectAvatarTypingUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_992,Number(_loc5_.isTyping));
            return;
         }
         if(param1 is RoomObjectAvatarUpdateMessage)
         {
            _loc6_ = param1 as RoomObjectAvatarUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_311,_loc6_.dirHead);
            return;
         }
         if(param1 is RoomObjectAvatarGestureUpdateMessage)
         {
            _loc7_ = param1 as RoomObjectAvatarGestureUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_234,_loc7_.gesture);
            this.var_1356 = getTimer() + 3000;
            return;
         }
         if(param1 is RoomObjectAvatarWaveUpdateMessage)
         {
            _loc8_ = param1 as RoomObjectAvatarWaveUpdateMessage;
            if(_loc8_.isWaving)
            {
               _loc2_.setNumber(RoomObjectVariableEnum.const_354,1);
               this.var_1085 = getTimer() + 0;
            }
            else
            {
               _loc2_.setNumber(RoomObjectVariableEnum.const_354,0);
               this.var_1085 = 0;
            }
            return;
         }
         if(param1 is RoomObjectAvatarDanceUpdateMessage)
         {
            _loc9_ = param1 as RoomObjectAvatarDanceUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_1095,_loc9_.danceStyle);
            return;
         }
         if(param1 is RoomObjectAvatarSleepUpdateMessage)
         {
            _loc10_ = param1 as RoomObjectAvatarSleepUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_351,Number(_loc10_.isSleeping));
            return;
         }
         if(param1 is RoomObjectAvatarPlayerValueUpdateMessage)
         {
            _loc11_ = param1 as RoomObjectAvatarPlayerValueUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_880,_loc11_.value);
            this.var_1355 = getTimer() + 3000;
            return;
         }
         if(param1 is RoomObjectAvatarEffectUpdateMessage)
         {
            _loc12_ = param1 as RoomObjectAvatarEffectUpdateMessage;
            _loc13_ = _loc12_.effect;
            _loc14_ = _loc12_.delayMilliSeconds;
            this.updateEffect(_loc13_,_loc14_,_loc2_);
            return;
         }
         if(param1 is RoomObjectAvatarCarryObjectUpdateMessage)
         {
            _loc15_ = param1 as RoomObjectAvatarCarryObjectUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_531,_loc15_.itemType);
            if(_loc15_.itemType < const_1293)
            {
               this.var_888 = getTimer() + 100000;
               this.var_1706 = true;
            }
            else
            {
               this.var_888 = getTimer() + 1500;
               this.var_1706 = false;
            }
            return;
         }
         if(param1 is RoomObjectAvatarUseObjectUpdateMessage)
         {
            _loc16_ = param1 as RoomObjectAvatarUseObjectUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_372,_loc16_.itemType);
            return;
         }
         if(param1 is RoomObjectAvatarSignUpdateMessage)
         {
            _loc17_ = param1 as RoomObjectAvatarSignUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_1009,_loc17_.signType);
            this.var_1353 = getTimer() + 5000;
            return;
         }
         if(param1 is RoomObjectAvatarFlatControlUpdateMessage)
         {
            _loc18_ = param1 as RoomObjectAvatarFlatControlUpdateMessage;
            _loc2_.setString(RoomObjectVariableEnum.const_739,_loc18_.rawData);
            _loc2_.setNumber(RoomObjectVariableEnum.const_1465,Number(_loc18_.isAdmin));
            return;
         }
         if(param1 is RoomObjectAvatarFigureUpdateMessage)
         {
            _loc19_ = param1 as RoomObjectAvatarFigureUpdateMessage;
            _loc20_ = _loc2_.getString(RoomObjectVariableEnum.const_198);
            _loc21_ = _loc19_.figure;
            _loc22_ = _loc19_.gender;
            if(_loc20_ != null && _loc20_.indexOf(".bds-") != -1)
            {
               _loc21_ += _loc20_.substr(_loc20_.indexOf(".bds-"));
            }
            _loc2_.setString(RoomObjectVariableEnum.const_198,_loc21_);
            _loc2_.setString(RoomObjectVariableEnum.const_1074,_loc22_);
            return;
         }
         if(param1 is RoomObjectAvatarSelectedMessage)
         {
            _loc23_ = param1 as RoomObjectAvatarSelectedMessage;
            this.var_200 = _loc23_.selected;
            this.var_478 = null;
            return;
         }
      }
      
      private function updateEffect(param1:int, param2:int, param3:IRoomObjectModelController) : void
      {
         if(param1 == const_929)
         {
            this.var_706 = getTimer() + const_927;
            this.var_1358 = const_928;
         }
         else if(param3.getNumber(RoomObjectVariableEnum.const_525) == const_928)
         {
            this.var_706 = getTimer() + const_927;
            this.var_1358 = param1;
            param1 = const_929;
         }
         else
         {
            if(param2 != 0)
            {
               this.var_706 = getTimer() + param2;
               this.var_1358 = param1;
               return;
            }
            this.var_706 = 0;
         }
         param3.setNumber(RoomObjectVariableEnum.const_525,param1);
      }
      
      override public function mouseEvent(param1:RoomSpriteMouseEvent, param2:IRoomGeometry) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(object == null || param1 == null)
         {
            return;
         }
         switch(param1.type)
         {
            case MouseEvent.CLICK:
               _loc3_ = object.getId();
               _loc4_ = object.getType();
               if(eventDispatcher != null)
               {
                  _loc5_ = new RoomObjectMouseEvent(RoomObjectMouseEvent.const_251,param1.eventId,_loc3_,_loc4_,param1.altKey,param1.ctrlKey,param1.shiftKey,param1.buttonDown);
                  eventDispatcher.dispatchEvent(_loc5_);
               }
         }
      }
      
      override public function update(param1:int) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         super.update(param1);
         if(this.var_200 && object != null)
         {
            if(eventDispatcher != null)
            {
               _loc2_ = object.getLocation();
               if(this.var_478 == null || this.var_478.x != _loc2_.x || this.var_478.y != _loc2_.y || this.var_478.z != _loc2_.z)
               {
                  if(this.var_478 == null)
                  {
                     this.var_478 = new Vector3d();
                  }
                  this.var_478.assign(_loc2_);
                  _loc3_ = new RoomObjectMoveEvent(RoomObjectMoveEvent.const_454,object.getId(),object.getType());
                  eventDispatcher.dispatchEvent(_loc3_);
               }
            }
         }
         if(object != null && object.getModelController() != null)
         {
            this.updateActions(param1,object.getModelController());
         }
      }
      
      private function updateActions(param1:int, param2:IRoomObjectModelController) : void
      {
         if(this.var_1354 > 0)
         {
            if(param1 > this.var_1354)
            {
               param2.setNumber(RoomObjectVariableEnum.const_218,0);
               this.var_1354 = 0;
               this.var_707 = 0;
               this.var_889 = 0;
            }
            else if(this.var_889 == 0 && this.var_707 == 0)
            {
               this.var_707 = param1 + this.getTalkingPauseInterval();
               this.var_889 = this.var_707 + this.getTalkingPauseLength();
            }
            else if(this.var_707 > 0 && param1 > this.var_707)
            {
               param2.setNumber(RoomObjectVariableEnum.const_218,0);
               this.var_707 = 0;
            }
            else if(this.var_889 > 0 && param1 > this.var_889)
            {
               param2.setNumber(RoomObjectVariableEnum.const_218,1);
               this.var_889 = 0;
            }
         }
         if(this.var_1085 > 0 && param1 > this.var_1085)
         {
            param2.setNumber(RoomObjectVariableEnum.const_354,0);
            this.var_1085 = 0;
         }
         if(this.var_1356 > 0 && param1 > this.var_1356)
         {
            param2.setNumber(RoomObjectVariableEnum.const_234,0);
            this.var_1356 = 0;
         }
         if(this.var_1353 > 0 && param1 > this.var_1353)
         {
            param2.setNumber(RoomObjectVariableEnum.const_1009,0);
            this.var_1353 = 0;
         }
         if(this.var_888 > 0)
         {
            if(param1 > this.var_888)
            {
               param2.setNumber(RoomObjectVariableEnum.const_531,0);
               this.var_888 = 0;
            }
            else if((this.var_888 - param1) % 10000 < 1000 && this.var_1706)
            {
               param2.setNumber(RoomObjectVariableEnum.const_372,1);
            }
            else
            {
               param2.setNumber(RoomObjectVariableEnum.const_372,0);
            }
         }
         if(param1 > this.var_1707)
         {
            param2.setNumber(RoomObjectVariableEnum.const_810,1);
            this.var_1707 = param1 + this.getBlinkInterval();
            this.var_1357 = param1 + this.getBlinkLength();
         }
         if(this.var_1357 > 0 && param1 > this.var_1357)
         {
            param2.setNumber(RoomObjectVariableEnum.const_810,0);
            this.var_1357 = 0;
         }
         if(this.var_706 > 0 && param1 > this.var_706)
         {
            param2.setNumber(RoomObjectVariableEnum.const_525,this.var_1358);
            this.var_706 = 0;
         }
         if(this.var_1355 > 0 && param1 > this.var_1355)
         {
            param2.setNumber(RoomObjectVariableEnum.const_880,0);
            this.var_1355 = 0;
         }
      }
      
      private function getTalkingPauseInterval() : int
      {
         return 100 + Math.random() * 200;
      }
      
      private function getTalkingPauseLength() : int
      {
         return 75 + Math.random() * 75;
      }
      
      private function getBlinkInterval() : int
      {
         return 4500 + Math.random() * 1000;
      }
      
      private function getBlinkLength() : int
      {
         return 50 + Math.random() * 200;
      }
      
      private function targetIsWarping(param1:IVector3d) : Boolean
      {
         var _loc2_:IVector3d = object.getLocation();
         if(param1 == null)
         {
            return false;
         }
         if(_loc2_.x == 0 && _loc2_.y == 0)
         {
            return false;
         }
         if(Math.abs(_loc2_.x - param1.x) > const_926 || Math.abs(_loc2_.y - param1.y) > const_926)
         {
            return true;
         }
         return false;
      }
   }
}
