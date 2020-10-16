set_state_sprite(s_boss_walk, 0.3, 0);
//see if the player exists
if (!instance_exists(o_skeleton)) { exit; }
//set xscale and make sure it isnt 0

//chase the player
var _direction_facing = image_xscale;
var _dist_to_player = point_distance(x,y,o_skeleton.x, o_skeleton.y);
if (_dist_to_player <= attack_range && _dist_to_player > backup_range) {
	state = "Attack";
}
if _dist_to_player > attack_range
{
	image_xscale = sign(o_skeleton.x - x);
	if (image_xscale == 0) {
		image_xscale = 1; }
	move_and_collide(_direction_facing * chase_speed, 0);
}
if _dist_to_player < backup_range
{
	if (_direction_facing != sign(o_skeleton.x - x))
	{
		image_xscale = sign(o_skeleton.x - x);
		if (image_xscale == 0) {
			image_xscale = 1; }
	}
	move_and_collide(-_direction_facing * chase_speed, 0);
}