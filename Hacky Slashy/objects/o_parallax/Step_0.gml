/// @description Parallax effect on backgrounds
//stop parallx if player dies to avoid error
if not instance_exists(o_camera)	exit;

layer_x("GravesCloseBackground", o_camera.x / 2.5);
layer_x("GravesFarBackground", o_camera.x / 1.8);
layer_x("CloudsBackground", o_camera.x / 1.2);