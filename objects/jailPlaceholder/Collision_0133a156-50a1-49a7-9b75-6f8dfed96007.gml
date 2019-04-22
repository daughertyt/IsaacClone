/// @description Insert description here
// You can write your code in this editor

if (self.charType==1){
	if (instance_exists(playerCharacter1)){
		
	}
	else if (ds_list_find_value(global.livingChars,charType)==0){
	}
	else{
		instance_destroy(other);
		for (var i = 0;i<ds_list_size(global.heartContainers);i+=1){
			instance_destroy(ds_list_find_value(global.heartContainers,i));
		}
		instance_create_depth(room_width/2,room_height/2+32,0,playerCharacter1);
	}
}
else if (self.charType==2){
	if (instance_exists(playerCharacter2)){
	}
	else if (ds_list_find_value(global.livingChars,charType)==0){
	}
	else{
		instance_destroy(other);
		for (var i = 0;i<ds_list_size(global.heartContainers);i+=1){
			instance_destroy(ds_list_find_value(global.heartContainers,i));
		}
		instance_create_depth(room_width/2,room_height/2+32,0,playerCharacter2);
	}
}
else if (self.charType==3){
	if (instance_exists(playerCharacter3)){
	}
	else if (ds_list_find_value(global.livingChars,charType)==0){
	}
	else{
		instance_destroy(other);
		for (var i = 0;i<ds_list_size(global.heartContainers);i+=1){
			instance_destroy(ds_list_find_value(global.heartContainers,i));
		}
		instance_create_depth(room_width/2,room_height/2+32,0,playerCharacter3);
	}
}