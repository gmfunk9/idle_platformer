 /// @description  Move the Player


// Enable platform movement actions
enable_movement_platform_actions(.5, 8, 14, 
								 right_input, 
								 left_input, 
								 jump_input, 
								 jump_release_input,
								 action_input
								);
								

								
// This script might not work for every kind of sprite set but it will work for a basic
// set and will show how you could get started if you want to add more
//enable_movement_platform_sprites(HeroKnight_idle, HeroKnight_run, HeroKnight_jump, .4);

// Move the entity
move_movement_entity();



//directional stuff for sprite and movement setting
var _xaxis = (right_input - left_input);
var _yaxis = (down_input - up_input);
var dir = point_direction(0, 0,_xaxis, _yaxis);
// scr_get_dir_intent(dir);

//show_debug_message(direction);
sprite_index = sprite[direction / 90, movement];
image_alpha  = 1;
image_speed = .5;


//var hspd = hsp[0] + hsp[1];
if !( hsp[0] == 0 )
{
    //image_xscale = sign(hsp[0]);
image_xscale = ( sign( hsp[0] ) ) + ( ( image_xscale/sprite_get_width( sprite_index )) * 4 );
}






// Get the total speeds
var hspd = hsp[0]+hsp[1];
var vspd = vsp[0]+vsp[1];

if (collide)
{
    if (place_meeting(x+1, y, collision_object)) 
    {
    	show_debug_message("Wall to the RIGHT")
		alarm[1] = 1;
		
    }	

    if (place_meeting(x-1, y, collision_object)) 
    {
    	show_debug_message("Wall to the LEFT")
    }	
}





if distance_to_object(o_player) < 150 {
	jump_input = true;
	show_debug_message("distance < 150")
} else {
	jump_input = false;
}


