/// @description Draw the HUD
/// **Spend some time changing this to a GUI Draw event than a draw event
draw_set_font(fntGameFont); 
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

//Score // Highscore Display
if(global.gameScore <= 10){
	draw_text(62, 20, "SCORE: " + string(global.gameScore));
}else if(global.gameScore  <= 100){
	draw_text(70, 20, "SCORE: " + string(global.gameScore)); 
}else if(global.gameScore  <= 1000){
	draw_text(76, 20, "SCORE: " + string(global.gameScore)); 
}else if(global.gameScore  <= 10000){
	draw_text(81, 20, "SCORE: " + string(global.gameScore)); 	
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
	draw_sprite_ext(sprPlayerArmorHUD, global.gameLives, 6, 36, 1, 1, 0, c_white, 1); 
}else{
	if(global.gameLives > 0){
		draw_sprite_ext(sprPlayerLivesHUD, global.gameLives, 6, 36, 1, 1, 0, c_white, 1); 	
	}
}

if(global.playerDeath){
	
	// Display death text
	draw_text_color(room_width / 2, room_height / 2 - 64, "GAME OVER", c_red, c_red, c_red, c_red, 1); 
	draw_set_font(fntGameFontSmall);
	draw_text_color(room_width / 2, room_height / 2 - 32, "SCORE: " + string(global.gameScore), c_yellow, c_yellow, c_yellow, c_yellow, 1); 
	draw_text_color(room_width / 2, room_height / 2, "PRESS 'R' TO RESTART THE GAME", c_red, c_red, c_red, c_red, 1); 
	
	draw_set_font(fntGameFont); 
}

