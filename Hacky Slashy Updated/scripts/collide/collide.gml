function collide() {
	//Horizontal collision
	//Check if the desired position collides with the object oWall
	if (place_meeting(x+hsp,y,o_wall))
	{
		//check to see if there is NOT a collision to move us as close to the object as possible
		//Sign either says 1 or -1 depending if the value is positive or negative
		while (!place_meeting(x+sign(hsp),y,o_wall))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}
	x += hsp;

	//Vertical collision
	//Same idea as above
	if (place_meeting(x,y+vsp,o_wall))
	{
		while (!place_meeting(x,y+sign(vsp),o_wall)){
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	y += vsp;


}
