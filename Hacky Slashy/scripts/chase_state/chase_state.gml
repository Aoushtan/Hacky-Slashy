//see if the player exists
if (!instance_exists(o_skeleton)) { exit; }
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