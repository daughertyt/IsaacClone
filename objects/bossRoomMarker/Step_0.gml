/// @description Insert description here
// You can write your code in this editor
if (instance_exists(baseBoss)){
	self.visible=false;
}
else{
	self.visible=true;
	if (self.bossDefeated==1){
		var randChance = irandom_range(1,3);
		if (randChance==1){
			instance_create_depth(self.x,self.y-32,0,speedUp);
		}
		else if (randChance==2){
			instance_create_depth(self.x,self.y-32,0,damageUp);
		}
		else{
			instance_create_depth(self.x,self.y-32,0,healthUp);
		}
		self.bossDefeated=2;
	}
}