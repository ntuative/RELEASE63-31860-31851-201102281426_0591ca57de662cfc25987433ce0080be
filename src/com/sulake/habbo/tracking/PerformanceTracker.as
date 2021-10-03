package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var _connection:IConnection = null;
      
      private var var_172:IHabboConfigurationManager = null;
      
      private var var_535:int = 0;
      
      private var var_524:Number = 0;
      
      private var var_2798:Array;
      
      private var var_1476:String = "";
      
      private var var_1933:String = "";
      
      private var var_2324:String = "";
      
      private var var_2323:String = "";
      
      private var var_1655:Boolean = false;
      
      private var var_1936:GarbageMonitor = null;
      
      private var var_1479:int = 0;
      
      private var var_2728:Boolean;
      
      private var var_1934:int = 1000;
      
      private var var_1478:int = 0;
      
      private var _reportInterval:int = 60;
      
      private var var_1844:int = 0;
      
      private var var_1935:int = 10;
      
      private var var_1477:int = 0;
      
      private var var_2727:Number = 0.15;
      
      private var var_2726:Boolean = true;
      
      private var var_2725:Number = 0;
      
      public function PerformanceTracker()
      {
         this.var_2798 = [];
         super();
         this.var_1933 = Capabilities.version;
         this.var_2324 = Capabilities.os;
         this.var_1655 = Capabilities.isDebugger;
         this.var_1476 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         if(this.var_1476 == null)
         {
            this.var_1476 = "unknown";
         }
         this.var_1936 = new GarbageMonitor();
         this.updateGarbageMonitor();
         this.var_1844 = getTimer();
      }
      
      public function get flashVersion() : String
      {
         return this.var_1933;
      }
      
      public function get method_11() : int
      {
         return this.var_524;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         this.var_1934 = param1;
      }
      
      public function set reportInterval(param1:int) : void
      {
         this._reportInterval = param1;
      }
      
      public function set reportLimit(param1:int) : void
      {
         this.var_1935 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         this.var_172 = param1;
         this._reportInterval = int(this.var_172.getKey("performancetest.interval","60"));
         this.var_1934 = int(this.var_172.getKey("performancetest.slowupdatelimit","1000"));
         this.var_1935 = int(this.var_172.getKey("performancetest.reportlimit","10"));
         this.var_2727 = Number(this.var_172.getKey("performancetest.distribution.deviancelimit.percent","10"));
         this.var_2726 = Boolean(int(this.var_172.getKey("performancetest.distribution.enabled","1")));
         this.var_2728 = Boolean(this.var_172.getKey("monitor.garbage.collection","0") == "1");
      }
      
      public function dispose() : void
      {
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = this.var_1936.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            this.var_1936.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function update(param1:uint, param2:int) : void
      {
         var _loc4_:* = null;
         var _loc5_:Number = NaN;
         var _loc6_:Boolean = false;
         var _loc7_:Number = NaN;
         if(this.var_2728)
         {
            _loc4_ = this.updateGarbageMonitor();
            if(_loc4_ != null)
            {
               ++this.var_1479;
               Logger.log("Garbage collection");
            }
         }
         var _loc3_:Boolean = false;
         if(param1 > this.var_1934)
         {
            ++this.var_1478;
            _loc3_ = true;
         }
         else
         {
            ++this.var_535;
            if(this.var_535 <= 1)
            {
               this.var_524 = param1;
            }
            else
            {
               _loc5_ = Number(this.var_535);
               this.var_524 = this.var_524 * (_loc5_ - 1) / _loc5_ + Number(param1) / _loc5_;
            }
         }
         if(param2 - this.var_1844 > this._reportInterval * 1000 && this.var_1477 < this.var_1935)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / this.var_524);
            _loc6_ = true;
            if(this.var_2726 && this.var_1477 > 0)
            {
               _loc7_ = this.differenceInPercents(this.var_2725,this.var_524);
               if(_loc7_ < this.var_2727)
               {
                  _loc6_ = false;
               }
            }
            this.var_1844 = param2;
            if(_loc6_ || _loc3_)
            {
               this.var_2725 = this.var_524;
               if(this.sendReport(param2))
               {
                  ++this.var_1477;
               }
            }
         }
      }
      
      private function sendReport(param1:int) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(this._connection != null)
         {
            _loc2_ = null;
            _loc3_ = param1 / 1000;
            _loc4_ = -1;
            _loc5_ = 0;
            _loc2_ = new PerformanceLogMessageComposer(_loc3_,this.var_1476,this.var_1933,this.var_2324,this.var_2323,this.var_1655,_loc5_,_loc4_,this.var_1479,this.var_524,this.var_1478);
            this._connection.send(_loc2_);
            this.var_1479 = 0;
            this.var_524 = 0;
            this.var_535 = 0;
            this.var_1478 = 0;
            return true;
         }
         return false;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
   }
}
