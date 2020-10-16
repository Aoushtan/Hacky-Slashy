/// @description Init Variables and states
//runs parent create event
event_inherited();
run_speed = 0;
hsp = 0;
roll_speed = 6;
vsp = 0;
grav = 1;
//Slow down animation speed
image_speed = 0.4;
//Default state
state = "Move";
kills = 0;
level = 1;
experience = 0;
max_experience = 10;
strength = 25;
//creating input obj
input = instance_create_layer(0,0,"Instances",o_input);