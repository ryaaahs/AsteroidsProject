/// @description Draw the HUD
draw_set_font(fntGameFont); 
draw_text(10, 8, "SCORE: " + string(global.gameScore)); 



//Draws the Life hud for the player, in both states (Armored/Not Armored) 
if(global.playerArmor){
	draw_sprite_ext(sprPlayerArmorHUD, global.gameLives, 12, 36, 1, 1, 0, c_white, 1); 
}else{
	if(global.gameLives > 0){
		draw_sprite_ext(sprPlayerLivesHUD, global.gameLives, 12, 36, 1, 1, 0, c_white, 1); 	
	}
}