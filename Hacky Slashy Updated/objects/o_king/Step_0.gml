/// @description 
if (!instance_exists(o_skeleton)) { exit; }
switch (state)
{
	case "Chase":
	{
		king_chase();
		break;
	}
	case "Stall":
	{
		set_state_sprite(s_king_idle,0.75,0);
		if (alarm[1] <= 0)
		{
			state = "Chase";
		}
		boss_knockback();
		break;
	}
	case "Teleport":
	{
		king_teleport();
		break;
	}
	case "AOE":
	{
		king_aoe();
		break;
	}
	case "Attack":
	{
		king_attack();
		break;
	}
	case "Death":
	{
		death_state(s_king_death,0.75);
		break;
	}
}