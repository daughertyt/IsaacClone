/// @description Insert description here
// You can write your code in this editor
depth=0;
if (curFrame==1){
	image_index=max(0,image_index%1);
}
else if (curFrame==2){
	image_index=max(1,image_index%2);
}
else if (curFrame==3){
	image_index=max(2,image_index);
}