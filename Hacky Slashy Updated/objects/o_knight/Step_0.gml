switch (state) {
	case "Chase": {
		#region Chase State
		set_state_sprite(s_knight_walk, 0.4, 0);
		chase_state();
		#endregion
		break;
	}
	case "Attack": {
		#region Attack State
		set_state_sprite(s_knight_attack, 0.6, 0);
		if (animation_hit_frame(4)) {
			audio_play_sound(a_slash, 3, false);
			create_hitbox(x,y,self,s_knight_attack_damage,4,4,10,image_xscale);
		}
		if (animation_end()) {
			state = "Chase"; }
		#endregion
		break;
	}
	case "Knockback": {
		#region Knockback State
		knockback_state(s_knight_hitstun, 0.3, "Chase");
		#endregion
		break;
	}
	case "Death":
	{
		death_state(s_knight_die,0.25);
		break;
	}
	default: {
		show_debug_message("State " + state + " does not exist.");
		state = "Chase";
		break;
	}
		
}