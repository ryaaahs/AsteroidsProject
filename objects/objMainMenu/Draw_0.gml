/// @description 
draw_set_font(fntGameFontBig); 
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

draw_text_ext_color((room_width / 2) + 16, 24, "Asteroiks++", 1, 400, c_orange, c_orange, c_orange, c_orange, 1);
draw_set_font(fntGameFont);

if(arrowPlacementChange){
	switch(arrowPlacement){
		case 1:
			arrowX = 160; 
			arrowY = 90; 
			arrowPlacementChange = false; 
			
			break;
		case 2: 
			arrowX = 128; 
			arrowY = 154; 
			arrowPlacementChange = false;
			
			break; 
		case 3: 
			arrowX = 160; 
			arrowY = 218; 
			arrowPlacementChange = false;
			
			break; 
	}
}

switch(arrowPlacement){
	case 1:
	
	draw_text_color(room_width / 2, 96, menuTag[0], c_yellow, c_yellow, c_yellow, c_yellow, 1); 
	draw_text(room_width / 2, 160, menuTag[1]); 
	draw_text(room_width / 2, 224, menuTag[2]); 
			
	break;
		
	case 2: 

	draw_text(room_width / 2, 96, menuTag[0]); 
	draw_text_color(room_width / 2, 160, menuTag[1], c_yellow, c_yellow, c_yellow, c_yellow, 1);  
	draw_text(room_width / 2, 224, menuTag[2]); 
	break; 
		
	case 3: 
	draw_text(room_width / 2, 96, menuTag[0]); 
	draw_text(room_width / 2, 160, menuTag[1]); 
	draw_text_color(room_width / 2, 224, menuTag[2], c_yellow, c_yellow, c_yellow, c_yellow, 1); 
			
	break; 
}

if(arrowState == "Right"){
	arrowX += arrowMovement; 
}else if(arrowState == "Left"){
	arrowX += -arrowMovement; 
}

draw_sprite(sprPlayer, 0, arrowX, arrowY); 


draw_set_font(fntGameFontSmall); 
draw_text(room_width - 44, room_height - 16, "RYAAAHS");