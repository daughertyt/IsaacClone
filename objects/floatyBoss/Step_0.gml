/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

curFireTime-=delta_time/1000000;
if (self.curHealth<self.hpThreshold){
	self.curSpeed+=2;
	motion_set(self.direction,self.curSpeed);
	self.hpThreshold-=50;
}
if (curFireTime<=0){
	curFireTime=self.fireRate;
	for (var i=0;i<8;i+=1){
		var tempProjectile = instance_create_depth(self.x,self.y,0,enemyProjectile);
		tempProjectile.direction=45*i;
		tempProjectile.curSpeed=2;
	}
}
self.oldX=self.x;
self.oldY=self.y;