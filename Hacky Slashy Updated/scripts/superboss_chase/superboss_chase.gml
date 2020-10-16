function superboss_chase() {
	set_state_sprite(s_super_boss_walk, 0.75, 0);
	if (!instance_exists(o_skeleton)) { exit; }

	image_xscale = sign(o_skeleton.x - x);
	if (image_xscale == 0) { image_xscale = 1; }
	var dist_to_player = point_distance(x,y,o_skeleton.x,o_skeleton.y);
	//if within melee range
	var action = "";
	if (dist_to_player <= attack_range) {
		action = choose("Attack", "Attack", "Attack", "Attack", "Spin", "Dash", "Jump", "Spin");
	}
	else
	{
		if (dist_to_player <= leap_range && dist_to_player > attack_range)
		{
			action = choose("Dash", "Jump", "Jump", "Leap", "Spin");
		}
		if (dist_to_player > leap_range)
		{
			if !place_meeting(x + (sign(image_xscale) * leap_range),y,o_wall)
			{
				action = choose("Dash", "Jump", "Jump", "Leap", "Leap")
			}
			else
			{
				action = choose("Dash", "Jump", "Jump", "Dash");
			}
		}
	}
	state = action;
	boss_knockback();


}
