move_and_collide(knockback_speed, 0);
var knockback_friction = 0.5;
knockback_speed = approach(knockback_speed, 0, knockback_friction);