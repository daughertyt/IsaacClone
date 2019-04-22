/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if (self.violentDeath==1){
	ds_list_set(global.livingChars,1,0);

	if (ds_list_find_value(global.livingChars,1)==1){
		instance_create_depth(300,300,0,playerCharacter1);
	}
	else if (ds_list_find_value(global.livingChars,2)==1){
		instance_create_depth(300,300,0,playerCharacter2);
	}
	else if (ds_list_find_value(global.livingChars,3)==1){
		instance_create_depth(300,300,0,playerCharacter3);
	}
	else{
		global.resetRooms=false;
		instance_destroy(global.loadScreen);
	}
}