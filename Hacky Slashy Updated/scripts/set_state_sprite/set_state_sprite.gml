///set_state_sprite(sprite,speed,index)
///@arg sprite
///@arg speed
///@arg index
function set_state_sprite(argument0, argument1, argument2) {
	var _sprite = argument0;
	var _img_speed = argument1;
	var _img_index = argument2;

	if (sprite_index != _sprite) {
		sprite_index = _sprite;
		image_speed = _img_speed;
		image_index = _img_index;
	}


}
