/// @description

/*


aspect_ratio = display_get_width()/display_get_height();
view_height= 250;
view_width=round(view_height*aspect_ratio);

 
if(view_width & 1) view_width++;

if(view_height & 1) view_height++;

max_window_scale = min(floor(display_get_width()/view_width),floor(display_get_height()/view_height));

if(view_height * max_window_scale == display_get_height())

    max_window_scale--;

window_scale = max_window_scale;

window_set_size(view_width*window_scale,view_height*window_scale);

alarm[0]=1;

surface_resize(application_surface,view_width*window_scale,view_height*window_scale); 


room_goto(r_test);