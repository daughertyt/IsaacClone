/// @description Insert description here
// You can write your code in this editor
var tempY = 0;
var tempX = 0;
var curImage = 0;
var curDamage = self.playerDamage;
var curSpeed = self.charSpeed;
var curProjectileSpeed = self.projectileSpeed;
var canMove = true;
if (self.curHealth<=0){
	self.violentDeath=1;
	room_goto(room0);
	instance_destroy();
}
if (instance_exists(noMove)){
	canMove=false;
}
curFireTime-=delta_time/1000000;
curMercyTimer-=delta_time/1000000;
if keyboard_check(ord("W")) and canMove{
	tempY-=charSpeed;
	curImage = 4;
}
if keyboard_check(ord("S")) and canMove{
	tempY+=charSpeed;
	curImage = 1;
}
if keyboard_check(ord("A")) and canMove{
	tempX-=charSpeed;
	curImage = 3;
}
if keyboard_check(ord("D")) and canMove{
	tempX+=charSpeed;
	curImage = 2;
}
if keyboard_check(vk_up) and curFireTime<=0 and canMove{
	curFireTime = fireRate;
	curImage = 4;
	var inst = instance_create_depth(self.x,self.y,self.depth,bottle);
	with (inst){
		xDir = 0;
		yDir = -curProjectileSpeed;
		damage = curDamage;
	}
}
else if keyboard_check(vk_down) and curFireTime<=0 and canMove{
	curFireTime = fireRate;
	curImage = 1;
	var inst = instance_create_depth(self.x,self.y,self.depth,bottle);
	with (inst){
		xDir = 0;
		yDir = curProjectileSpeed;
		damage = curDamage;
	}
}
else if keyboard_check(vk_left) and curFireTime<=0 and canMove{
	curFireTime = fireRate;
	curImage = 3;
	var inst = instance_create_depth(self.x,self.y,self.depth,bottle);
	with (inst){
		xDir = -curProjectileSpeed;
		yDir = 0;
		damage = curDamage;
	}
}
else if keyboard_check(vk_right) and curFireTime<=0 and canMove{
	curFireTime = fireRate;
	curImage = 2;
	var inst = instance_create_depth(self.x,self.y,self.depth,bottle);
	with (inst){
		xDir = curProjectileSpeed;
		yDir = 0;
		damage = curDamage;
	}
}
oldX=x;
oldY=y;
x+=tempX;
y+=tempY;
var i1 = 0;
var i2 = 1;
if (curImage ==1){
	i1 = 0;
	i2 = 4;
}
else if (curImage ==2){
	i1 = 4;
	i2 = 8;
}
else if (curImage ==3){
	i1 = 8;
	i2 = 12;
}
else if (curImage ==4){
	i1 = 12;
	i2=16;
}
image_index = (max(i1,image_index%i2));
persistent=true;
depth=0;
