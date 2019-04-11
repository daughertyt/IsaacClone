///roomGenerator(tempX,tempY,roomHeight,roomWidth,mapWidth,mapHeight)
var tempX=argument0;
var tempY=argument1;
var roomWidth=argument2;
var roomHeight=argument3;
var mapWidth=argument4;
var mapHeight=argument5;
if (tempX>0){
	if (ds_grid_get(global.firstFloor,tempX-1,tempY)!=0 and room_exists(ds_grid_get(global.firstFloor,tempX-1,tempY))){
		var tempDoor = instance_create_depth(32,roomHeight/2,0,doorWay);
		with (tempDoor){
			roomID = ds_grid_get(global.firstFloor,tempX-1,tempY);
			isAWall=0;
		}
	}
	else{
		var tempDoor = instance_create_depth(32,roomHeight/2,0,doorWay);
		with(tempDoor){
			isAWall=0;
		}
	}
}
else{
	var tempDoor = instance_create_depth(32,roomHeight/2,0,doorWay);
	with(tempDoor){
		isAWall=0;
	}
}
if (tempX<mapWidth-1){

}
else{
	
}
if (tempY>0){

}
else{
	
}
if (tempY<mapHeight-1){
	
}
else{
	
}