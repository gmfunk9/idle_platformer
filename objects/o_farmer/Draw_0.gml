/// @description Insert description here
//draw_text(x,y-160, "stance_timer: " + string(stance_timer));
draw_self();
show_debug_overlay(1);


// if (left_input)
// 	draw_arrow(x-32,y-32,x-64,y-32,32);
// if (right_input)
// 	draw_arrow(x+32,y-32,x+64,y-32,32);





// draw_line_color( bbox_left, bbox_bottom, o_player.x, o_player.y, c_blue, c_blue);
// draw_line_color( bbox_right, bbox_bottom, o_player.x, o_player.y, c_red, c_red);
// draw_set_alpha(.5);
// draw_set_color(c_blue);
// draw_circle(x, y, 172, 0);
// draw_set_alpha(1);

// draw_set_color(c_white);
// var _X1 = x - 8;
// var _Y1 = y - 160;
// var _X2 = x + 160;
// var _Y2 = y - (160) + (font_size * 6) + (font_size / 2);

// #macro RECLOC _X1, _Y1, _X2, _Y2

// // draw_rectangle(_X1, _Y1, _X2, _Y2, 0);
// // draw_set_color(c_black);
// // draw_rectangle(_X1, _Y1, _X2, _Y2, 1);
// draw_rectangle(RECLOC,0);
// draw_set_color(c_black);
// draw_rectangle(RECLOC,1);	

// 	draw_set_color(c_black);
// 	draw_text(x,y-32,string(fps_real) + ":" + string(fps));
// 	draw_set_alpha(0.5);
// 	draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,c_red,c_red,c_red,c_red,1);
// 	draw_set_alpha(1);
	
	
// 	draw_text(_X1 + 2, _Y1, "stance_timer");
// 	draw_text(_X2 - 42, _Y1, ": " + string(stance_timer));
// 	draw_text(_X1 + 2, _Y1 + font_size, "state_timer");
// 	draw_text(_X2 - 42, _Y1 + font_size, ": " + string(state_timer));
// 	// draw_text(x,y-170, "state: " + string(state));
	
	
	
	
// 	switch (movement)
// 	{
// 		case IDLE: draw_text(_X1 + 12, _Y1 + font_size * 2,"IDLE");
// 				   draw_text(_X2 - 42, _Y1 + font_size * 2,": " + string(movement));
// 			break;
// 		case MOVE: draw_text(_X1 + 12, _Y1 + font_size * 2,"MOVE");
// 				   draw_text(_X2 - 42, _Y1 + font_size * 2,": " + string(movement));
// 			break;
// 		case JUMP: draw_text(_X1 + 12, _Y1 + font_size * 2,"JUMP");
// 				   draw_text(_X2 - 42, _Y1 + font_size * 2,": " + string(movement));

// 			break;
// 		case MINE: draw_text(_X1 + 12, _Y1 + font_size * 2,"MINE");
// 				   draw_text(_X2 - 42, _Y1 + font_size * 2,": " + string(movement));	
// 			break;
// 		default:   draw_text(_X1 + 12, _Y1 + font_size * 2,"NOPE        : " + string(movement));
// 		break;
// 	}
	
// 	switch (state)
// 	{
// 		case states.wander: draw_text(_X1 + 12, _Y1 + font_size * 3,"wander");
// 		    				draw_text(_X2 - 42, _Y1 + font_size * 3,": " + string(state));
// 			break;
// 		case states.mining: draw_text(_X1 + 12, _Y1 + font_size * 3,"mining");
// 		    				draw_text(_X2 - 42, _Y1 + font_size * 3,": " + string(state));
// 			break;
// 		case states.chase: draw_text(_X1 + 12, _Y1 + font_size * 3,"chase");
// 		    				draw_text(_X2 - 42, _Y1 + font_size * 3,": " + string(state));
// 			break;
// 		default: break;
// 	}
	
// 	draw_text(_X1, _Y1 + font_size * 4, "action_trigger");
// 	draw_text(_X2 - 42, _Y1 + font_size * 4, ": " + string(action_trigger));
// 	draw_text(_X1, _Y1 + font_size * 5, "action_input");
// 	draw_text(_X2 - 42, _Y1 + font_size * 5, ": " + string(action_input));

// 	draw_set_color(c_blue);
