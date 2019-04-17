/// @description Insert description here
// You can write your code in this editor

var randChance = irandom_range(1,2);
for (var i = 0;i<randChance;i+=1){
	var heartdrop = irandom_range(0,2);
	var tempHeart = instance_create_depth(self.x-64+i*64,self.y+96,0,heartPickup);
	tempHeart.heartType=heartdrop;
	tempHeart.imageNum=heartdrop;
}
var bossSpawner = instance_find(bossRoomMarker,0);
bossSpawner.bossDefeated=1;