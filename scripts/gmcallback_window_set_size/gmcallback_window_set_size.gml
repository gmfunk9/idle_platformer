/// @func gmcallback_window_set_size(args_json)
/// @arg args_json

var args_map = json_decode(argument0);

if(ds_exists(args_map, ds_type_map)) {
    var w = args_map[? "w"],
        h = args_map[? "h"],
        xx = args_map[? "x"],
        yy = args_map[? "y"];
    if(!is_undefined(w) and !is_undefined(h) and !is_undefined(xx) and !is_undefined(yy)) {
        view_wport[0] = w;
        view_hport[0] = h;
        window_set_size(w,h);
        window_set_position(xx,yy);
        surface_resize(application_surface,w,h);
    }
    ds_map_destroy(args_map);
}