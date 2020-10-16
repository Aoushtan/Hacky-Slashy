function superboss_dash() {
	set_state_sprite(s_super_boss_dash,0.75,0);
	var x_offset = 79;
	var y_offset = 76;

	if (place_meeting(x+dash_range+1,y,o_wall))
	{
		state = "Chase";
	}
	if (animation_hit_frame(0))
	{
		sprite_set_offset(s_super_boss_dash,x_offset,y_offset);
	}
	if (animation_hit_frame_range(1,5))
	{
		mask_index = s_iframe;
		x += sign(image_xscale) * dash_range / 20;
	}
	else
	{
		mask_index = s_super_boss_mask;
	}
	if (animation_hit_frame(6))
	{
		x += sign(image_xscale) * dash_range;
		sprite_set_offset(s_super_boss_dash,x_offset+dash_range,y_offset);
	}
	if (animation_end())
	{
		sprite_set_offset(s_super_boss_dash,x_offset,y_offset);
		set_state_sprite(s_super_boss_idle,0,0);
		state = "Chase";
	}
	boss_knockback();


}
