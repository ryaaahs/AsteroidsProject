/// @description 

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
	if(arrowPlacement < 3){
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
			room_goto(rmGame); 
		break; 
	
		case 2:
			room_goto(rmSettings);
		break;
	
		case 3:
			game_end(); 
		break;
	}
}