function king_attack() {
	set_state_sprite(s_king_attack,0.75,0);
	var x_offset = 25;
	if (animation_hit_frame(9))
	{
		audio_play_sound(a_slash,4,false);
		create_hitbox(x,y,self,s_king_attack_hitbox1,1,1,2,image_xscale);
	}
	if (animation_hit_frame(18))
	{
		image_xscale = sign(o_skeleton.x - x);
	}
	if (animation_hit_frame(20))
	{
		audio_play_sound(a_slash,4,false);
		create_hitbox(x,y,self,s_king_attack_hitbox2,2,1,5,image_xscale);
	}
	if (animation_hit_frame(21))
	{
		create_hitbox(x,y,self,s_king_attack_hitbox3,5,4,10,image_xscale);
	}
	if (animation_hit_frame(34))
	{
		image_xscale = sign(o_skeleton.x - x);
	}
	if (animation_hit_frame(36))
	{
		audio_play_sound(a_slash,4,false);
		create_hitbox(x,y,self,s_king_attack_hitbox4,5,6,15,image_xscale);
	}
	if (animation_hit_frame(37))
	{
		audio_play_sound(a_big_hit,5,false);
		add_screenshake(10,10);
		var blast1 = instance_create_layer(x+(sign(image_xscale)*x_offset),y,"Instances",o_blast);
		create_hitbox(blast1.x,blast1.y,o_king,s_king_aoe_blast_hitbox,5,6,10,image_xscale);
	}
	if (animation_hit_frame(40))
	{
		var blast2 = instance_create_layer(x+(sign(image_xscale)*3*x_offset),y,"Instances",o_blast);
		create_hitbox(blast2.x,blast2.y,o_king,s_king_aoe_blast_hitbox,5,6,10,image_xscale);
		audio_play_sound(a_medium_hit,4,false);
		add_screenshake(5,3);
	}
	if (animation_hit_frame(43))
	{
		var blast3 = instance_create_layer(x+(sign(image_xscale)*5*x_offset),y,"Instances",o_blast);
		create_hitbox(blast3.x,blast3.y,o_king,s_king_aoe_blast_hitbox,5,6,10,image_xscale);
		audio_play_sound(a_medium_hit,4,false);
		add_screenshake(5,3);
	}
	if (animation_hit_frame(51))
	{
		audio_play_sound(a_slash,4,false);
		create_hitbox(x,y,self,s_king_attack_hitbox1,1,1,2,image_xscale);
	}
	if (animation_end())
	{
		var choice = choose("Stall", "AOE", "Teleport");
		if choice = "Stall"
		{
			alarm[1] = 5;
		}
		state = choice;
	}
	boss_knockback();


}
