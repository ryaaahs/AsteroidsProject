/// @description 


//Player Invicibility 
if(playerInvincibility){
	if(playerInvincibilityTick >= playerInvincibilityTimer){
		playerInvincibility = false; 	
		playerInvincibilityTick = 0; 
	}else{
		playerInvincibilityTick++; 
		//Animation Timer
		if(playerInvincibilityAnimationTick >= playerInvincibilityAnimationTimer){
			if(animationFrame == 0){
				animationFrame = 1;
			}else{
				animationFrame = 0; 
			}
			playerInvincibilityAnimationTick = 0;
		}else{
			playerInvincibilityAnimationTick++;
			if(animationFrame == 0){
				draw_sprite_ext(sprPlayerInvicibility, 0, x, y, 1, 1, angle, c_white, 1);
			}else{
				draw_sprite_ext(sprPlayerInvicibility, 1, x, y, 1, 1, angle, c_white, 1);
			}
		}
	}
}else{
	//Sprite checking to see if we Armor
	if(!global.playerArmor){
		draw_sprite_ext(sprPlayer, 0, x, y, 1, 1, angle, c_white, 1); 
		image_speed = 1; 
	}else{
		draw_sprite_ext(sprPlayerArmor, 0, x, y, 1, 1, angle, c_white, 1); 
	}
}

//draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,false);
//Debug stuff
/*
draw_sprite_ext(sprPlayerMask, 0, x, y, 1, 1, 0, c_white, 0.5); 
draw_text(x, y - 16, string(global.gameLives)); 
*/