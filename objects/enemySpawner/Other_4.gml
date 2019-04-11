/// @description Insert description here
// You can write your code in this editor

if (self.canSpawn == 1){
	var minSpawnX = 192;
	var minSpawnY = 192;
	var maxSpawnX = room_width-192;
	var maxSpawnY = room_height-192;
	var xDistance = (maxSpawnX-192)/64;
	var yDistance = (maxSpawnY-192)/64;
	var spawnedX = array_create(numEnemies);
	var spawnedY = array_create(numEnemies);
	for (var i = 0;i<numEnemies;i+=1){
		var chanceX = irandom_range(3,xDistance);
		var chanceY = irandom_range(3,yDistance);
		var ableToSpawn = 1;
		for (var j = 0;j<numEnemies;j+=1){
			if (chanceX == spawnedX[j] and chanceY == spawnedY[j]){
				ableToSpawn = 0;
			}
		}
		if (ableToSpawn == 1){
			
			instance_create_depth(chanceX*64,chanceY*64,0,walkerEnemy);
			spawnedX[i]=chanceX;
			spawnedY[i]=chanceY;
		}
		else{
			i-=1;
		}
	}
	self.canSpawn=0;
}