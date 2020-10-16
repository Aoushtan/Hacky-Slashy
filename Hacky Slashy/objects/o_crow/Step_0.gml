/// @description States

switch (state)
{
	case "Chase":
	{
		if !(instance_exists(o_skeleton)) exit;
		
		if (place_meeting(x, y, o_skeleton) && attacked = false && o_skeleton.state != "Roll")
		{
			create_hitbox(x,y,self,sprite_index,knockback,1,damage,image_xscale);
			attacked = true;
		}
		if (attacked)
		{
			vspeed = -1;
		}
		break;
	}
	case "Death":
	{
		repeat(6)
		{
			instance_create_layer(x + random_range(-4,4), y - (sprite_height/2) + random_range(-4,4),"Effects", o_feather);
		}
		instance_destroy();
		break;
	}
	default:
	{
		show_debug_message("State " + state + " does not exist.");
		state = "Chase";
		break;
	}
}