/// Approach(a, b, amount)
/// @desc Approach(a, b, amount)
/// @param a current value
/// @param b target value
/// @param amount amount moved
function approach(argument0, argument1, argument2) {

	// Examples
	// speed = Approach(speed, max_speed, acceleration);
	// hp = Approach(hp, 0, damage_amount);
	// hp = Approach(hp, max_hp, heal_amount);
	// x = Approach(x, target_x, move_speed);
	// y = Approach(y, target_y, move_speed);

	var a = argument0;
	var b = argument1;
	var amount = argument2;

	if (a < b)
	{
		a += amount;
		if (a > b)
		{
			return b;
		}
	}
	else
	{
		a -= amount;
		if (a < b)
		{
			return b;
		}
	}
	return a;


}
