/// @description Insert description here
// You can write your code in this editor
if (curMercyTimer<=0){
	curMercyTimer=mercyTimer;
	if (self.curArmor<=0){
		self.curHealth-=other.damage;
	}
	else{
		self.curArmor-=1;
	}
	var tempDamage = 1;
	if (other.damage>=2){
		tempDamage = other.damage/2;
	}
	var tempTracker = ds_list_size(global.heartContainers)-1;
	for (var i = 0; i<tempDamage;i+=1){
		var tempHP = ds_list_find_value(global.heartContainers,tempTracker);
		if (tempHP.containerType==1){
			if (tempHP.capacity==0){
				tempTracker-=1;
				i-=1;
				if (tempTracker<0){
					break;
				}
			}
			else{
				tempHP.capacity-=1;
			}
		}
		if (tempHP.containerType==2){
			i+=5;
			tempHP.capacity-=1;
			ds_list_delete(global.heartContainers,tempTracker);
		}
	}
}
instance_destroy(other);