/// @description Init Variables and states
//runs parent create event
event_inherited();
run_speed = 4;
roll_speed = 6;
//Slow down animation speed
image_speed = 0.4;
//Default state
state = "Move";
//creating input obj
input = instance_create_layer(0,0,"Instances",o_input);