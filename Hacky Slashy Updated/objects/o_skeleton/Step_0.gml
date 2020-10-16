///@desc State machine
switch (state) {
	case "Move": {
		#region Move State
		var move = input.right - input.left;
		run_speed = 4;
		hsp = run_speed * move;
		vsp += grav;
		//Default sprite and image speed
		if (!on_ground())
		{
			set_state_sprite(s_skeleton_jump,0,3);
		}
		else
		{
			if (hsp == 0)
			{
				set_state_sprite(s_skeleton_idle,0.4,0);
			}
			else
			{
				set_state_sprite(s_skeleton_run,0.6,0);
				image_xscale = sign(hsp);
				if (animation_hit_frame(2) || animation_hit_frame(5))
				{
					audio_play_sound(a_footstep, 2, false);
				}
			}
			/*if (input.jump)
			{
				vsp = -10;
				audio_play_sound(a_footstep, 2, false);
			}*/
		}
			
		//Changing to roll state
		if (input.roll) && on_ground() {
			state = "Roll";
		}
		//Change to attack state
		if (input.attack) && on_ground() {
			state = "Attack1";
		}
		collide();
		#endregion
		break;
	}
	case "Roll": {
		#region Roll State
		set_state_sprite(s_skeleton_roll,0.7,0);
		mask_index = s_iframe;
		//Roll movement and collision
		hsp = sign(image_xscale) * roll_speed;
		//Check to see if the animation has ended and change state
		if (animation_end()) {
			state = "Move";
			mask_index = s_skeleton_mask;
		}
		collide();
		#endregion
		break;
	}
	case "Attack1": {
		#region Attack One State
		set_state_sprite(s_skeleton_attack_one,0.7,0);
		if (animation_hit_frame(0)) {
			audio_play_sound(a_slash, 3, false);
			create_hitbox(x,y,self,s_skeleton_attack_one_damage,3,4,5,image_xscale);
		}
		//Change to attack two state for combo
		if ((input.attack) && animation_hit_frame_range(2, 4) && on_ground())  {
			state = "Attack2";
		}
		if (animation_end()) { 
			state = "Move"; }
		#endregion
		break;
	}
	case "Attack2": {
		#region Attack Two State
		set_state_sprite(s_skeleton_attack_two,0.7,0);
		if (animation_hit_frame(1)) {
			audio_play_sound(a_slash, 3, false);
			create_hitbox(x,y,self,s_skeleton_attack_two_damage,3,4,5,image_xscale);
		}
		//Change to attack three state for combo
		if ((input.attack) && animation_hit_frame_range(2,4) && on_ground()) {
			state = "Attack3";
		}
		if (animation_end()) {
			state = "Move"; }
		#endregion
		break;
	}
	case "Attack3": {
		#region Attack Three State
		set_state_sprite(s_skeleton_attack_three,0.7,0);
		if (animation_hit_frame(2)) {
			audio_play_sound(a_slash, 3, false);
			create_hitbox(x,y,self,s_skeleton_attack_three_damage,4,4,8,image_xscale);
		}
		if (animation_end()) {
			state = "Move"; }
		#endregion
		break;
	}
	case "Knockback": {
		#region Knockback State
		knockback_state(s_skeleton_hitstun, 0.3, "Move");
		#endregion
		break;
	}
	
	default: {
		show_debug_message("State " + state + " does not exist.");
		state = "Move";
		break;
	}
}