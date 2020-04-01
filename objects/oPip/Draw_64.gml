/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_line(push_x,push_y,drop_x,drop_y);

draw_circle(dev_mouse_x,dev_mouse_y,32,1);
draw_circle(dev_mouse_x,dev_mouse_y,128,1);
draw_circle(dev_mouse_x,dev_mouse_y,256,1);

draw_text(dev_mouse_x,dev_mouse_y-64,drag_dir);
draw_text(dev_mouse_x+64,dev_mouse_y-64,drag_vel);


draw_text(dev_mouse_x + 48, dev_mouse_y, dev_mouse_x);
draw_text(dev_mouse_x + 48, dev_mouse_y+12, dev_mouse_y);
