function superboss_leap() {
	set_state_sprite(s_super_boss_leap,0.75,0);
	var x_offset = 79;
	var y_offset = 108;
	if (place_meeting(x+leap_range+1,y,o_wall))
	{
		state = "Chase";
	}
	if (animation_hit_frame(0))
	{
		sprite_set_offset(s_super_boss_leap, x_offset, y_offset);
	}
	//jump sound
	if (animation_hit_frame(8))
	{
		audio_play_sound(a_footstep, 4,false);
	}
	//hammer throw
	if (animation_hit_frame(20))
	{
		audio_play_sound(a_big_hit, 5, false);
		audio_play_sound(a_medium_hit,4,false);
		create_hitbox(x + (sign(image_xscale) * leap_range), y, self, s_super_boss_leap_hitbox,3,4,10,image_xscale);
		add_screenshake(10,10);
	}
	if (animation_hit_frame_range(8,25))
	{
		mask_index = s_iframe;
	}
	else
	{
		mask_index = s_super_boss_mask;
	}
	//stab attack
	if (animation_hit_frame(26))
	{
		x += (sign(image_xscale) * leap_range);
		sprite_set_offset(s_super_boss_leap, x_offset + leap_range, y_offset);
		audio_play_sound(a_big_hit,5,false);
		audio_play_sound(a_slash,4,false);
		create_hitbox(x, y, self, s_super_boss_leap_hitbox2,10,4,15,image_xscale);
		add_screenshake(10,16);
	}
	if (animation_end())
	{
		sprite_set_offset(s_super_boss_leap, x_offset, y_offset);
		set_state_sprite(s_super_boss_idle,0,0);
		alarm[1] = 10;
		state = "Stall";
	}
	boss_knockback();


}
