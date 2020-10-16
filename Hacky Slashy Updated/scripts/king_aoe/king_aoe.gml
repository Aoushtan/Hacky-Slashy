function king_aoe() {
	var x_offset = 25;
	set_state_sprite(s_king_aoe,0.75,0);

	if (animation_hit_frame(18))
	{
		audio_play_sound(a_big_hit,5,false);
		create_hitbox(x,y,self,s_king_aoe_blast_hitbox,4,6,5,image_xscale);
		add_screenshake(5,1);
	}
	if (animation_hit_frame(21))
	{
		audio_play_sound(a_medium_hit,5,false);
		var blast1 = instance_create_layer(x+x_offset,y,"Instances",o_blast);
		create_hitbox(blast1.x,blast1.y,o_king,s_king_aoe_blast_hitbox,4,6,5,image_xscale);
		var blast2 = instance_create_layer(x-x_offset,y,"Instances",o_blast);
		create_hitbox(blast2.x,blast2.y,o_king,s_king_aoe_blast_hitbox,4,6,5,image_xscale);
		add_screenshake(10,10);
	}

	if (animation_hit_frame(24))
	{
		audio_play_sound(a_medium_hit,5,false);
		var blast3 = instance_create_layer(x+(3*x_offset),y,"Instances",o_blast);
		create_hitbox(blast3.x,blast3.y,o_king,s_king_aoe_blast_hitbox,4,6,5,image_xscale);
		var blast4 = instance_create_layer(x-(3*x_offset),y,"Instances",o_blast);
		create_hitbox(blast4.x,blast4.y,o_king,s_king_aoe_blast_hitbox,4,6,5,image_xscale);
	}
	if (animation_hit_frame(27))
	{
		audio_play_sound(a_medium_hit,5,false);
		var blast5 = instance_create_layer(x+(5*x_offset),y,"Instances",o_blast);
		create_hitbox(blast5.x,blast5.y,o_king,s_king_aoe_blast_hitbox,4,6,5,image_xscale);
		var blast6 = instance_create_layer(x-(5*x_offset),y,"Instances",o_blast);
		create_hitbox(blast6.x,blast6.y,o_king,s_king_aoe_blast_hitbox,4,6,5,image_xscale);
	}
	if (animation_end())
	{
		audio_play_sound(a_medium_hit,5,false);
		var blast7 = instance_create_layer(x+(7*x_offset),y,"Instances",o_blast);
		create_hitbox(blast7.x,blast7.y,o_king,s_king_aoe_blast_hitbox,4,6,5,image_xscale);
		var blast8 = instance_create_layer(x-(7*x_offset),y,"Instances",o_blast);
		create_hitbox(blast8.x,blast8.y,o_king,s_king_aoe_blast_hitbox,4,6,5,image_xscale);
		set_state_sprite(s_king_idle,0.75,0);
		alarm[1] = 5;
		state = "Stall";
	}
	boss_knockback();


}
