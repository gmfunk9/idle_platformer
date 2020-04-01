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
enable_movement_platform_sprites(HeroKnight_idle, HeroKnight_run, HeroKnight_jump, .4);

// Move the entity
move_movement_entity();
