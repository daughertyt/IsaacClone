/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if instance_exists(playerCharacter){
	curFireTime-=delta_time/1000000;
	curMoveTime-=delta_time/1000000;
	if (curMoveTime<=0){
		self.curMoveTime=self.moveTimer;
		var curDir = irandom_range(0,7);
		self.direction=curDir*45;
		self.x+=cos(self.direction)*self.curSpeed;
		self.y-=sin(self.direction)*self.curSpeed;
	}
	var playerTarget = instance_find(playerCharacter,0);
	if (curFireTime<=0){
		curFireTime=self.fireRate + random_range(1.5, 2.5);
		var tempDamage = self.damage;
		for (var i=0;i<5;i+=1){
			var inst = instance_create_depth(self.x,self.y,0,enemyProjectile);
			with (inst){
				inst.curSpeed =3;
				inst.direction=point_direction(self.x,self.y,playerTarget.x,playerTarget.y)+22*(i-2);
				inst.damage=tempDamage;
			}
		}
		
	}
}
self.oldX=self.x;
self.oldY=self.y;