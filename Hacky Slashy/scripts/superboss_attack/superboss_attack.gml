set_state_sprite(s_super_boss_attack,0.75,0);

if (animation_hit_frame(5))
{
	audio_play_sound(a_slash,4,false);
	create_hitbox(x,y,self,s_super_boss_attack_hitbox1,3,4,5,image_xscale);
	x += sign(image_xscale) * slide;
}
if (animation_hit_frame(14))
{
	image_xscale = sign(o_skeleton.x - x);
	audio_play_sound(a_slash,4,false);
	create_hitbox(x,y,self,s_super_boss_attack_hitbox2,4,5,10,image_xscale);
	add_screenshake(5,5);
}
if (animation_hit_frame(15))
{
	audio_play_sound(a_big_hit,5,false);
}
if (animation_hit_frame(23))
{
	image_xscale = sign(o_skeleton.x - x);
	audio_play_sound(a_slash,4,false);
	create_hitbox(x,y,self,s_super_boss_attack_hitbox3,8,3,10,image_xscale);
}
if (animation_end())
{
	alarm[1] = 5;
	state = "Stall";
}