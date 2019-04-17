/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
var i1=0;
var i2 = 9;
self.curFireTime -= delta_time/1000000;
if instance_exists(playerCharacter){
	var playerTarget = instance_find(playerCharacter,0);
	if (self.curFireTime<=0){
		self.curFireTime=self.fireRate;
		var tempDamage = self.damage;
		var inst = instance_create_depth(self.x,self.y,self.depth,enemyProjectile);
		with (inst){
			inst.curSpeed =1;
			inst.direction=point_direction(self.x,self.y,playerTarget.x,playerTarget.y);
			inst.damage=tempDamage;
		}
	}
	if(self.x>playerTarget.x){
		i1=0;
		i2=9;
	}
	else{
		i1=9;
		i2=18;
	}
}

image_index = (max(i1,image_index%i2));