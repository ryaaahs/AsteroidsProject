////Movement
//Player Keys



keyRight = keyboard_check(ord("D")); 
keyLeft = keyboard_check(ord("A")); 
keyMove = keyboard_check(ord("W")); 


hspd = lengthdir_x(playerMovement, direction);
vspd = lengthdir_y(playerMovement, direction);
//keyBomb? 

scrWrapping(); 


//Player Trail
if(trailTimer >= trailTimerAmount){
	instance_create_layer(x - lengthdir_x(sprite_xoffset, direction), y - lengthdir_y(sprite_yoffset, direction), "Instances", objTrail);	
	trailTimer = 0;
}else{
	trailTimer++; 	
}

//Player Invicibility 
if(playerInvincibility){
	sprite_index = sprPlayerInvicibility;
	image_speed = 0.4; 
	if(playerInvincibilityTick >= playerInvincibilityTimer){
		playerInvincibility = false; 	
		playerInvincibilityTick = 0; 
	}else{
		playerInvincibilityTick++; 
	}
}else{
	
	//Sprite checking to see if we Armor
	if(!global.playerArmor){
		sprite_index = sprPlayer;
		image_speed = 1; 
	}else{
		sprite_index = sprPlayerArmor; 	
	}
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

///Player Collision 
//x

if(place_meeting(x + hspd, y, objSolid)){
	while(!place_meeting(x + sign(hspd), y, objSolid)){
		x += lengthdir_x(sign(hspd), direction);
	}
	hspd = 0; 
}


//y
if(place_meeting(x, y + vspd, objSolid)){
	while(!place_meeting(x, y + sign(vspd), objSolid)){
		y += lengthdir_y(sign(vspd), direction); 
	}
	vspd = 0; 
}


x += hspd
y += vspd;
 

