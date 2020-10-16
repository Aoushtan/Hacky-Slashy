///animation_hit_frame_range(low,high)
///@arg low int
///@arg high int
function animation_hit_frame_range(argument0, argument1) {
	var _low = argument0;
	var _high = argument1;

	return image_index >= _low && image_index <= _high;


}
