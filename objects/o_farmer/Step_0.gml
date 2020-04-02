 /// @description  Move the Player

action_input = keyboard_check_pressed(ord("X"));

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
    	//show_debug_message("Wall to the RIGHT")
		// alarm[1] = 1;
		
    }	

    if (place_meeting(x-1, y, collision_object)) 
    {
    	//show_debug_message("Wall to the LEFT")
    }	
}




var inst = instance_nearest(x,y,o_material);


if state_timer > 0 { state_timer--; }
switch (state)
{
	case states.wander: 
							action_input = false;
							if (state_timer == 0)
							{
								state_timer = 120;
	
							    if (place_meeting(x+1, y, collision_object)) 
							    {
									alarm[1] = 1;//left_input
									show_debug_message("Detecting RIGHT wall; left_input set");
							    }
							    else if (place_meeting(x-1, y, collision_object)) 
								{
									alarm[0] = 1;//right_input
									show_debug_message("Detecting LEFT wall; right_input set");
								}
								else
								{
									alarm[choose(0,1)] = 60; //left / right input
									show_debug_message("Detecting NO wall; random_input set");
								}
							}
							
							if (distance_to_object(inst) < 150) 
							{
								state = states.chase;
							}
							else
							{
								state = states.wander;
							}
						
							break;
						
	case states.chase:
							action_input = false;
							if distance_to_object(inst) < 150
							{
								if inst.x > x
								{
									alarm[0] = 1; //right_input
									show_debug_message(string(x) + " > " + string(inst.x) );
								}
								else 
								{
									show_debug_message(string(x) + " < " + string(inst.x) );
									alarm[1] = 1;// left_input
								}
								
								if (place_meeting(x, y, inst))
								{
									show_debug_message("place_meeting(inst)");
									state = states.mining;
								}
							}
							break;
	
	case states.mining:
							left_input = false;
							right_input = false;
							if stance_timer == 0
							{
								action_input = true;
								stance_timer = 60;
								
							}
							enable_stance_switch(MINE);
							
							if !(place_meeting(x, y, inst)) 
							{
								state = states.wander;
							}
	
							break;
	
	default: 
						// jump_input = false;
						// left_input = false;
						// right_input = false;
							break;
		
}

if movement == MINE
{
	if animation_hit_frame(5)
	{
		stance_timer = 0;	
	}
}

if keyboard_check_pressed(vk_backspace)
	game_restart();