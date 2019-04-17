/// @description Insert description here
// You can write your code in this editor
var randChance = irandom_range(0,9);
if (randChance == 9){
	var heartdrop = irandom_range(0,2);
	var tempHeart = instance_create_depth(self.x,self.y,0,heartPickup);
	tempHeart.heartType=heartdrop;
	tempHeart.imageNum=heartdrop;
}