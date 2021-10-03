package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_753:TileHeightMap = null;
      
      private var var_1155:LegacyWallGeometry = null;
      
      private var var_1156:RoomCamera = null;
      
      private var var_754:SelectedRoomObjectData = null;
      
      private var var_755:SelectedRoomObjectData = null;
      
      private var var_2588:String = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1155 = new LegacyWallGeometry();
         this.var_1156 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_753;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_753 != null)
         {
            this.var_753.dispose();
         }
         this.var_753 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1155;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1156;
      }
      
      public function get worldType() : String
      {
         return this.var_2588;
      }
      
      public function set worldType(param1:String) : void
      {
         this.var_2588 = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_754;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_754 != null)
         {
            this.var_754.dispose();
         }
         this.var_754 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_755;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_755 != null)
         {
            this.var_755.dispose();
         }
         this.var_755 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_753 != null)
         {
            this.var_753.dispose();
            this.var_753 = null;
         }
         if(this.var_1155 != null)
         {
            this.var_1155.dispose();
            this.var_1155 = null;
         }
         if(this.var_1156 != null)
         {
            this.var_1156.dispose();
            this.var_1156 = null;
         }
         if(this.var_754 != null)
         {
            this.var_754.dispose();
            this.var_754 = null;
         }
         if(this.var_755 != null)
         {
            this.var_755.dispose();
            this.var_755 = null;
         }
      }
   }
}
