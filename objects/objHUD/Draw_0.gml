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

//* Note; we'll have to save the highscore before we save the highscore using a ini file 
//Player Death
if(global.playerDeath){
	// Display the text
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	
	draw_text_color(room_width / 2, room_height / 2 - 64, "GAME OVER", c_red, c_red, c_red, c_red, 1); 
	// Display the Score / if new Highscore (Maybe with a cool pop up)
	draw_set_font(fntGameFontSmall);
	draw_text_color(room_width / 2, room_height / 2 - 32, "SCORE: " + string(global.gameScore), c_yellow, c_yellow, c_yellow, c_yellow, 1); 
	// How to reset the game
	draw_text_color(room_width / 2, room_height / 2, "PRESS 'R' TO RESTART THE GAME", c_red, c_red, c_red, c_red, 1); 
	// Return to the menu 
	
	
	
	//Reset the text alignment / Font
	draw_set_font(fntGameFont); 
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
}

