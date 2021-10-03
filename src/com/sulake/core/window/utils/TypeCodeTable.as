package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_802;
         param1["bitmap"] = const_637;
         param1["border"] = const_804;
         param1["border_notify"] = const_1410;
         param1["button"] = const_510;
         param1["button_thick"] = const_748;
         param1["button_icon"] = const_1646;
         param1["button_group_left"] = const_681;
         param1["button_group_center"] = const_878;
         param1["button_group_right"] = const_648;
         param1["canvas"] = const_674;
         param1["checkbox"] = const_872;
         param1["closebutton"] = const_1158;
         param1["container"] = const_362;
         param1["container_button"] = const_623;
         param1["display_object_wrapper"] = const_698;
         param1["dropmenu"] = const_515;
         param1["dropmenu_item"] = const_509;
         param1["frame"] = const_358;
         param1["frame_notify"] = const_1513;
         param1["header"] = const_615;
         param1["html"] = const_1000;
         param1["icon"] = const_1092;
         param1["itemgrid"] = const_1122;
         param1["itemgrid_horizontal"] = const_513;
         param1["itemgrid_vertical"] = const_717;
         param1["itemlist"] = const_975;
         param1["itemlist_horizontal"] = const_356;
         param1["itemlist_vertical"] = const_402;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1509;
         param1["menu"] = const_1617;
         param1["menu_item"] = const_1494;
         param1["submenu"] = const_1164;
         param1["minimizebox"] = const_1601;
         param1["notify"] = const_1573;
         param1["null"] = const_877;
         param1["password"] = const_886;
         param1["radiobutton"] = const_820;
         param1["region"] = const_618;
         param1["restorebox"] = const_1630;
         param1["scaler"] = const_866;
         param1["scaler_horizontal"] = const_1452;
         param1["scaler_vertical"] = const_1442;
         param1["scrollbar_horizontal"] = const_557;
         param1["scrollbar_vertical"] = const_824;
         param1["scrollbar_slider_button_up"] = const_1192;
         param1["scrollbar_slider_button_down"] = const_1064;
         param1["scrollbar_slider_button_left"] = const_1170;
         param1["scrollbar_slider_button_right"] = const_1088;
         param1["scrollbar_slider_bar_horizontal"] = const_1139;
         param1["scrollbar_slider_bar_vertical"] = const_986;
         param1["scrollbar_slider_track_horizontal"] = const_982;
         param1["scrollbar_slider_track_vertical"] = const_1213;
         param1["scrollable_itemlist"] = const_1422;
         param1["scrollable_itemlist_vertical"] = const_465;
         param1["scrollable_itemlist_horizontal"] = const_1004;
         param1["selector"] = const_680;
         param1["selector_list"] = const_720;
         param1["submenu"] = const_1164;
         param1["tab_button"] = const_533;
         param1["tab_container_button"] = const_1115;
         param1["tab_context"] = const_344;
         param1["tab_content"] = const_1202;
         param1["tab_selector"] = const_685;
         param1["text"] = const_540;
         param1["input"] = const_876;
         param1["toolbar"] = const_1616;
         param1["tooltip"] = const_345;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
