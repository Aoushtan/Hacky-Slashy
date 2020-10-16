/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
event_inherited();

hp = 250;
max_hp = hp;
experience = 100;
state = "Chase";
chase_speed = 2;
attack_range = 75;

var camera_id = view_camera[0];
var view_width = camera_get_view_width(camera_id);
var view_height = camera_get_view_height(camera_id);
display_set_gui_size(view_width, view_height);

draw_hp = self.hp;
draw_max_hp = self.max_hp;
draw_set_font(f_one);