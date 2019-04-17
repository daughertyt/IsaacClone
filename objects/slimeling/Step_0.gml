/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
var i1=0;
var i2 = 1;
if instance_exists(playerCharacter){
	var playerTarget = instance_find(playerCharacter,0);
	if(self.x>playerTarget.x){
		i1=0;
		i2=5;
	}
	else{
		i1=7;
		i2=10;
	}
}

image_index = (max(i1,image_index%i2));