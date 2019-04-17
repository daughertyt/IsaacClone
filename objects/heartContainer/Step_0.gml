/// @description Insert description here
// You can write your code in this editor
var i1=3;
var i2=4;
if (containerType ==1){
	if (capacity==0){
		i1=3;
		i2=4;
	}
	else if (capacity ==1){
		i1=4;
		i2=5;
	}
	else if (capacity ==2){
		i1=5;
		i2=6;
	}
}
else if (containerType ==2){
	if (capacity<=0){
		instance_destroy();
	}
	else{
		i1=6;
		i2=7;
	}
}
image_index = (max(i1,image_index%i2));