/// @description Insert description here
// You can write your code in this editor
var i1 = 0;
var i2 = 1;
if (instance_exists(baseEnemy)){
	i1=1;
	i2=2;
	self.doorLocked=1;
}
else{
	self.doorLocked=0;
}
if (self.isAWall==1){
	i1=2;
	i3=3;
	self.doorLocked=1;
}
image_index = (max(i1,image_index%i2));