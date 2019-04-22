var tempDoor = instance_create_depth(room_width/2,32+64,0,doorWay);
tempDoor.isAWall=1;
var tempDoor1 = instance_create_depth(32,room_height/2+32,0,doorWay);
tempDoor1.isAWall=1;
var tempDoor2 = instance_create_depth(room_width/2,room_height-32,0,doorWay);
tempDoor2.isAWall=1;
var tempDoor3 = instance_create_depth(room_width-32,room_height/2+32,0,doorWay);
tempDoor3.isAWall=0;
tempDoor3.roomID=room0;
for (var i = 0;i<13;i+=1){
	if (i!=6){
		instance_create_depth(32+64*i,64+32,0,collisionObject);
		instance_create_depth(32+64*i,room_height-32,0,collisionObject);
	}
}
for (var i = 1;i<8;i+=1){
	if (i!=4){
		instance_create_depth(32,32+64+64*i,0,collisionObject);
		instance_create_depth(room_width-32,64+32+64*i,0,collisionObject);
	}
}
for (var i = -1;i<2;i+=1){
	var tempJail = instance_create_depth(room_width/2+128*i,room_height/2+32-128,0,jailPlaceholder);
	tempJail.charType=i+2;
}