
var doubler = 0;
if o_mat_controller.gold >= 5 * (o_farmer.mining_speed * 10) 
{
	if (doubler)
		doubler = 0;
	 else
		 doubler++
	

	o_mat_controller.gold -= 5 * (o_farmer.mining_speed * 10);
	o_farmer.mining_speed = (o_farmer.mining_speed * 2) * (1 + doubler); // += argument0;

}