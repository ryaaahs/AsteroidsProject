////Setting System
if(arrowTimerTick >= arrowTimer){
	if(arrowState == "Right"){
		arrowState = "Left"; 
	}else if(arrowState == "Left"){
		arrowState = "Right";	
	}
	arrowTimerTick = 0; 
}else{
	arrowTimerTick++; 	
}

if(keyboard_check_pressed(ord("S"))){
	if(arrowPlacement < 5){
		arrowPlacement += 1; 
		arrowPlacementChange = true; 
		arrowState = "Right"; 
		arrowTimerTick = 0; 
	}
}else if(keyboard_check_pressed(ord("W"))){
	if(arrowPlacement > 1){
		arrowPlacement -= 1; 
		arrowPlacementChange = true; 
		arrowState = "Right"; 
		arrowTimerTick = 0; 
	}
}

if(keyboard_check_pressed(vk_enter)){
	switch(arrowPlacement){
		case 1:
			//TEMP Hard coding Fullscreen res to my Comp Res
			if(window_get_fullscreen()){
				window_set_fullscreen(false);
				window_set_size(lastResW, lastResH); 
				//display_set_gui_size(lastResW, lastResH);
				surface_resize(application_surface, lastResW, lastResH);
				//Set game res to last used base res
				alarm[0] = 1; 
			}else{
				window_set_fullscreen(true);
				window_set_size(1920, 1080); 
				//display_set_gui_size(1920, 1080);
				surface_resize(application_surface, 1920, 1080);
			}
			
		break; 
	
		case 2:
			//480x270 
			window_set_size(480, 270); 
			//display_set_gui_size(480, 270);
			surface_resize(application_surface, 480, 270);
			lastResW = 480; 
			lastResH = 270;
			alarm[0] = 1; 
		break;
	
		case 3:
			//960x540
			window_set_size(960, 540); 
			//display_set_gui_size(960, 540);
			surface_resize(application_surface, 960, 540);
			lastResW = 960; 
			lastResH = 540;
			alarm[0] = 1; 
		break;
		
		case 4:
			//1920x1080
			window_set_size(1920, 1080); 
			//display_set_gui_size(1920, 1080);
			surface_resize(application_surface, 1920, 1080);
			lastResW = 1920; 
			lastResH = 1080;
			alarm[0] = 1; 
		break;
		
		case 5:
			room_goto(rmMain); 
		break;
	}
}