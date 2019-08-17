///Shooting
keyShoot = keyboard_check(ord("K")); 

if(keyShoot){
	if(instance_number(objBullet) < 5){
		if(shootTimer > shootTimerAmount){
			with(instance_create_layer(x + lengthdir_x(sprite_xoffset, direction), y + lengthdir_y(sprite_yoffset, direction), "Instances", objPlayerShotEffect)){
				image_angle = objPlayer.direction; 	
			}
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