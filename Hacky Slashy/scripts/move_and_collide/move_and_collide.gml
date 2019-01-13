///move_and_collide(xspeed,yspeed)
///@arg xspeed int
///@arg yspeed int
var _xspeed = argument0;
var _yspeed = argument1;

//X movement and collision
if !(place_meeting(x+_xspeed, y, o_wall)) {
	x += _xspeed;
}
//Y movement and collision
if !(place_meeting(x, y+_yspeed, o_wall)) {
	y += _yspeed;
}