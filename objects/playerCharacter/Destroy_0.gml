/// @description Insert description here
// You can write your code in this editor

for (var i = 0;i<ds_list_size(global.heartContainers);i+=1){
	instance_destroy(ds_list_find_value(global.heartContainers,i));
}
if (self.violentDeath==1){
	var tempY = room_height/2-32;
	var tempX = room_width/2-64;
	for (var i = 0;i<ds_list_size(global.inventory);i+=1){
		instance_create_depth(tempX,tempY,0,ds_list_find_value(global.inventory,i));
		tempX+=64;
		if (tempX>=room_width-128){
			tempY+=64;
			tempX=room_width/2-64;
		}
	}
	ds_list_clear(global.inventory);
	global.loadScreen=instance_create_depth(0,0,-5,noMove);
	var gc = instance_find(gameController,0);
	gc.curFloor=1;
	global.resetRooms=true;
}