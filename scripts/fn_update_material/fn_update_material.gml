
var price = 5 * (o_player.mining_speed * 10);

if (o_mat_controller.iron > price)
{
	o_mat_controller.iron -= price;
	o_mat_controller.gold += price / 2;
}
	