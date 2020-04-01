/// @description Insert description here
// You can write your code in this editor


draw_self();

//if iron > 0
//	draw_text(x - 32,y - 48, "Iron " + string(iron) );

//if gold > 0
//	draw_text(x - 32,y - 32, "gold " + string(gold) );



if (has_material) {
	draw_text(x -32, y - 48, material);
}