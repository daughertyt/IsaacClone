/// @description Insert description here
// You can write your code in this editor
var healthChange = 0;
if (other.heartType==0){
	if (self.curHealth<self.maxHealth){
		self.curHealth+=1;
		healthChange+=1;
		instance_destroy(other);
	}
}
else if (other.heartType==1){
	if (self.curHealth<self.maxHealth){
		self.curHealth+=2;
		if (self.curHealth>self.maxHealth){
			healthChange+=1;
			self.curHealth=self.maxHealth;
		}
		else{
			healthChange+=2;
		}
		instance_destroy(other);
	}
}
else if (other.heartType==2){
	self.curArmor+=1;
	var tempX = ds_list_size(global.heartContainers)*64 +32;
	var tempY =32;
	var tempArmor = instance_create_depth(tempX,tempY,0,heartContainer);
	with (tempArmor){
		tempArmor.containerType=2;
		tempArmor.capacity=1;
	}
	ds_list_add(global.heartContainers,tempArmor);
	instance_destroy(other);
}
if (healthChange>0){
	for (var i =0;i<ds_list_size(global.heartContainers);i+=1){
		var tempHP = ds_list_find_value(global.heartContainers,i);
		if (tempHP.containerType==1){
			if (tempHP.capacity<2){
				tempHP.capacity+=1;
				healthChange-=1;
				if (healthChange<=0){
					break;
				}
				i-=1;
			}
		}
		else{
			break;
		}
	}
}