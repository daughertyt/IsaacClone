/// @description Insert description here
// You can write your code in this editor
var i1 = 0;
var i2=1;
if (charType==1){
	if (instance_exists(playerCharacter1)){
		
	}
	else{
		i1=1;
		i2=3;
	}
}
else if (charType==2){
	if (instance_exists(playerCharacter2)){
	}
	else{
		i1=3;
		i2=5;
	}
}
else if (charType==3){
	if (instance_exists(playerCharacter3)){
	}
	else{
		i1=5;
		i2=15;
	}
}
if (ds_list_find_value(global.livingChars,charType)==0){
	i1=1;
	i2=2;
}
else if (i1==0){
}
else{
	i1+=1;
	i2+=1;
}
image_index = (max(i1,image_index%i2));