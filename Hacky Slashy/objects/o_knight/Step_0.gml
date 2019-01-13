switch (state) {
	case "Chase": {
		#region Chase State
		set_state_sprite(s_knight_walk, 0.4, 0);
		//see if the player exists
		if (!instance_exists(o_skeleton)) {
			break; }
		//set xscale and make sure it isnt 0
		image_xscale = sign(o_skeleton.x - x);
		if (image_xscale == 0) {
			image_xscale = 1; }
		//chase the player
		var _direction_facing = image_xscale;
		var _dist_to_player = point_distance(x,y,o_skeleton.x, o_skeleton.y);
		if (_dist_to_player <= attack_range) {
			state = "Attack";
		}
		else {
			move_and_collide(_direction_facing * chase_speed, 0);
		}
		#endregion
		break;
	}
	case "Attack": {
		#region Attack State
		set_state_sprite(s_knight_attack, 0.6, 0);
		if (animation_hit_frame(4)) {
			create_hitbox(x,y,self,s_knight_attack_damage,4,4,10,image_xscale);
		}
		if (animation_end()) {
			state = "Chase"; }
		#endregion
		break;
	}
}