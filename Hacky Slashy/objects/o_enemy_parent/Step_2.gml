/// @description death check to drop exp

if hp < 0 && state != "Death" {
	state = "Death";
	repeat(irandom_range(experience-1,experience+1))
	{
		instance_create_layer(x+random_range(-4,4), y+random_range(-4,4), "Effects", o_experience);
	}
}
