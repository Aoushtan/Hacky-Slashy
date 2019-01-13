///@desc State machine
switch (state) {
	case "Move": {
		#region Move State
		//Right movement
		if (input.right) {
			move_and_collide(run_speed,0);
			sprite_index = s_skeleton_run;
			image_xscale = 1;
			image_speed = 0.6;
		}
		//Left movement
		if (input.left) {
			move_and_collide(-run_speed,0);
			sprite_index = s_skeleton_run;
			image_xscale = -1;
			image_speed = 0.6;
		}
		//Default sprite and image speed
		if (!input.right) && (!input.left) {
			sprite_index = s_skeleton_idle;
			image_speed = 0.4;
		}
		//Changing to roll state
		if (input.roll) {
			state = "Roll";
		}
		//Change to attack state
		if (input.attack) {
			state = "Attack1";
		}
		#endregion
		break;
	}
	case "Roll": {
		#region Roll State
		set_state_sprite(s_skeleton_roll,0.7,0);
		//Roll movement and collision
		move_and_collide(sign(image_xscale)*roll_speed,0)
		//Check to see if the animation has ended and change state
		if (animation_end()) {
			state = "Move";
		}
		#endregion
		break;
	}
	case "Attack1": {
		#region Attack One State
		set_state_sprite(s_skeleton_attack_one,0.7,0);
		if (animation_hit_frame(0)) {
			create_hitbox(x,y,self,s_skeleton_attack_one_damage,4,4,5,image_xscale);
		}
		//Change to attack two state for combo
		if ((input.attack) && animation_hit_frame_range(2, 4))  {
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
			create_hitbox(x,y,self,s_skeleton_attack_two_damage,4,4,5,image_xscale);
		}
		//Change to attack three state for combo
		if ((input.attack) && animation_hit_frame_range(2,4)) {
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
			create_hitbox(x,y,self,s_skeleton_attack_three_damage,4,4,8,image_xscale);
		}
		if (animation_end()) {
			state = "Move"; }
		#endregion
		break;
	}
}