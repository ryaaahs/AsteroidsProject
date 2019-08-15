/// @description 
scrWrapping(); 

//Rot
if(pickRotation == 1){
	image_angle += 0.5; 	
}else{
	image_angle += -0.5; 	
}


//Movement
x += lengthdir_x(asteroidSpeed, direction); 
y += lengthdir_y(asteroidSpeed, direction); 