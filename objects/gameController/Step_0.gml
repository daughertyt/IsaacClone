/// @description Insert description here
// You can write your code in this editor
if (curRoomX<mapWidth){
	if (curRoomY<mapHeight){
		if (ds_grid_get(global.firstFloor,curRoomX,curRoomY)!=0 and room_exists(ds_grid_get(global.firstFloor,curRoomX,curRoomY))){
			
			var roomToBeMade = ds_grid_get(global.firstFloor,curRoomX,curRoomY);
			if (flipBit==0){
				flipBit=1;
				room_goto(roomToBeMade)
			}
			else{
				flipBit=0;
				var tempDoor1 = instance_create_depth(32,room_height/2+32,0,doorWay);
				if (self.curRoomX>0 and ds_grid_get(global.firstFloor,self.curRoomX-1,self.curRoomY)!=0 and room_exists(ds_grid_get(global.firstFloor,self.curRoomX-1,self.curRoomY))){
					tempDoor1.roomID = ds_grid_get(global.firstFloor,self.curRoomX-1,self.curRoomY);
					if (self.curRoomX-1==self.itemRoomX and self.curRoomY==self.itemRoomY or (self.curRoomX==self.itemRoomX and self.curRoomY = self.itemRoomY)){
						tempDoor1.doorType=1;
					}
					else if (self.curRoomX-1==self.bossRoomX and self.curRoomY==self.bossRoomY or (self.curRoomX==self.bossRoomX and self.curRoomY = self.bossRoomY)){
						tempDoor1.doorType=2;
					}
					tempDoor1.isAWall=0;
				}
				else{
					tempDoor1.isAWall=1;
				}
				var tempDoor2 = instance_create_depth(room_width-32,room_height/2+32,0,doorWay);
				
				if (self.curRoomX<self.mapWidth-1 and ds_grid_get(global.firstFloor,self.curRoomX+1,self.curRoomY)!=0 and room_exists(ds_grid_get(global.firstFloor,self.curRoomX+1,self.curRoomY))){
					tempDoor2.roomID = ds_grid_get(global.firstFloor,self.curRoomX+1,self.curRoomY);
					if (self.curRoomX+1==self.itemRoomX and self.curRoomY==self.itemRoomY or (self.curRoomX==self.itemRoomX and self.curRoomY = self.itemRoomY)){
						tempDoor2.doorType=1;
					}
					else if (self.curRoomX+1==self.bossRoomX and self.curRoomY==self.bossRoomY or (self.curRoomX==self.bossRoomX and self.curRoomY = self.bossRoomY)){
						tempDoor2.doorType=2;
					}
					tempDoor2.isAWall=0;
				}
				else{
					tempDoor2.isAWall=1;
				}
				var tempDoor3 = instance_create_depth(room_width/2,32+64,0,doorWay);
				
				if (self.curRoomY>0 and ds_grid_get(global.firstFloor,self.curRoomX,self.curRoomY-1)!=0 and room_exists(ds_grid_get(global.firstFloor,self.curRoomX,self.curRoomY-1))){
					tempDoor3.roomID = ds_grid_get(global.firstFloor,self.curRoomX,self.curRoomY-1);
					if (self.curRoomX==self.itemRoomX and self.curRoomY-1==self.itemRoomY or (self.curRoomX==self.itemRoomX and self.curRoomY = self.itemRoomY)){
						tempDoor3.doorType=1;
					}
					else if (self.curRoomX==self.bossRoomX and self.curRoomY-1==self.bossRoomY or (self.curRoomX==self.bossRoomX and self.curRoomY = self.bossRoomY)){
						tempDoor3.doorType=2;
					}
					tempDoor3.isAWall=0;
				}
				else{
					tempDoor3.isAWall=1;
				}
				var tempDoor4 = instance_create_depth(room_width/2,room_height-32,0,doorWay);
				if (self.curRoomY<self.mapHeight-1 and ds_grid_get(global.firstFloor,self.curRoomX,self.curRoomY+1)!=0 and room_exists(ds_grid_get(global.firstFloor,self.curRoomX,self.curRoomY+1))){
					tempDoor4.roomID = ds_grid_get(global.firstFloor,self.curRoomX,self.curRoomY+1);
					if (self.curRoomX==self.itemRoomX and self.curRoomY+1==self.itemRoomY or (self.curRoomX==self.itemRoomX and self.curRoomY = self.itemRoomY)){
						tempDoor4.doorType=1;
					}
					else if (self.curRoomX==self.bossRoomX and self.curRoomY+1==self.bossRoomY or (self.curRoomX==self.bossRoomX and self.curRoomY = self.bossRoomY)){
						tempDoor4.doorType=2;
					}
					tempDoor4.isAWall=0;
				}
				else{
					tempDoor4.isAWall=1;
				}
				if(instance_exists(itemRoomMarker)){
					var randItem = irandom_range(0,2);
					if (randItem == 0){
						instance_create_depth(room_width/2,room_height/2+16,0,healthUp);
					}
					else if (randItem == 1){
						instance_create_depth(room_width/2,room_height/2+16,0,damageUp);
					}
					else{
						instance_create_depth(room_width/2,room_height/2+16,0,speedUp);
					}
				}
				else if (instance_exists(bossRoomMarker)){
					var bossSpawner = instance_find(bossRoomMarker,0);
					bossSpawner.canSpawn=1;
				}
				else if (instance_exists(enemySpawner)){
					var spawner = instance_find(enemySpawner,0);
					spawner.numEnemies = irandom_range(2,5);
					spawner.canSpawn = 1;
				}
				else if (roomToBeMade==global.startRoom){
					
				}
				else{
					var tempHP =instance_create_depth(room_width/2,room_height/2+32,0,heartPickup);
					if (instance_exists(tempHP)){
						var tempRand = irandom_range(0,2);
						tempHP.heartType=tempRand;
						tempHP.imageNum=tempRand;
					}
					else{
						show_debug_message("oopsie");
					}
				}
			}
		}
		if (flipBit==0){
			curRoomY+=1;
			if (curRoomY>=mapHeight){
				curRoomY=0;
				curRoomX+=1;
				if (curRoomX>=mapWidth){
					room_goto(room0);
				}
			}
		}
	}
}