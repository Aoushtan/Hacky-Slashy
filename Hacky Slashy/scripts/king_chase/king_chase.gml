set_state_sprite(s_king_walk,0.75,0);
if (!instance_exists(o_skeleton)) { exit; }

image_xscale = sign(o_skeleton.x - x);
if (image_xscale == 0) { image_xscale = 1; }
var dist_to_player = point_distance(x,y,o_skeleton.x,o_skeleton.y);
//if within melee range
var action = "";
if (dist_to_player <= attack_range) {
	action = choose("Attack", "Attack", "AOE");
	state = action;
}
else
{
	var action2 = choose(1,2);
	if (action2 = 1)
	{
		move_and_collide(image_xscale * chase_speed, 0);
	}
	else
	{
		state = "Teleport";
	}
}
boss_knockback();