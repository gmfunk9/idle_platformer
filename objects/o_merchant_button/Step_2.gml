/// @description Insert description here
// You can write your code in this editor
if !instance_exists(creator)
{
	instance_destroy();
} 
else 
{
	
	//button_height = o_merchant_shop.panel_height * .3;
	//button_width  = o_merchant_shop.panel_width * .3;
	
	
	//show_debug_message(button_width)
	//if button_width <= 32 button_width = 32;
	//if o_merchant_shop.panel_width * .3 <= 64  
	//	button_width = 64;
	//	button_height = 32;
	if o_merchant_shop.panel_width * .3 >= 128 
	{
		button_width = 128;
		button_height = 64;
	}
	else
	{
		button_width = 64;
		button_height = 32;
	}
	//show_debug_message(button_width)

}

	x = _x;
	y = _y;
