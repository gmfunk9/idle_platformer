/// @description fn_gui_create_button( x, y, _x, _y, text, icon, function*, function_arg0*, function_arg1*, function_arg2*, function_arg3*, function_arg4*, function_arg5* )
/// @param  x
/// @param  y
/// @param  width
/// @param  height
/// @param  text
/// @param  icon
/// @param  function*
/// @param  function_arg0*
/// @param  function_arg1*
/// @param  function_arg2*
/// @param  function_arg3*
/// @param  function_arg4*
/// @param  function_arg5*

// returns the object ID

var inst = instance_create_depth(argument[0], argument[1],-2, o_merchant_button);

inst._x = argument[2];
inst._y = argument[3];
inst.text = argument[4];
inst.icon = argument[5];
inst.creator = id;

if( argument_count > 6 ){
	inst.targetScript = argument[6];
}

for (var i=7; i<argument_count; i++){
    inst.targetScriptArgs[i-7] = argument[i];
};


return inst;