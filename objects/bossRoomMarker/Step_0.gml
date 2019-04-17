/// @description Insert description here
// You can write your code in this editor
if (instance_exists(slimeBoss)){
	self.visible=false;
}
else{
	self.visible=true;
	if (self.bossDefeated==1){
		instance_create_depth(self.x,self.y-32,0,speedUp);
		self.bossDefeated=0;
	}
}