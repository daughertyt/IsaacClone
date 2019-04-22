/// @description Insert description here
// You can write your code in this editor
	if (self.violentDeath==1){
	var randChance = irandom_range(1,2);
	for (var i = 0;i<randChance;i+=1){
		var heartdrop = irandom_range(0,2);
		var tempHeart = instance_create_depth(room_width/2-64+i*64,room_height/2+96,0,heartPickup);
		tempHeart.heartType=heartdrop;
		tempHeart.imageNum=heartdrop;
	}
	var bossSpawner = instance_find(bossRoomMarker,0);
	bossSpawner.bossDefeated+=1;
}