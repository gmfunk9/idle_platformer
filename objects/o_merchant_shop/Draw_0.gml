	/// @description Insert description here
// You can write your code in this editor


draw_sprite_stretched(s_menu_panel,1,panel_top_left_x,panel_top_left_y,panel_width,panel_height);



if panel_width > panel_max_width || panel_width == panel_max_width
{
	draw_set_font(font_big);

}
else
{
	draw_set_font(font_small)

}

//draw_sprite_stretched(s_menu_panel,
//					  1,
					  
					  
//draw_set_color(c_blue);
//draw_rectangle(panel_top_left_x + panel_border_x,
//               panel_top_left_y ,
//               panel_top_left_x + offset_x,
//               panel_top_left_y+100,
//               0);
			   
			   
//draw_set_color(c_green);
//draw_rectangle(panel_top_left_x + panel_border_x + offset_x,
//               panel_top_left_y ,
//               panel_top_left_x + (offset_x * 2),
//               panel_top_left_y+100,
//               0);

//draw_set_color(c_green);
//draw_rectangle(panel_top_left_x + panel_border_x + (offset_x * 2),
//               panel_top_left_y ,
//               panel_top_left_x + (offset_x * 3),
//               panel_top_left_y+100,
//               0);

//draw_set_color(c_green);
//draw_rectangle(panel_top_left_x + panel_border_x + (offset_x * 3),
//               panel_top_left_y ,
//               panel_top_left_x + (offset_x * 4),
//               panel_top_left_y+100,
//               0);

/*
draw_set_color(c_red);
draw_rectangle( x1+12,
				y1+12+window_h/2,
				x2-12,
				y2-12,
				1);
				
			
			
//TOP_LEFT
draw_set_color(c_white);
    draw_rectangle(x1+12,y1+12+window_h/2,x1+12+32,y1+12+window_h/2+32,0);
draw_set_color(c_black);
    draw_point(panel_top_left_x,panel_top_left_y);

//TOP_RIGHT
draw_set_color(c_white);
    draw_rectangle(x2-12-32,y1+12+window_h/2,x2-12-32+32,y1+12+window_h/2+32,0);
draw_set_color(c_black);
    draw_point(panel_top_right_x,panel_top_right_y);

//BOTTOM_LEFT
draw_set_color(c_white);
    draw_rectangle(x1+12,y2-12-32,x1+12+32,y2-12-32+32,0);
draw_set_color(c_black);
    draw_point(panel_bot_left_x,panel_bot_left_y);

//BOTTOM_RIGHT
draw_set_color(c_white);
    draw_rectangle(x2-12-32,y2-12-32,x2-12-32+32,y2-12-32+32,0);
draw_set_color(c_black);
    draw_point(panel_bot_right_x,panel_bot_right_y);
