set_state_sprite(s_super_boss_spin_attack,0.75,0);
var x_offset = 79;
var y_offset = 76;

if (place_meeting(x+spin_range+1,y,o_wall))
{
	state = "Chase";
}
if (animation_hit_frame(0))
{
	sprite_set_offset(s_super_boss_spin_attack, x_offset, y_offset);
}
if (animation_hit_frame(9))
{
	x += sign(image_xscale) * (spin_range / 4);
	audio_play_sound(a_slash,3,false);
	create_hitbox(x,y,self,s_super_boss_spin_attack_hitbox1,5,3,5,image_xscale);
}
if(animation_hit_frame(12))
{
	x += sign(image_xscale) * (spin_range / 4);
	audio_play_sound(a_slash,3,false);
	create_hitbox(x,y,self,s_super_boss_spin_attack_hitbox2,5,3,5,image_xscale);
}
if(animation_hit_frame(15))
{
	x += sign(image_xscale) * (spin_range / 4);
	audio_play_sound(a_slash,3,false);
	create_hitbox(x,y,self,s_super_boss_spin_attack_hitbox3,5,4,5,image_xscale);
}
if(animation_hit_frame(19))
{
	x += sign(image_xscale) * (spin_range / 4);
	audio_play_sound(a_slash,3,false);
	create_hitbox(x,y,self,s_super_boss_spin_attack_hitbox4,8,3,5,image_xscale);
}
if (animation_hit_frame_range(9,22))
{
	mask_index = s_iframe;
}
else
{
	mask_index = s_super_boss_mask;
}
if(animation_hit_frame(22))
{
	x += (sign(image_xscale) * spin_range);
	sprite_set_offset(s_super_boss_spin_attack, x_offset + spin_range, y_offset);
}
if(animation_end())
{
	sprite_set_offset(s_super_boss_spin_attack, x_offset, y_offset);
	set_state_sprite(s_super_boss_idle,0,0);
	alarm[1] = 10;
	state = "Stall";
}
boss_knockback();