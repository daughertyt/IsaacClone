/// @description Insert description here
// You can write your code in this editor

if (self.canSpawn == 1){
	instance_create_depth(room_width/2,room_height/2+32,0,slimeBoss);
	self.canSpawn=0;
}