/// @description move towards player
// You can write your code in this editor

if !(instance_exists(o_skeleton)) exit;

var dir = point_direction(x, y, o_skeleton.x, o_skeleton.y);
var acceleration = 0.25;
var max_speed = 6;
motion_add(dir, acceleration);
if speed > max_speed
{
	speed = max_speed;
}