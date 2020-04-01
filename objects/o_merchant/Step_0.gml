 /// @description Insert description here
// You can write your code in this editor


//if distance_to_object(o_player) < 12 
if ( keyboard_check(vk_space) || device_mouse_check_button(1,mb_left) )
&& ( distance_to_object(o_player) < 12 )
{
	active = true;	
}
 else 
{
	active = false;
}

if (active) 
{
	if !( instance_exists(o_merchant_shop) ) 
    {
		instance_create_layer(x,y,"layer_GUI",o_merchant_shop);
		show_debug_message("o_merchant_shop created");
	}
}
 else 
{
	if ( instance_exists(o_merchant_shop) ) 
    {
		instance_destroy(o_merchant_shop);
		show_debug_message("o_merchant_shop destroy");
	}
}

