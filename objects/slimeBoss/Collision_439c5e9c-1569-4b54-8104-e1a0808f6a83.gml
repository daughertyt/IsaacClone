/// @description Insert description here
// You can write your code in this editor
if (curDamageSpawnTimer<=0){
	curDamageSpawnTimer=damageSpawnTimer;
	instance_create_depth(x,y,0,slimeling);
}