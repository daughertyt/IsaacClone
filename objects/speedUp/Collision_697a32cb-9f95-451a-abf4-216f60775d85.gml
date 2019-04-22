/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(baseEnemy)){
	ds_list_add(global.inventory,speedUp);
	other.charSpeed+=self.speedBonus;
	instance_destroy();
}
