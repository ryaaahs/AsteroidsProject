////Movement
//Player Keys
keyRight = keyboard_check(ord("D")); 
keyLeft = keyboard_check(ord("A")); 
keyMove = keyboard_check(ord("W")); 

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
	image_angle = direction; 
}else if(keyRight){
	direction -= 2; 
	image_angle = direction; 
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

x += lengthdir_x(playerMovement, direction); 
y += lengthdir_y(playerMovement, direction); 
