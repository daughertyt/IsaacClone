/// @description Insert description here
// You can write your code in this editor
randomize();
persistent=true;
global.UI = instance_create_depth(0,0,1,UIOverlay);
global.firstFloor = ds_grid_create(mapHeight,mapWidth);
global.secondFloor = ds_grid_create(mapHeight,mapWidth);
global.loadScreen = instance_create_depth(0,0,-2,noMove);
var roomHeight = room_height;
var roomWidth = room_width;
global.startRoom = room_add();
room_set_width(global.startRoom,roomWidth);
room_set_height(global.startRoom,roomHeight);
room_set_persistent(global.startRoom,true);
global.startRoom2=room_add();
room_set_width(global.startRoom2,roomWidth);
room_set_height(global.startRoom2,roomHeight);
room_set_persistent(global.startRoom2,true);
ds_grid_add(global.firstFloor,int64(mapWidth/2),int64(mapHeight/2),global.startRoom);
ds_grid_add(global.secondFloor,int64(mapWidth/2),int64(mapHeight/2),global.startRoom2);
var usedRooms = array_create(roomCount,[]);
var pos;
var usedRoomsCount = 0;
pos[0] = int64(mapWidth/2);
pos[1] = int64(mapHeight/2);
var roomList;
usedRooms[0] = pos;
for (var i =1;i<roomCount;i+=1){
	var temp = usedRooms[irandom_range(0,usedRoomsCount)];
	var tempX = temp[0];
	var tempY = temp[1];
	var seed = irandom_range(1,4);
	if (seed==1 and tempX<mapWidth-2){
		tempX+=1;
	}
	else if (seed==2 and tempX>0){
		tempX-=1;
	}
	else if (seed == 3 and tempY<mapHeight-2){
		tempY+=1;
	}
	else if (tempY>0){
		tempY-=1;
	}
	var canAdd = 1;
	if (ds_grid_get(global.firstFloor,tempX,tempY)!=0){
		canAdd=0;
	}
	if (canAdd==1){
		roomList[i] = room_add();
		room_set_width(roomList[i],roomWidth);
		room_set_height(roomList[i],roomHeight);
		room_set_persistent(roomList[i],true);
		ds_grid_add(global.firstFloor,tempX,tempY,roomList[i]);
		var tempPos;
		tempPos[0] = tempX;
		tempPos[1] = tempY;
		usedRooms[i]=tempPos;
		usedRoomsCount+=1;
	}
	else{
		i-=1;
	}
}
var specialRooms = 0;
var specialRoomX=array_create(2);
var specialRoomY=array_create(2);
while (specialRooms<2){
	var tempX = irandom_range(0,mapWidth-1);
	var tempY = irandom_range(0,mapHeight-1);
	if (ds_grid_get(global.firstFloor,tempX,tempY)==0){
		var adjRooms = 0;
		for (var i = 0;i<specialRooms;i+=1){
			if (tempX-1==specialRoomX[i] and tempY=specialRoomY[i]){
				adjRooms+=5;
			}
			if (tempX+1==specialRoomX[i] and tempY=specialRoomY[i]){
				adjRooms+=5;
			}
			if (tempX==specialRoomX[i] and tempY-1=specialRoomY[i]){
				adjRooms+=5;
			}
			if (tempX==specialRoomX[i] and tempY+1=specialRoomY[i]){
				adjRooms+=5;
			}
		}
		if (tempX==0 or ds_grid_get(global.firstFloor,tempX-1,tempY)==0){
		}
		else{
			adjRooms+=1;
		}
		if (tempX==mapWidth-1 or ds_grid_get(global.firstFloor,tempX+1,tempY)==0){
		}
		else{
			adjRooms+=1;
		}
		if (tempY==0 or ds_grid_get(global.firstFloor,tempX,tempY-1)==0){
		}
		else{
			adjRooms+=1;
		}
		if (tempY==mapHeight-1 or ds_grid_get(global.firstFloor,tempX,tempY+1)==0){
		}
		else{
			adjRooms+=1;
		}
		if (adjRooms==1){
			if (specialRooms<2){
				roomList[roomCount+specialRooms] = room_add();
				room_set_width(roomList[roomCount+specialRooms],roomWidth);
				room_set_height(roomList[roomCount+specialRooms],roomHeight);
				room_set_persistent(roomList[roomCount+specialRooms],true);
				ds_grid_add(global.firstFloor,tempX,tempY,roomList[roomCount+specialRooms]);
				if (specialRooms==0){
					room_instance_add(roomList[roomCount+specialRooms],roomWidth/2,roomHeight/2+64,itemRoomMarker);
					self.itemRoomX = tempX;
					self.itemRoomY = tempY;
				}
				else if (specialRooms==1){
					room_instance_add(roomList[roomCount+specialRooms],roomWidth/2,roomHeight/2+64,bossRoomMarker);
					self.bossRoomX = tempX;
					self.bossRoomY = tempY;
				}
				var tempPos;
				tempPos[0] = tempX;
				tempPos[1] = tempY;
				usedRooms[i]=tempPos;
				specialRoomX[specialRooms]=tempX;
				specialRoomY[specialRooms]=tempY;
				usedRoomsCount+=1;
				specialRooms+=1
			}
		}
	}
}
for (var mapX = 0;mapX<mapWidth;mapX+=1){
	for (var mapY = 0;mapY<mapHeight;mapY+=1){
		var tempX = mapX;
		var tempY = mapY;
		if (ds_grid_get(global.firstFloor,tempX,tempY)!=0 and room_exists(ds_grid_get(global.firstFloor,tempX,tempY))){
			
			var roomToBeMade = ds_grid_get(global.firstFloor,tempX,tempY);
			room_set_persistent(roomToBeMade,true);
			for (var j =0;j<13;j+=1){
				if (j!=6){
					room_instance_add(roomToBeMade,32+64*j,32+64,collisionObject);
					room_instance_add(roomToBeMade,32+64*j,roomHeight-32,collisionObject);
				}
			}
			for (var j = 1;j<8;j+=1){
				if (j!=4){
					room_instance_add(roomToBeMade,32,32+64*j+64,collisionObject);
					room_instance_add(roomToBeMade,roomWidth-32,32+64*j+64,collisionObject);
				}
			}
			var canBeEnemyRoom = true;
			for (var i = 0;i<specialRooms;i+=1){
				if (tempX==specialRoomX[i] and tempY==specialRoomY[i]){
					canBeEnemyRoom=false;
				}
				else if(tempX==mapHeight/2 and tempY==mapWidth/2){
					canBeEnemyRoom=false;
				}
			}
			if (canBeEnemyRoom==true){
				var randChance = irandom_range(0,10);
				if (randChance>3){
					room_instance_add(roomToBeMade,roomWidth/2,roomHeight/2+64,enemySpawner);
				}
			}
		}
	}
}
room_goto(room0);
ini_open("RoomGeneration1.ini");
ini_write_string("Save","0",ds_grid_write(global.firstFloor));
ini_close();

var usedRooms2 = array_create(roomCount,[]);
var pos2;
var usedRoomsCount2 = 0;
pos2[0] = int64(mapWidth/2);
pos2[1] = int64(mapHeight/2);
var roomList2;
usedRooms2[0] = pos2;
for (var i =1;i<roomCount;i+=1){
	var temp = usedRooms2[irandom_range(0,usedRoomsCount2)];
	var tempX = temp[0];
	var tempY = temp[1];
	var seed = irandom_range(1,4);
	if (seed==1 and tempX<mapWidth-2){
		tempX+=1;
	}
	else if (seed==2 and tempX>0){
		tempX-=1;
	}
	else if (seed == 3 and tempY<mapHeight-2){
		tempY+=1;
	}
	else if (tempY>0){
		tempY-=1;
	}
	var canAdd = 1;
	if (ds_grid_get(global.secondFloor,tempX,tempY)!=0){
		canAdd=0;
	}
	if (canAdd==1){
		roomList2[i] = room_add();
		room_set_width(roomList2[i],roomWidth);
		room_set_height(roomList2[i],roomHeight);
		room_set_persistent(roomList2[i],true);
		ds_grid_add(global.secondFloor,tempX,tempY,roomList2[i]);
		var tempPos;
		tempPos[0] = tempX;
		tempPos[1] = tempY;
		usedRooms2[i]=tempPos;
		usedRoomsCount2+=1;
	}
	else{
		i-=1;
	}
}
var specialRooms2 = 0;
var specialRoomX2=array_create(2);
var specialRoomY2=array_create(2);
while (specialRooms2<2){
	var tempX = irandom_range(0,mapWidth-1);
	var tempY = irandom_range(0,mapHeight-1);
	if (ds_grid_get(global.secondFloor,tempX,tempY)==0){
		var adjRooms = 0;
		for (var i = 0;i<specialRooms2;i+=1){
			if (tempX-1==specialRoomX2[i] and tempY=specialRoomY2[i]){
				adjRooms+=5;
			}
			if (tempX+1==specialRoomX2[i] and tempY=specialRoomY2[i]){
				adjRooms+=5;
			}
			if (tempX==specialRoomX2[i] and tempY-1=specialRoomY2[i]){
				adjRooms+=5;
			}
			if (tempX==specialRoomX2[i] and tempY+1=specialRoomY2[i]){
				adjRooms+=5;
			}
		}
		if (tempX==0 or ds_grid_get(global.secondFloor,tempX-1,tempY)==0){
		}
		else{
			adjRooms+=1;
		}
		if (tempX==mapWidth-1 or ds_grid_get(global.secondFloor,tempX+1,tempY)==0){
		}
		else{
			adjRooms+=1;
		}
		if (tempY==0 or ds_grid_get(global.secondFloor,tempX,tempY-1)==0){
		}
		else{
			adjRooms+=1;
		}
		if (tempY==mapHeight-1 or ds_grid_get(global.secondFloor,tempX,tempY+1)==0){
		}
		else{
			adjRooms+=1;
		}
		if (adjRooms==1){
			if (specialRooms2<2){
				roomList2[roomCount2+specialRooms2] = room_add();
				room_set_width(roomList2[roomCount2+specialRooms2],roomWidth);
				room_set_height(roomList2[roomCount2+specialRooms2],roomHeight);
				room_set_persistent(roomList2[roomCount2+specialRooms2],true);
				ds_grid_add(global.secondFloor,tempX,tempY,roomList2[roomCount2+specialRooms2]);
				if (specialRooms2==0){
					room_instance_add(roomList2[roomCount2+specialRooms2],roomWidth/2,roomHeight/2+64,itemRoomMarker);
					self.itemRoomX2 = tempX;
					self.itemRoomY2 = tempY;
				}
				else if (specialRooms2==1){
					room_instance_add(roomList2[roomCount2+specialRooms2],roomWidth/2,roomHeight/2+64,bossRoomMarker);
					self.bossRoomX2 = tempX;
					self.bossRoomY2 = tempY;
				}
				var tempPos;
				tempPos[0] = tempX;
				tempPos[1] = tempY;
				usedRooms2[i]=tempPos;
				specialRoomX2[specialRooms2]=tempX;
				specialRoomY2[specialRooms2]=tempY;
				usedRoomsCount2+=1;
				specialRooms2+=1
			}
		}
	}
}
for (var mapX = 0;mapX<mapWidth;mapX+=1){
	for (var mapY = 0;mapY<mapHeight;mapY+=1){
		var tempX = mapX;
		var tempY = mapY;
		if (ds_grid_get(global.secondFloor,tempX,tempY)!=0 and room_exists(ds_grid_get(global.secondFloor,tempX,tempY))){
			
			var roomToBeMade = ds_grid_get(global.secondFloor,tempX,tempY);
			room_set_persistent(roomToBeMade,true);
			for (var j =0;j<13;j+=1){
				if (j!=6){
					room_instance_add(roomToBeMade,32+64*j,32+64,collisionObject);
					room_instance_add(roomToBeMade,32+64*j,roomHeight-32,collisionObject);
				}
			}
			for (var j = 1;j<8;j+=1){
				if (j!=4){
					room_instance_add(roomToBeMade,32,32+64*j+64,collisionObject);
					room_instance_add(roomToBeMade,roomWidth-32,32+64*j+64,collisionObject);
				}
			}
			var canBeEnemyRoom = true;
			for (var i = 0;i<specialRooms2;i+=1){
				if (tempX==specialRoomX2[i] and tempY==specialRoomY2[i]){
					canBeEnemyRoom=false;
				}
				else if(tempX==mapHeight/2 and tempY==mapWidth/2){
					canBeEnemyRoom=false;
				}
			}
			if (canBeEnemyRoom==true){
				var randChance = irandom_range(0,10);
				if (randChance>3){
					room_instance_add(roomToBeMade,roomWidth/2,roomHeight/2+64,enemySpawner);
				}
			}
		}
	}
}
ini_open("RoomGeneration2.ini");
ini_write_string("Save","0",ds_grid_write(global.secondFloor));
ini_close();
curFloor=1;