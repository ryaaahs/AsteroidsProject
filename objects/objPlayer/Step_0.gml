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
if(place_meeting(x + hspd, y, objSolidParent)){
	while(!place_meeting(x + sign(hspd), y, objSolidParent)){
		x += sign(hspd);
	}
	hspd = 0; 
}
x += hspd

//y
if(place_meeting(x, y + vspd, objSolidParent)){
	while(!place_meeting(x, y + sign(vspd), objSolidParent)){
		y += sign(vspd); 
	}
	vspd = 0; 
}
y += vspd;
 
/// Other Collision -------

//Asteroids
if(place_meeting(x, y, objAsteroid)){
	if(!playerInvincibility){
		//Should I give score to the player when they collide with the asteroid
		//Check to see if we have armor
		if(global.playerArmor){
			//VV Armor is a toggle 
			global.playerArmor = !global.playerArmor;  
			//Apply invic afterwards
			animationFrame = 0; 
			playerInvincibility = true; 
			instance_destroy(other); 
		}else{
			instance_destroy();
			instance_destroy(other);
		}
	}
}

//Spike Parent // Alien Parent 
if(place_meeting(x, y, objSpikeParent) || place_meeting(x, y, objAlienParent)){
	if(!playerInvincibility){
		//Should I give score to the player when they collide with the asteroid
		//Check to see if we have armor
		if(global.playerArmor){
			//VV Armor is a toggle 
			global.playerArmor = !global.playerArmor;  
			//Apply invic afterwards
			animationFrame = 0; 
			playerInvincibility = true;  
		}else{
			instance_destroy();
		}
	}	
}



