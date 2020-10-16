///animation_hit_frame(frame)
///@arg frame
function animation_hit_frame(argument0) {
	var _frame = argument0;
	var _range = image_speed * (sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps));
	return image_index >= _frame && image_index < _frame + _range;


}
