switch (state)
{
	case "Chase":
	{
		boss_chase();
		boss_knockback();
		break;
	}
	case "Attack":
	{
		set_state_sprite(s_boss_attack, 0.5, 0);
		if animation_hit_frame(7)
		{
			audio_play_sound(a_big_hit, 5, false);
			audio_play_sound(a_medium_hit, 4, false);
			create_hitbox(x,y,self,s_boss_attack_damage,10,4,20,image_xscale);
			add_screenshake(10,16);
		}
		if (animation_end())
		{
			state = "Stall";
			alarm[1] = 20;
		}
		boss_knockback();
		break;
	}
	case "Stall":
	{
		set_state_sprite(s_boss_idle, 0.3, 0);
		if alarm[1] <= 0
		{
			state = "Chase";
		}
		boss_knockback();
		break;
	}
	case "Death":
	{
		death_state(s_boss_die,0.25);
		break;
	}
}