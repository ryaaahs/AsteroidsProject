/// @description 
draw_set_font(fntGameFontBig); 
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

draw_set_font(fntGameFont);

if(arrowPlacementChange){
	switch(arrowPlacement){
		case 1:
			arrowX = 120; 
			arrowY = 26; 
			arrowPlacementChange = false; 
			
		break;
		case 2: 
			arrowX = 130; 
			arrowY = 58; 
			arrowPlacementChange = false;
			
		break; 
		case 3: 
			arrowX = 140; 
			arrowY = 90; 
			arrowPlacementChange = false;
			
		break; 
		case 4: 
			arrowX = 130; 
			arrowY = 122; 
			arrowPlacementChange = false;
			
		break;
		case 5: 
			arrowX = 160; 
			arrowY = 218; 
			arrowPlacementChange = false;
			
		break;
	}
}

switch(arrowPlacement){
	case 1:
	
	draw_text_color(room_width / 2, 32, menuTag[0], c_yellow, c_yellow, c_yellow, c_yellow, 1); 
	draw_text(room_width / 2, 64, menuTag[1]); 
	draw_text(room_width / 2, 96, menuTag[2]); 
	draw_text(room_width / 2, 128, menuTag[3]);
	draw_text(room_width / 2, 224, menuTag[4]);
			
	break;
	case 2: 

	draw_text(room_width / 2, 32, menuTag[0]); 
	draw_text_color(room_width / 2, 64, menuTag[1], c_yellow, c_yellow, c_yellow, c_yellow, 1);
	draw_text(room_width / 2, 96, menuTag[2]); 
	draw_text(room_width / 2, 128, menuTag[3]);
	draw_text(room_width / 2, 224, menuTag[4]);
	
	break; 
	case 3:
	
	draw_text(room_width / 2, 32, menuTag[0]); 
	draw_text(room_width / 2, 64, menuTag[1]); 
	draw_text_color(room_width / 2, 96, menuTag[2], c_yellow, c_yellow, c_yellow, c_yellow, 1);
	draw_text(room_width / 2, 128, menuTag[3]);
	draw_text(room_width / 2, 224, menuTag[4]);
			
	break; 
	case 4: 
	
	draw_text(room_width / 2, 32, menuTag[0]);  
	draw_text(room_width / 2, 64, menuTag[1]); 
	draw_text(room_width / 2, 96, menuTag[2]); 
	draw_text_color(room_width / 2, 128, menuTag[3], c_yellow, c_yellow, c_yellow, c_yellow, 1);
	draw_text(room_width / 2, 224, menuTag[4]);
			
	break;
	case 5: 
	
	draw_text(room_width / 2, 32, menuTag[0]);  
	draw_text(room_width / 2, 64, menuTag[1]); 
	draw_text(room_width / 2, 96, menuTag[2]); 
	draw_text(room_width / 2, 128, menuTag[3]);
	draw_text_color(room_width / 2, 224, menuTag[4], c_yellow, c_yellow, c_yellow, c_yellow, 1);
			
	break;
}

if(arrowState == "Right"){
	arrowX += arrowMovement; 
}else if(arrowState == "Left"){
	arrowX += -arrowMovement; 
}

draw_sprite(sprPlayer, 0, arrowX, arrowY); 
