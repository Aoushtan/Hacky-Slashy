set_state_sprite(s_king_teleport,0.75,0);
image_xscale = sign(o_skeleton.x - x);
var choice = choose(1,2);
var x_offset = 25;
if (animation_hit_frame_range(6,12))
{
	mask_index = s_iframe;
}
else
{
	mask_index = s_king_mask;
}
if (place_meeting(o_skeleton.x + (sign(image_xscale) * (x_offset+1)),o_skeleton.y,o_wall))
{
	choice = 2;
}
if (place_meeting(o_skeleton.x + (-sign(image_xscale) * (2*x_offset+1)),o_skeleton.y,o_wall))
{
	choice = 1;
}
if (choice = 1)
{
	if (animation_hit_frame(8))
	{
		x = (sign(image_xscale) * x_offset) + o_skeleton.x;
	}
	if (animation_end())
	{
		state = choose("AOE", "Chase");
	}
}
else
{
	if (animation_hit_frame(8))
	{
		x = (-sign(image_xscale) * (2*x_offset)) + o_skeleton.x;
	}
	if (animation_end())
	{
		state = choose("AOE", "Attack", "Chase");
	}
}