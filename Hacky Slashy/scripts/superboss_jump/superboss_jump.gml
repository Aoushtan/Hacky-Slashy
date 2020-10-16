set_state_sprite(s_super_boss_jump,0.75,0);
var x_offset = 79;
var y_offset = 76;
if (place_meeting(x+jump_range+1,y,o_wall))
{
	state = "Chase";
}

if (animation_hit_frame(0))
{
	sprite_set_offset(s_super_boss_jump, x_offset, y_offset);
}
if (animation_hit_frame(7))
{
	audio_play_sound(a_footstep, 3, false);
}
if (animation_hit_frame_range(7,14))
{
	mask_index = s_iframe;
}
else
{
	mask_index = s_super_boss_mask;
}
if (animation_hit_frame(15))
{
	x += (sign(image_xscale) * jump_range);
	sprite_set_offset(s_super_boss_jump, x_offset + jump_range, y_offset);
	audio_play_sound(a_big_hit, 5 ,false);
	create_hitbox(x,y,self,s_super_boss_jump_hitbox,5,4,10,image_xscale);
	add_screenshake(10,10);
}
if (animation_end())
{
	sprite_set_offset(s_super_boss_jump, x_offset, y_offset);
	set_state_sprite(s_super_boss_idle,0,0);
	alarm[1] = 5;
	state = "Stall";
}
boss_knockback();