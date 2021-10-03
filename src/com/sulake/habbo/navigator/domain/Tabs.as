package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_378:int = 1;
      
      public static const const_255:int = 2;
      
      public static const const_320:int = 3;
      
      public static const const_386:int = 4;
      
      public static const const_243:int = 5;
      
      public static const const_385:int = 1;
      
      public static const const_788:int = 2;
      
      public static const const_760:int = 3;
      
      public static const const_743:int = 4;
      
      public static const const_261:int = 5;
      
      public static const const_663:int = 6;
      
      public static const const_711:int = 7;
      
      public static const const_225:int = 8;
      
      public static const const_392:int = 9;
      
      public static const const_1870:int = 10;
      
      public static const const_803:int = 11;
      
      public static const const_444:int = 12;
       
      
      private var var_428:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_428 = new Array();
         this.var_428.push(new Tab(this._navigator,const_378,const_444,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_478));
         this.var_428.push(new Tab(this._navigator,const_255,const_385,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_478));
         this.var_428.push(new Tab(this._navigator,const_386,const_803,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1067));
         this.var_428.push(new Tab(this._navigator,const_320,const_261,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_478));
         this.var_428.push(new Tab(this._navigator,const_243,const_225,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_652));
         this.setSelectedTab(const_378);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_386;
      }
      
      public function get tabs() : Array
      {
         return this.var_428;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_428)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_428)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_428)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
