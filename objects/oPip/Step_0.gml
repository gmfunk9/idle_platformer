/// @description Insert description here
// You can write your code in this editor

if device_mouse_check_button(0,mb_left)
{
	drop_x = dev_mouse_x ;//- camera_get_view_x(view_camera[0]);
	drop_y = dev_mouse_y ;//- camera_get_view_y(view_camera[0]);
	
	dev_mouse_x = device_mouse_x_to_gui(0);// + camera_get_view_x(view_camera[0]);
	dev_mouse_y = device_mouse_y_to_gui(0);// + camera_get_view_y(view_camera[0]);

}

if device_mouse_check_button_pressed(0,mb_left)
{
	push_x = dev_mouse_x ;//- camera_get_view_x(view_camera[0]);
	push_y = dev_mouse_y ;//- camera_get_view_y(view_camera[0]);
	show_debug_message("camera_get_active: " +string(camera_get_active()));
}


if device_mouse_check_button_released(0,mb_left)
{
	drop_x = dev_mouse_x ;//- camera_get_view_x(view_camera[0]);
	drop_y = dev_mouse_y ;//- camera_get_view_y(view_camera[0]);
	//drop_t = time;
 
	drag_dis = point_distance (push_x, push_y, drop_x, drop_y);
	drag_dir = point_direction(push_x, push_y, drop_x, drop_y);
	drag_vel = round(drag_dis);// / (drop_t -push_t);

	//drag_dir = round(drag_dir / 45);
	//if(drag_dir == 0)
	//    drag_dir = 4;

	o_player.swipe_jump = 1;
	o_player.swipe_dir = drag_dir;
	o_player.swipe_vel = drag_vel;

	push_x = 0;
	push_y = 0;
	drop_x = 0;
	drop_y = 0;
	dev_mouse_x = 0;
	dev_mouse_y = 0;
}
