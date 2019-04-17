/// @description Insert description here
// You can write your code in this editor
var i1 = 0;
var i2 = 1;
var tempI =0;
if (doorType!=0){
	tempI = 1;
}
if (instance_exists(baseEnemy)){
	i1=1 +tempI + self.doorType*2;
	i2=2 +tempI + self.doorType*2;
	self.doorLocked=1;
}
else{
	i1=0 +tempI + self.doorType*2;
	i2=1 +tempI + self.doorType*2;
	self.doorLocked=0;
}
if (self.isAWall==1){
	i1=2;
	i3=3;
	self.doorLocked=1;
}
image_index = (max(i1,image_index%i2));