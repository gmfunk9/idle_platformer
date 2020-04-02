/// @description Insert description here
// You can write your code in this editor

#region Camera Properties

//window_x = camera_get_view_x(view_camera[0])
//window_y = camera_get_view_y(view_camera[0])
//window_h = camera_get_view_height(view_camera[0])
//window_w = camera_get_view_width(view_camera[0])
window_x = camera_get_view_x(view_camera[0])
window_y = camera_get_view_y(view_camera[0])
window_h = camera_get_view_height(view_camera[0])
window_w = camera_get_view_width(view_camera[0])

show_debug_message("ACTIVE CAM: ");
show_debug_message(camera_get_active() );



x1 = window_x;
x2 = window_x + window_w;
y1 = window_y;
y2 = window_y + window_h;


show_debug_message(
"  x1:" + string(x1) + 
"  y1:" + string(y1) + 
"  x2:" + string(x2) + 
"  y2:" + string(y2)
);


panel_max_width = 480;
panel_max_height = 270;

panel_width = window_w - 16;
panel_height = window_h / 2 - 16;

if panel_width > panel_max_width
	panel_width = panel_max_width;
	
if panel_height > panel_max_height
	panel_height = panel_max_height;


panel_top_left_x  = x1 + window_w / 2 - panel_width / 2;
//panel_top_left_y  = y1 + 12 + window_h / 2;
panel_top_left_y  = window_y + window_h - panel_height;

//panel_top_right_x = x2 - 12;
//panel_top_right_y = y1 + 12 + window_h / 2;
//panel_bot_left_y  = y2 - 12;
//panel_bot_left_x  = x1 + 12;
//panel_bot_right_x = x2 - 12;
//panel_bot_right_y = y2 - 12;



show_debug_message(" panel_max_height: " + string(panel_max_height) + " panel_width: " + string(panel_width) );
show_debug_message(" panel_max_width: " + string(panel_max_width) + " panel_height: " + string(panel_height) );

#endregion


#region Buttons
//instance_create_depth()
panel_border_x = panel_width * .048;
panel_border_y = panel_height * .15;
offset_x = (panel_width - panel_border_x)  * .333;
offset_y = (panel_height - panel_border_y) * .5;


#macro P_LEFT_X panel_top_left_x + panel_border_x
#macro P_CENTER_X panel_top_left_x + panel_border_x + (offset_x * 1)
#macro P_RIGHT_X panel_top_left_x + panel_border_x + (offset_x * 2)

#macro P_TOP_Y panel_top_left_y + panel_border_y
#macro P_BOT_Y panel_top_left_y + panel_border_y + offset_y

fn_gui_create_button(x,y,P_LEFT_X,P_TOP_Y,"BUY: ","pickaxe",fn_update_player, 1);	

fn_gui_create_button(x,y,P_CENTER_X,P_TOP_Y,"SELL: ","iron",fn_update_material,"gold",1,-500);	

/*
inst = instance_create_depth(x,y,-2,o_merchant_button);
inst._x = P_LEFT_X;
inst._y = P_TOP_Y;
inst.creator = id;
inst.text = "Add1:";
inst.targetScript = fn_room_goto;
inst.targetScriptArgs[0] = rm_test;
 
inst = instance_create_depth(x,y,-2,o_merchant_button);
inst._x = P_LEFT_X
inst._y = P_BOT_Y;
inst.creator = id;
inst.text = "Add2:";

inst = instance_create_depth(x,y,-2,o_merchant_button);
inst._x = P_CENTER_X;
inst._y = P_TOP_Y;
inst.creator = id;
inst.text = "Add3:";

inst = instance_create_depth(x,y,-2,o_merchant_button);
inst._x = P_CENTER_X;
inst._y = P_BOT_Y;
inst.creator = id;
inst.text = "Add4:";

inst = instance_create_depth(x,y,-2,o_merchant_button);
inst._x = P_RIGHT_X;
inst._y = P_TOP_Y;
inst.creator = id;
inst.text = "Add5:";

inst = instance_create_depth(x,y,-2,o_merchant_button);
inst._x = P_RIGHT_X;
inst._y = P_BOT_Y;
inst.creator = id;
inst.text = "Add6:";


/*
inst = instance_create_depth(x,y,-2,o_merchant_button);
inst._x = panel_top_left_x + panel_border_x;
inst._y = panel_top_left_y + panel_border_y;
inst.creator = id;
inst.text = "Add1:";

inst = instance_create_depth(x,y,-2,o_merchant_button);
inst._x = panel_top_left_x + panel_border_x;
inst._y = panel_top_left_y + panel_border_y + offset_y;
inst.creator = id;
inst.text = "Add2:";

inst = instance_create_depth(x,y,-2,o_merchant_button);
inst._x = panel_top_left_x + panel_border_x + (offset_x * 1);
inst._y = panel_top_left_y + panel_border_y;
inst.creator = id;
inst.text = "Add3:";

inst = instance_create_depth(x,y,-2,o_merchant_button);
inst._x = panel_top_left_x + panel_border_x + (offset_x * 1);
inst._y = panel_top_left_y + panel_border_y + offset_y;
inst.creator = id;
inst.text = "Add4:";

inst = instance_create_depth(x,y,-2,o_merchant_button);
inst._x = panel_top_left_x + panel_border_x + (offset_x * 2);
inst._y = panel_top_left_y + panel_border_y;
inst.creator = id;
inst.text = "Add5:";

inst = instance_create_depth(x,y,-2,o_merchant_button);
inst._x = panel_top_left_x + panel_border_x + (offset_x * 2);
inst._y = panel_top_left_y + panel_border_y + offset_y;
inst.creator = id;
inst.text = "Add6:";

//inst = instance_create_depth(x,y,-2,o_merchant_button);
//inst._x = panel_top_left_x + panel_border_x + (offset_x * 3);
//inst._y = panel_top_left_y + 24;
//inst.creator = id;
//inst.text = "Add3:";
*/

#endregion