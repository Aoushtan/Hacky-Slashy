/// @description 

var enemy_count = instance_number(o_enemy_parent);

if (instance_exists(o_skeleton) && enemy_count < o_skeleton.kills / 4)
{
	if (enemy_count > (5 + random_range(o_skeleton.level-1, o_skeleton.level+1))) || instance_exists(o_super_boss)
	{
		exit;
	}
	var enemy = choose(o_knight, o_crow, o_crow);
	if o_skeleton.kills > 20 && !instance_exists(o_boss)
	{
		enemy = choose(o_knight, o_knight, o_crow, o_crow, o_boss);
	}
	if o_skeleton.kills > 50 && !instance_exists(o_super_boss)
	{
		enemy = choose(o_super_boss, o_knight, o_knight, o_crow, o_crow, o_boss, o_boss);
	}
	var new_x = random_range(220, room_width - 220);
	while (point_distance(new_x, 0, o_skeleton.x, 0) < 220)
	{
		new_x = random_range(220, room_width - 220);
	}
	instance_create_layer(new_x, o_skeleton.y, "Instances", enemy);
}

