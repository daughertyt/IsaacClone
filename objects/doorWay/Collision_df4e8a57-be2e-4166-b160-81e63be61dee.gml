/// @description Insert description here
// You can write your code in this editor
if (self.doorLocked==0){
	room_goto(self.roomID);
	if (self.x==room_width/2){
		
		other.x=room_width/2;
		if (self.y==32){
			other.y=(room_height-96);
		}
		else if(self.y==room_height/2){
			other.y=room_height/2;
		}
		else{
			other.y=96;
		}
	}
	else{
		
		other.y=room_height/2;
		if (self.x==32){
			other.x=(room_width-96);
		}
		else if(self.x==room_width/2){
			other.x=room_width/2;
		}
		else{
			other.x=96;
		}
	}
	//other.y=room_height/2;
	show_debug_message(string(self.roomID));
}
else{
	other.x=other.oldX;
	other.y=other.oldY;
}