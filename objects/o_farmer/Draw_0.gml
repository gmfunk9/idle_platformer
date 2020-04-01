/// @description Insert description here
// You can write your code in this editor
show_debug_overlay(1);
draw_set_color(c_black);
draw_text(x,y-32,string(fps_real) + ":" + string(fps));
draw_self();
draw_set_alpha(0.5);
draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,c_red,c_red,c_red,c_red,1);
draw_set_alpha(1);

draw_line_color( bbox_left, bbox_bottom, o_player.x, o_player.y, c_blue, c_blue);
draw_line_color( bbox_right, bbox_bottom, o_player.x, o_player.y, c_red, c_red);
draw_set_alpha(.5);
draw_set_color(c_blue);
draw_circle(x, y, 150, 0);
draw_set_alpha(1);
