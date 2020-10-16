/// @desc add_screenshake(magnitude,frames)
/// @arg intensity sets the strength of the shake (radius in pixels)
/// @arg duration sets the length of the shake in frames (60 = 1 second at 60fps)

if !(instance_exists(o_camera)) exit;

var intensity = argument0;
var duration = argument1;

with (o_camera)
{
	screenshake = intensity;
	alarm[0] = duration;
}