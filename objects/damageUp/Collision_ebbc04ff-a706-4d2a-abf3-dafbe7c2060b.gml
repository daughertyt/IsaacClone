/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(baseEnemy)){
	ds_list_add(global.inventory,damageUp);
	other.playerDamage+=5;
	instance_destroy();
}