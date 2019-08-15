////Movement
//Player Keys
keyRight = keyboard_check(ord("D")); 
keyLeft = keyboard_check(ord("A")); 
keyMove = keyboard_check(ord("W")); 
keyShoot = keyboard_check(ord("K")); 
//keyBomb? 

scrWrapping(); 

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

//Shooting
if(keyShoot){
	if(instance_number(objBullet) < 5){
		if(shootTimer > shootTimerAmount){
			with(instance_create_layer(x, y, "Bullets", objBullet)){
				var player = objPlayer;
				speed = 8; 
				direction = player.direction; 
				alarm[0] = room_speed * 2; 
			}
			
			shootTimer = 0; 	
		}
	}
}

if(shootTimer <= shootTimerAmount){
	shootTimer++; 	
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
