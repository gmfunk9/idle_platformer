// @description enable_action_attack(attack_input)


action_input = argument0;


if (action_input)
{
	switch(movement)
	{
		case IDLE:  action_attack_1();
					show_debug_message("ATK_1");
					movement = ATTACK1;
					image_index = 0;
					stance_timer = 25;
					break;

		default: action_attack_1();
				 break;
	}
}