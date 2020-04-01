/// @description  Initialize the player
initialize_movement_entity(8,.5, .5, 0, 0, o_solid);



mining_speed = 1;



swipe_jump = 0;
swipe_dir = 0;
swipe_vel = 0;


RIGHT = 0;
UP = 1;
LEFT = 2;
DOWN = 3;


// #region Sprites

// sprite[RIGHT, MOVE]  = Woodcutter_run;
// sprite[UP, MOVE]     = Woodcutter_run;
// sprite[LEFT, MOVE]   = Woodcutter_run;
// sprite[DOWN, MOVE]   = Woodcutter_run;

// sprite[RIGHT, JUMP]  = Woodcutter_jump;
// sprite[UP, JUMP]     = Woodcutter_jump;
// sprite[LEFT, JUMP]   = Woodcutter_jump;
// sprite[DOWN, JUMP]   = Woodcutter_jump;

// sprite[RIGHT, ATTACK1]  = Woodcutter_attack1;
// sprite[UP, ATTACK1]     = Woodcutter_attack1;
// sprite[LEFT, ATTACK1]   = Woodcutter_attack1;
// sprite[DOWN, ATTACK1]  = Woodcutter_attack1;

// sprite[RIGHT, ATTACK2]  = Woodcutter_attack2;
// sprite[UP, ATTACK2]     = Woodcutter_attack2;
// sprite[LEFT, ATTACK2]   = Woodcutter_attack2;
// sprite[DOWN, ATTACK2]  = Woodcutter_attack2;

// sprite[RIGHT, ATTACK3]  = Woodcutter_attack3;
// sprite[UP, ATTACK3]     = Woodcutter_attack3;
// sprite[LEFT, ATTACK3]   = Woodcutter_attack3;
// sprite[DOWN, ATTACK3]  = Woodcutter_attack3;

// sprite[RIGHT, ATTACK_AIR]  = Woodcutter;
// sprite[UP, ATTACK_AIR]     = Woodcutter;
// sprite[LEFT, ATTACK_AIR]   = Woodcutter;
// sprite[DOWN, ATTACK_AIR]  = Woodcutter;

// sprite[RIGHT, ATTACK_MOVE]  = Woodcutter;
// sprite[UP, ATTACK_MOVE]     = Woodcutter;
// sprite[LEFT, ATTACK_MOVE]   = Woodcutter;
// sprite[DOWN, ATTACK_MOVE]  = Woodcutter;

// sprite[RIGHT, IDLE]  = Woodcutter_idle;
// sprite[UP, IDLE]     = Woodcutter_idle;
// sprite[LEFT, IDLE]   = Woodcutter_idle;
// sprite[DOWN, IDLE]  = Woodcutter_idle;

// sprite[RIGHT, DASH]  = Woodcutter_push;
// sprite[UP, DASH]     = Woodcutter_push;
// sprite[LEFT, DASH]   = Woodcutter_push;
// sprite[DOWN, DASH]  = Woodcutter_push;

// sprite[RIGHT, HURT]  = Woodcutter_hurt;
// sprite[UP, HURT]     = Woodcutter_hurt;
// sprite[LEFT, HURT]   = Woodcutter_hurt;
// sprite[DOWN, HURT]  = Woodcutter_hurt;

// sprite[RIGHT, GUARD]  = Woodcutter_push;
// sprite[UP, GUARD]     = Woodcutter_push;
// sprite[LEFT, GUARD]   = Woodcutter_push;
// sprite[DOWN, GUARD]  = Woodcutter_push;

// #endregion

#region Sprites

sprite[RIGHT, MOVE]  = HeroKnight_run;
sprite[UP, MOVE]     = HeroKnight_run;
sprite[LEFT, MOVE]   = HeroKnight_run;
sprite[DOWN, MOVE]   = HeroKnight_run;

sprite[RIGHT, JUMP]  = HeroKnight_jump;
sprite[UP, JUMP]     = HeroKnight_jump;
sprite[LEFT, JUMP]   = HeroKnight_jump;
sprite[DOWN, JUMP]   = HeroKnight_jump;

sprite[RIGHT, ATTACK1]  = HeroKnight_attack1;
sprite[UP, ATTACK1]     = HeroKnight_attack1;
sprite[LEFT, ATTACK1]   = HeroKnight_attack1;
sprite[DOWN, ATTACK1]  = HeroKnight_attack1;

sprite[RIGHT, ATTACK2]  = HeroKnight_attack2;
sprite[UP, ATTACK2]     = HeroKnight_attack2;
sprite[LEFT, ATTACK2]   = HeroKnight_attack2;
sprite[DOWN, ATTACK2]  = HeroKnight_attack2;

sprite[RIGHT, ATTACK3]  = HeroKnight_attack3;
sprite[UP, ATTACK3]     = HeroKnight_attack3;
sprite[LEFT, ATTACK3]   = HeroKnight_attack3;
sprite[DOWN, ATTACK3]  = HeroKnight_attack3;

sprite[RIGHT, ATTACK_AIR]  = HeroKnight;
sprite[UP, ATTACK_AIR]     = HeroKnight;
sprite[LEFT, ATTACK_AIR]   = HeroKnight;
sprite[DOWN, ATTACK_AIR]  = HeroKnight;

sprite[RIGHT, ATTACK_MOVE]  = HeroKnight;
sprite[UP, ATTACK_MOVE]     = HeroKnight;
sprite[LEFT, ATTACK_MOVE]   = HeroKnight;
sprite[DOWN, ATTACK_MOVE]   = HeroKnight;

sprite[RIGHT, IDLE]  = HeroKnight_idle;
sprite[UP, IDLE]     = HeroKnight_idle;
sprite[LEFT, IDLE]   = HeroKnight_idle;
sprite[DOWN, IDLE]   = HeroKnight_idle;

sprite[RIGHT, DASH]  = HeroKnight_roll;
sprite[UP, DASH]     = HeroKnight_roll;
sprite[LEFT, DASH]   = HeroKnight_roll;
sprite[DOWN, DASH]   = HeroKnight_roll;

sprite[RIGHT, HURT]  = HeroKnight_hurt;
sprite[UP, HURT]     = HeroKnight_hurt;
sprite[LEFT, HURT]   = HeroKnight_hurt;
sprite[DOWN, HURT]   = HeroKnight_hurt;

sprite[RIGHT, GUARD]  = HeroKnight_block;
sprite[UP, GUARD]     = HeroKnight_block;
sprite[LEFT, GUARD]   = HeroKnight_block;
sprite[DOWN, GUARD]   = HeroKnight_block;

#endregion
