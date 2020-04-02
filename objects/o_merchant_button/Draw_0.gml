/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);


//draw_sprite_stretched(s_menu_button,_image_index,x,y,camera_get_view_width(view_camera[0]) / 12,64)
draw_sprite_stretched
	(
		s_menu_button,
		_image_index,
		_x,
		_y,
		button_width,
		button_height
	);
					  
if text = "BUY: "
{
	var price = 5 * (o_player.mining_speed * 10);
	draw_text(_x + 12,
			  _y + button_height / 2 - 12,
			  string(text) + string(price));
}
 else
{
    var price = 504;
	draw_text(_x + 12,
			_y + button_height / 2 - 12,
			string(text) + string(price));
}


switch(icon)
{
	case "pickaxe":
		draw_sprite_stretched(s_pickaxe_icon,
					  1,
					  _x + button_width - 32 - 16,
					  _y + button_height / 2 - 16,
					  32,
					  32);
		break;

	case "iron":
		draw_sprite_stretched(s_ore_iron,
					  1,
					  _x + button_width - 32 - 16,
					  _y + button_height / 2 - 16,
					  32,
					  32);
		break;
		
	default:
		draw_sprite_stretched(s_player_idle,
					  1,
					  _x + button_width - 32 - 16,
					  _y + button_height / 2 - 16,
					  32,
					  32);
		break;
}
			
			
			
	/*				  
draw_rectangle(
	 _x,
	 _y,
	 _x + button_width,
	 _y + button_height,
	 0	);