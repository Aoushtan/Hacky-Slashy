/// knockback_state(knockback_sprite, knockback_resist, next_state)
/// @arg knockback_sprite
/// @arg knockback_resist
/// @arg next_state
function knockback_state(argument0, argument1, argument2) {

	var knockback_sprite = argument0;
	var knockback_resist = argument1;
	var next_state = argument2;


	set_state_sprite(knockback_sprite,0,0);
	image_xscale = -sign(knockback_speed);
	move_and_collide(knockback_speed, 0);
	knockback_speed = approach(knockback_speed, 0, knockback_resist);
	if (knockback_speed == 0) {
		state = next_state;
	}


}
