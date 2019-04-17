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
