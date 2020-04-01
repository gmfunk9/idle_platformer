/// @description Insert description here
// You can write your code in this editor
draw_self();
show_debug_overlay(1);
draw_set_color(c_black);
draw_text(x-32,y+16,string(fps_real) + ":" + string(fps));

_var = motion_predict(self,240);
draw_text(x,y-200,_var);


switch (movement)
{
	case IDLE: draw_text(x,y-128,"IDLE: " + string(movement));
		break;
	case MOVE: draw_text(x,y-128,"MOVE: " + string(movement));
		break;
	case JUMP: draw_text(x,y-128,"JUMP: " + string(movement));
		break;
	default: break;
}


draw_set_alpha(0.5);
draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,c_red,c_red,c_red,c_red,1);
draw_set_alpha(1);