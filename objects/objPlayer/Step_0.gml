////Movement
//Player Keys
keyRight = keyboard_check(ord("D")); 
keyLeft = keyboard_check(ord("A")); 
keyMove = keyboard_check(ord("W")); 
//keyBomb? 

scrWrapping(); 


//Player Trail
if(trailTimer >= trailTimerAmount){
	instance_create_layer(x - lengthdir_x(sprite_xoffset, direction), y - lengthdir_y(sprite_yoffset, direction), "Particles", objTrail);	
	trailTimer = 0;
}else{
	trailTimer++; 	
}


//Rot
if(keyLeft && keyRight){
	//Nothing	
}else if(keyLeft){
	direction += 2; 
	angle = direction; 
}else if(keyRight){
	direction -= 2;
	if(direction <= 0){
		direction = 358; 	
	}
	 
	 angle = direction; 
}

//Accel and Deccel 
if(!keyMove){
	//Apply the Drag 
	if(playerMovement > 0.2){
		playerMovement -= playerDrag; 	
	}
}else{
	//Reset it when moving 
	if(playerMovement < playerMaxAccel){
		playerMovement += playerAccel; 		
	}
}
// If it goes over the max, reset it
if(playerMovement > playerMaxAccel){
	playerMovement = playerMaxAccel; 
}
hspd = lengthdir_x(playerMovement, angle);
vspd = lengthdir_y(playerMovement, angle);

///Player Collision 
//x
if(place_meeting(x + hspd, y, objSolid)){
	while(!place_meeting(x + sign(hspd), y, objSolid)){
		x += sign(hspd);
	}
	hspd = 0; 
}
x += hspd

//y
if(place_meeting(x, y + vspd, objSolid)){
	while(!place_meeting(x, y + sign(vspd), objSolid)){
		y += sign(vspd); 
	}
	vspd = 0; 
}
y += vspd;
 

