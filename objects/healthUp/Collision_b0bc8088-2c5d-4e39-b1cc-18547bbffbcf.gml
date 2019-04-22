/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(baseEnemy)){
	ds_list_add(global.inventory,healthUp);
	var tempX = 32;
	var tempY = 32;
	other.maxHealth+=2;
	other.curHealth+=2;
	var tempHeart = instance_create_depth(tempX,tempY,-1,heartContainer);
	with (tempHeart){
		tempHeart.containerType=1;
		tempHeart.capacity=2;
	}
	ds_list_insert(global.heartContainers,0,tempHeart);
	for (var i = 1; i < ds_list_size(global.heartContainers);i+=1){
		var otherHeart = ds_list_find_value(global.heartContainers,i);
		otherHeart.x+=64;
		ds_list_replace(global.heartContainers,i,otherHeart);
	}
	instance_destroy();
}