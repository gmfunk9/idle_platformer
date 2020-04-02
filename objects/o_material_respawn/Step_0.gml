
if timer > 0
    timer--;
    
if timer <= 0
{
    var inst = instance_create_layer(choose(340,455,555),2080,"Instances", choose(o_ore_iron,o_ore_gold));
        if inst.material = "iron"
            inst.iron = choose(9 * o_farmer.mining_speed,12 * o_farmer.mining_speed,18 * o_farmer.mining_speed);
        if inst.material = "gold"
            inst.gold = choose(9 * o_farmer.mining_speed,12 * o_farmer.mining_speed,18 * o_farmer.mining_speed);
    

    timer = choose(500,750,1000);
}