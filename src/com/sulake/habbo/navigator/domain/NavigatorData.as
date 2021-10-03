package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1715:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_199:MsgWithRequestId;
      
      private var var_641:RoomEventData;
      
      private var var_2706:Boolean;
      
      private var var_2704:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2215:int;
      
      private var var_266:GuestRoomData;
      
      private var var_981:PublicRoomShortData;
      
      private var var_2702:int;
      
      private var var_2710:Boolean;
      
      private var var_2707:int;
      
      private var var_2708:Boolean;
      
      private var var_1927:int;
      
      private var var_2703:Boolean;
      
      private var var_1275:Array;
      
      private var var_1469:Array;
      
      private var var_2709:int;
      
      private var var_1470:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1210:Boolean;
      
      private var var_2711:int;
      
      private var var_2712:Boolean;
      
      private var var_2705:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1275 = new Array();
         this.var_1469 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_266 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_266 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_981 = null;
         this.var_266 = null;
         this._currentRoomOwner = false;
         if(param1.guestRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_981 = param1.publicSpace;
            this.var_641 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_641 != null)
         {
            this.var_641.dispose();
            this.var_641 = null;
         }
         if(this.var_981 != null)
         {
            this.var_981.dispose();
            this.var_981 = null;
         }
         if(this.var_266 != null)
         {
            this.var_266.dispose();
            this.var_266 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_266 != null)
         {
            this.var_266.dispose();
         }
         this.var_266 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_641 != null)
         {
            this.var_641.dispose();
         }
         this.var_641 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_199 != null && this.var_199 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_199 != null && this.var_199 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_199 != null && this.var_199 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_199 = param1;
         this.var_1210 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_199 = param1;
         this.var_1210 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_199 = param1;
         this.var_1210 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_199 == null)
         {
            return;
         }
         this.var_199.dispose();
         this.var_199 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_199 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_199 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_199 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_641;
      }
      
      public function get avatarId() : int
      {
         return this.var_2215;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2706;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2704;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_266;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_981;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2710;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2707;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1927;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2708;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2711;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2702;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2703;
      }
      
      public function get adIndex() : int
      {
         return this.var_2705;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2712;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2215 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2707 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2710 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2706 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2704 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2708 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1927 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2711 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2702 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2703 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2705 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2712 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1275 = param1;
         this.var_1469 = new Array();
         for each(_loc2_ in this.var_1275)
         {
            if(_loc2_.visible)
            {
               this.var_1469.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1275;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1469;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2709 = param1.limit;
         this.var_1470 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1470 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_266.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_266 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_266.flatId;
         return this.var_1927 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1470 >= this.var_2709;
      }
      
      public function startLoading() : void
      {
         this.var_1210 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1210;
      }
   }
}
