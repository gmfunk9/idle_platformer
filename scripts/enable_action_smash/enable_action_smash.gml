var jump_height = argument[0]; // Jump height (Should be a positive value)
var right_input = argument[1]; // The right input
var left_input = argument[2]; // The left input
var jump_input = argument[3]; // The jump input
var jump_release_input = argument[4]; // The jump release input (This is used to allow controlled jump height)

//var jump_height = 0;
//var right_input = 0;
//var left_input = 0;
//var jump_input =0;
//var jump_release_input = 0;





if keyboard_check_pressed(left_input) 
{	
	smash_time = smash_time_max;
    show_debug_message("smash_time " + string(smash_time));
}	

if smash_time > 0 
{
	smash_time -= 1;	
	show_debug_message("smash_time " + string(smash_time));
}
