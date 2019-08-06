/// @description 
scrWrapping(); 

if(rot == "Right"){
	image_angle += -2	
}else{
	image_angle += 2; 
}

//Movement
x += lengthdir_x(armorSpeed, direction); 
y += lengthdir_y(armorSpeed, direction); 