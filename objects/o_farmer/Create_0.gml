/// @description  Initialize the player
initialize_movement_entity(8,.5, .5, 0, 0, o_solid);
image_yscale = ( image_yscale/sprite_get_height( sprite_index )) * 48
//alarm[0] = 120; //right_input
//alarm[1] = 40; //left_input
//alarm[2] = 20; //jump_input

_choose = 0;
mining_speed = 2;
action_trigger = 0;

swipe_jump = 0;
swipe_dir = 0;
swipe_vel = 0;


RIGHT = 0;
UP = 1;
LEFT = 2;
DOWN = 3;

	font_size = 16;


 #region states enum
	
	enum states {
		idle,
		chase,
		wander,
		mining,
	}
	
	state = states.wander;
 #endregion

 #region Sprites

 sprite[RIGHT, IDLE]  = Woodcutter_idle;
 sprite[UP, IDLE]     = Woodcutter_idle;
 sprite[LEFT, IDLE]   = Woodcutter_idle;
 sprite[DOWN, IDLE]  = Woodcutter_idle;

 sprite[RIGHT, MOVE]  = Woodcutter_run;
 sprite[UP, MOVE]     = Woodcutter_run;
 sprite[LEFT, MOVE]   = Woodcutter_run;
 sprite[DOWN, MOVE]   = Woodcutter_run;

 sprite[RIGHT, JUMP]  = Woodcutter_jump;
 sprite[UP, JUMP]     = Woodcutter_jump;
 sprite[LEFT, JUMP]   = Woodcutter_jump;
 sprite[DOWN, JUMP]   = Woodcutter_jump;

 sprite[RIGHT, MINE]  = Woodcutter_attack1;
 sprite[UP, MINE]     = Woodcutter_attack1;
 sprite[LEFT, MINE]   = Woodcutter_attack1;
 sprite[DOWN, MINE]  = Woodcutter_attack1;
 
 sprite[RIGHT, ATTACK1]  = Woodcutter_attack1;
 sprite[UP, ATTACK1]     = Woodcutter_attack1;
 sprite[LEFT, ATTACK1]   = Woodcutter_attack1;
 sprite[DOWN, ATTACK1]  = Woodcutter_attack1;

 sprite[RIGHT, ATTACK2]  = Woodcutter_attack2;
 sprite[UP, ATTACK2]     = Woodcutter_attack2;
 sprite[LEFT, ATTACK2]   = Woodcutter_attack2;
 sprite[DOWN, ATTACK2]  = Woodcutter_attack2;

 sprite[RIGHT, ATTACK3]  = Woodcutter_attack3;
 sprite[UP, ATTACK3]     = Woodcutter_attack3;
 sprite[LEFT, ATTACK3]   = Woodcutter_attack3;
 sprite[DOWN, ATTACK3]  = Woodcutter_attack3;


 sprite[RIGHT, ATTACK_MOVE]  = Woodcutter;
 sprite[UP, ATTACK_MOVE]     = Woodcutter;
 sprite[LEFT, ATTACK_MOVE]   = Woodcutter;
 sprite[DOWN, ATTACK_MOVE]  = Woodcutter;

 //sprite[RIGHT, ATTACK_AIR]  = Woodcutter;
 //sprite[UP, ATTACK_AIR]     = Woodcutter;
 //sprite[LEFT, ATTACK_AIR]   = Woodcutter;
 //sprite[DOWN, ATTACK_AIR]  = Woodcutter;

 //sprite[RIGHT, DASH]  = Woodcutter_push;
 //sprite[UP, DASH]     = Woodcutter_push;
 //sprite[LEFT, DASH]   = Woodcutter_push;
 //sprite[DOWN, DASH]  = Woodcutter_push;

 //sprite[RIGHT, HURT]  = Woodcutter_hurt;
 //sprite[UP, HURT]     = Woodcutter_hurt;
 //sprite[LEFT, HURT]   = Woodcutter_hurt;
 //sprite[DOWN, HURT]  = Woodcutter_hurt;

 //sprite[RIGHT, GUARD]  = Woodcutter_push;
 //sprite[UP, GUARD]     = Woodcutter_push;
 //sprite[LEFT, GUARD]   = Woodcutter_push;
 //sprite[DOWN, GUARD]  = Woodcutter_push;



#endregion