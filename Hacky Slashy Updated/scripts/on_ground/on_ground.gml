function on_ground() {
	if (place_meeting(x,y+1,o_wall))
	{
		return true;
	}
	else
	{
		return false;
	}



}
