/// @description Insert description here
// You can write your code in this editor
draw_self();


if distance_to_object(o_player) < 12 
{
	var merchant_string = "PRES SPACE || 2 FINGER 2 SHOP";

draw_text(x - 4 * string_length(merchant_string),y - 32,merchant_string);
} 
else 
{
		draw_text(x,y-32,"Merchant");
}

