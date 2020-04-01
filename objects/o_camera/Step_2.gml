  /// @description Insert description here
// You can write your code in this editor
//#macro view view_camera[0]
/*
if (instance_exists(o_player))
{
	
	var _x = clamp(o_player.x - w_width / 2, 0, room_width - w_width);
	var _y = clamp(o_player.y - w_height / 2, 0, room_height - w_height);
	
	var _cur_x = camera_get_view_x(cam);
	var _cur_y = camera_get_view_y(cam);
	
	var _spd = .1;
	camera_set_view_pos(cam,
						lerp(_cur_x,_x,_spd),
						lerp(_cur_y,_y,_spd));

}


if keyboard_check_pressed(vk_escape)
{
	game_restart();
}      