/// @description initialize_movement_entity(gravity, friction, air_resistance, bounce, collision_object)
/// @param run_speed
/// @param gravity
/// @param  friction
/// @param  air_resistance
/// @param  bounce
/// @param  collision_object
/*
    This script is used to initialize a movement entity.
    You need to call this script in the CREATE EVENT of
    any object you would like using the movement scripts.
*/

// Input speeds
hsp[0] = 0;
vsp[0] = 0;

// Knockback speeds
hsp[1] = 0;
vsp[1] = 0;

movement = IDLE;
stance_timer = 0;
state_timer = 0;
run_speed = argument0;
grav = argument1; // Gravity amount (positive is down).
fric = argument2; // Friction amount (Only applies on ground for Platform Games).
air_res = argument3; // Friction for all movement( When gravity is not 0 it only applies horizontally)
bounce = argument4; // Bounce amount. 0 is no bounce, .5 is half velocity lost, 1 is no velocity lost.
collision_object = argument5 // The object that will be used for collisions.
collide = false;


horizontal_move_input = false;
vertical_move_input = false;
air_jump = 0;

smash_time = 0;
smash_time_max = 60;


right_input = 0;
left_input  = 0;
down_input  = 0;
up_input	= 0;
jump_input  = 0;
jump_release_input = 0;
action_input = 0;
