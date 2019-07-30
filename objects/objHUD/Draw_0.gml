/// @description Draw the HUD
draw_set_font(fntGameFont); 
draw_set_valign(fa_middle);
draw_set_halign(fa_center);


if(global.gameScore <= 10){
	draw_text(60, 20, "SCORE: " + string(global.gameScore));
}else if(global.gameScore  <= 100){
	draw_text(68, 20, "SCORE: " + string(global.gameScore)); 
}else if(global.gameScore  <= 1000){
	draw_text(80, 20, "SCORE: " + string(global.gameScore)); 
}else if(global.gameScore  <= 10000){
	draw_text(85, 20, "SCORE: " + string(global.gameScore)); 	
}


if(global.gameHighScore <= 10){
	draw_text(430, 20, "HS: " + string(global.gameHighScore)); 
}else if(global.gameHighScore <= 1000){
	draw_text(425, 20, "HS: " + string(global.gameHighScore)); 
}else if(global.gameHighScore <= 10000){
	draw_text(420, 20, "HS: " + string(global.gameHighScore));	
}


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
	
	draw_text_color(room_width / 2, room_height / 2 - 64, "GAME OVER", c_red, c_red, c_red, c_red, 1); 
	// Display the Score / if new Highscore (Maybe with a cool pop up)
	draw_set_font(fntGameFontSmall);
	draw_text_color(room_width / 2, room_height / 2 - 32, "SCORE: " + string(global.gameScore), c_yellow, c_yellow, c_yellow, c_yellow, 1); 
	// How to reset the game
	draw_text_color(room_width / 2, room_height / 2, "PRESS 'R' TO RESTART THE GAME", c_red, c_red, c_red, c_red, 1); 
	// Return to the menu 
	
	
	
	//Reset the text alignment / Font
	draw_set_font(fntGameFont); 
}

