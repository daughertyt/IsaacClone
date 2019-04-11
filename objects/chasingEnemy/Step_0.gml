/// @description Insert description here
// You can write your code in this editor
event_inherited();
curDamageTick-=delta_time/1000000;
if instance_exists(playerCharacter){
	var playerTarget = instance_find(playerCharacter,0);
	oldX=x;
	oldY=y;
	move_towards_point(playerTarget.x,playerTarget.y,self.curSpeed);
}
else{
	move_towards_point(self.x,self.y,0);
}