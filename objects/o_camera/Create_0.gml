base_width = 640;
base_height = 360;
width = browser_width;
height = browser_height;


//fn_canvas_fullscreen(base_size);


////room_goto(r_test);

 //camera that follows the player
view_enabled = true;
view_visible[0] = true;
view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = 640*2;
view_hport[0] = 360*2;
cam = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, o_player, -1, -1, 1000, 1000);
surface_resize(application_surface, 640*2, 360*2	);
window_set_size(view_wport[0],view_hport[0]);

//resize_canvas(width,height)

fn_canvas_fullscreen(640);
//window_set_size(2560,1440);
//window_set_position(2560,0);