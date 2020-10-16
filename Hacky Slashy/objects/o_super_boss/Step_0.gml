/// @description 
if (!instance_exists(o_skeleton)) { exit; }
switch (state)
{
	case "Spawn":
	{
		#region spawn state
		set_state_sprite(s_super_boss_taunt,0.75,0);
		image_xscale = sign(o_skeleton.x - x);
		if (animation_end())
		{
			state = "Leap";
		}
		#endregion
		break;
	}
	case "Chase":
	{
		#region Chase state
		superboss_chase();
		#endregion
		break;
	}
	case "Leap":
	{
		#region Leap state
		superboss_leap();
		#endregion
		break;
	}
	case "Jump":
	{
		#region Jump State
		superboss_jump();
		#endregion
		break;
		
	}
	case "Stall":
	{
		#region Stall State
		set_state_sprite(s_super_boss_idle,0.75,0);
		if (alarm[1] <= 0)
		{
			state = "Chase";
		}
		boss_knockback();
		#endregion
		break;
	}
	case "Attack":
	{
		#region Attack state
		superboss_attack();
		#endregion
		break;
	}
	case "Spin":
	{
		#region Spin state
		superboss_spin();
		#endregion
		break;
	}
	case "Dash":
	{
		#region Dash state
		superboss_dash();
		#endregion
		break;
	}
	case "Death":
	{
		#region Death State
		death_state(s_super_boss_death,0.75);
		audio_stop_sound(a_boss_music);
		#endregion
		break;
	}
	default: {
		show_debug_message("State " + state + " does not exist.");
		state = "Chase";
		break;
	}
}