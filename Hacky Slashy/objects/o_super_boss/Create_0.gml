/// @description

// Inherit the parent event
event_inherited();

state = "Spawn";
hp = 250;
max_hp = hp;
chase_speed = 2;
experience = 100;
attack_range = 50;
leap_range = 112;
dash_range = 60;
jump_range = 93;
slide = 10;
spin_range = 34;

audio_stop_sound(a_music);
audio_play_sound(a_boss_music,5,true);

var camera_id = view_camera[0];
var view_width = camera_get_view_width(camera_id);
var view_height = camera_get_view_height(camera_id);
display_set_gui_size(view_width, view_height);

draw_hp = self.hp;
draw_max_hp = self.max_hp;
draw_set_font(f_one);