/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
curSpawnTimer-=delta_time/1000000;
curDamageSpawnTimer-=delta_time/1000000;
if (curSpawnTimer<=0){
	curSpawnTimer=spawnTimer;
	instance_create_depth(x,y,0,slimeling);
}
self.oldX=self.x;
self.oldY=self.y;
if (instance_exists(playerCharacter)){
	playerTarget = instance_find(playerCharacter,0);
	self.direction=point_direction(self.x,self.y,playerTarget.x,playerTarget.y)-180;

	motion_set(self.direction,self.curSpeed);
}