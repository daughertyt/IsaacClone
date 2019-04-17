/// @description Insert description here
// You can write your code in this editor
persistent=true;
depth=0;
global.heartContainers= ds_list_create();
for (var i = 0;i<self.maxHealth/2;i+=1){
	var tempX = ds_list_size(global.heartContainers)*64 +32;
	var tempY =32;
	var tempHeart = instance_create_depth(tempX,tempY,-1,heartContainer);
	with (tempHeart){
		tempHeart.containerType=1;
		tempHeart.capacity=2;
	}
	ds_list_add(global.heartContainers,tempHeart);
}