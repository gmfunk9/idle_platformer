/// @description Insert description here
// You can write your code in this editor

if ( point_in_rectangle
	(
	 device_mouse_x(0),
	 device_mouse_y(0),
	 _x,
	 _y,
	 _x + button_width,
	 _y + button_height) 
   )
{
	
//show_debug_message("pir");

	if mouse_check_button_pressed(mb_left)
	{
		_image_index = 2;
	    event_perform(ev_other,ev_user0);
	}
	else
	{
		_image_index = 1;
	}
}			
 else
{
	_image_index = 0;
}