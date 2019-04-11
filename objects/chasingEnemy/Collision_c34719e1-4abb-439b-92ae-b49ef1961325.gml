/// @description Insert description here
// You can write your code in this editor
if instance_exists(playerCharacter){
	if (curDamageTick<=0){
		curDamageTick=damageTick;
		other.curHealth-=self.damage;
	}
}