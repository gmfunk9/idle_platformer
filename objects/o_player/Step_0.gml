/// @description  Move the Player
right_input = keyboard_check(ord("D"));
left_input = keyboard_check(ord("A"));
up_input = keyboard_check(ord("W"));
down_input = keyboard_check(ord("S"));
jump_input = keyboard_check_pressed(vk_space) ;
jump_release_input = keyboard_check_released(vk_space);
action_input = keyboard_check_pressed(ord("S"));



// Enable actions and abilities
enable_movement_platform_actions(.5, 8, 14, 
								 right_input, 
								 left_input, 
								 jump_input, 
								 jump_release_input,
								 action_input
								);
								

// Move the entity
move_movement_entity();



//SWANG
if (swipe_jump)
{
	add_movement_direction_acceleration(swipe_dir,clamp(swipe_vel * .05,0,32) );
	swipe_dir = 0;
	swipe_vel = 0;
	swipe_jump = 0;
}

								
// This script might not work for every kind of sprite set but it will work for a basic
// set and will show how you could get started if you want to add more
//enable_movement_platform_sprites(Woodcutter_idle, Woodcutter_walk, Woodcutter_jump, .4);



//directional stuff for sprite and movement setting
var _xaxis = (left_input - right_input);
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
    image_xscale = sign(hsp[0]);
}



switch (movement) {
	case JUMP:
		if animation_hit_frame(5)
			image_speed = 0;
	    break;
	case ATTACK1:
		image_speed = 1;
		if animation_hit_frame(5)
		{
			enable_stance_switch(IDLE);
			stance_timer = 0;
		}
		break;
	default:
	    image_speed = .5;
	    break;
}
