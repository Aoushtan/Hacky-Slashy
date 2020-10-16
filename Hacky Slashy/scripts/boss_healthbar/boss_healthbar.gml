///boss_healthbar(object,name, count)
///@arg object 
///@arg name
///@arg count
//Draw health
var hp_x = 60;
var hp_y = 170;
var hp_y2 = 150;
var hp_width = 198;
var hp_height = 6;
var boss = argument0;
var name = argument1;
var count = argument2;
if (instance_exists(boss))
{
	draw_hp = lerp(draw_hp, boss.hp, 0.2);
	draw_max_hp = boss.max_hp;
}
else
{
	draw_hp = lerp(draw_hp, 0, 0.2);
}
var hp_percent = draw_hp / draw_max_hp;
if (count = 1)
{
	//hp bar
	draw_rectangle_color(hp_x, hp_y, hp_x + (hp_width * hp_percent), hp_y + hp_height,c_white,c_white,c_white,c_white,false);
	//outline top
	draw_line_width_color(hp_x - 1, hp_y - 1, hp_x + hp_width, hp_y - 1, 1, c_dkgray, c_dkgray);
	//outline bottom
	draw_line_width_color(hp_x - 1, hp_y + hp_height, hp_x + hp_width, hp_y + hp_height, 1, c_dkgray, c_dkgray);
	//outline left
	draw_line_width_color(hp_x - 1, hp_y - 1, hp_x - 1, hp_y + hp_height, 1, c_dkgray, c_dkgray);
	//outline right
	draw_line_width_color(hp_x + hp_width, hp_y - 1, hp_x + hp_width, hp_y + hp_height, 1, c_dkgray, c_dkgray);

	//Draw name
	if not instance_exists(boss) exit;
	var text = name;
	var start_x = hp_x + 5;;
	var start_y = hp_y - 15;
	var padding_x = 4;
	var padding_y = 4;
	draw_text(start_x + padding_x/2, start_y + padding_y, text);
}
else
{
	//hp bar
	draw_rectangle_color(hp_x, hp_y2, hp_x + (hp_width * hp_percent), hp_y2 + hp_height,c_white,c_white,c_white,c_white,false);
	//outline top
	draw_line_width_color(hp_x - 1, hp_y2 - 1, hp_x + hp_width, hp_y2 - 1, 1, c_dkgray, c_dkgray);
	//outline bottom
	draw_line_width_color(hp_x - 1, hp_y2 + hp_height, hp_x + hp_width, hp_y2 + hp_height, 1, c_dkgray, c_dkgray);
	//outline left
	draw_line_width_color(hp_x - 1, hp_y2 - 1, hp_x - 1, hp_y2 + hp_height, 1, c_dkgray, c_dkgray);
	//outline right
	draw_line_width_color(hp_x + hp_width, hp_y2 - 1, hp_x + hp_width, hp_y2 + hp_height, 1, c_dkgray, c_dkgray);

	//Draw name
	if not instance_exists(boss) exit;
	var text = name;
	var start_x = hp_x + 5;;
	var start_y = hp_y2 - 15;
	var padding_x = 4;
	var padding_y = 4;
	draw_text(start_x + padding_x/2, start_y + padding_y, text);
}