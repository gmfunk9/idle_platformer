///// @description enable_action_mine

var action_input = argument0;

/// @description enable_action_mine
/// @param action_input
if (place_meeting(x,y,o_material)) 
{
	var o_mat = instance_place(x,y,o_material);	
	//show_debug_message("o_mat: " + string(o_mat));

	if ( action_input || device_mouse_check_button(0,mb_left) || movement == MINE )
    && !( device_mouse_check_button(1,mb_left) )
	{
        if (o_mat.has_material)
        {
        	enable_stance_switch(MINE);
			if (stance_timer == 0)
			{
				switch(o_mat.material)
				{
					case "iron":
			            o_mat_controller.iron += mining_speed;// / 60;
			            o_mat.iron -= mining_speed;// / 60;
						break;
					case "copper":
			            o_mat_controller.copper += mining_speed;// * .2 / 60;
			            o_mat.copper -= mining_speed;// * .2 / 60;
						break;		
					case "gold":			
			            o_mat_controller.gold += mining_speed;// * .2 / 60;
			            o_mat.gold -= mining_speed;// * .2 / 60;
						break;
				}
			}
		}	
	}		
}













//if (place_meeting(x,y,o_material)) 
//{
//	var o_mat = instance_place(x,y,o_material);	
//	show_debug_message("o_mat: " + string(o_mat));
//}

//	if ( keyboard_check(ord("A")) || device_mouse_check_button(0,mb_left) )
//    && !( device_mouse_check_button(1,mb_left) )
//	{
//        if o_material.iron > 0
//        {
//            o_mat_controller.iron += mining_speed / 60;
//            o_mat.iron -= mining_speed / 60;
//        }
//    }
//	if keyboard_check(ord("S")) || device_mouse_check_button(1,mb_left)
//    {
//        if o_material.gold > 0
//        {
//            o_mat_controller.gold += mining_speed * 2 / 60;
//            o_mat.gold -= mining_speed * 2 / 60;
//        }
//    }

