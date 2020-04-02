/// @description Insert description here
// You can write your code in this editor



rx = 16*9;
ry = 8*9;
draw_set_color(c_black);
draw_set_alpha(0.3);
	draw_rectangle(16*3,9*3,16*20,9*20,0);
		draw_set_alpha(1);
    var col = make_color_rgb(207,181,59);
        draw_set_color(col);
        //draw_roundrect_ext(16 * 4 - 1 ,9 * 4 ,16 * 10 ,9 * 6 ,10 ,5 ,0);
        draw_roundrect_ext(16*3 ,9*3 ,16 * (3 + 2) ,9 * (3 + 2) ,5,5,0);
		draw_set_color(c_white);
        draw_text(16*4,9*4,"Gold: " + string(gold));    
        draw_text(16*4,9*8,"Iron: " + string(iron));
		
		
		
		
        draw_text(16*4,9*12,"Exponential: " + string(exponent));
        draw_text(16*4,9*16,"Coefficient: " + string(coefficient));



//var xp = camera_get_view_x(view_camera[0]);
draw_set_color(c_red);
draw_text(200,220,"Buy Price   : " + string(5 * (o_player.mining_speed * 10)));
draw_text(200,240,"Mining Speed: " + string(o_farmer.mining_speed));


draw_set_color(c_orange);
draw_text(150,150,string(gold >= 5 * (o_farmer.mining_speed * 10)));

draw_set_color(c_red);