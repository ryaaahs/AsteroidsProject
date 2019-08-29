/// @description STATES

scrWrapping(); 
// Add to parent afterwards ^^

//IDLE 
if(currentState == bulkStates.idle){
	currentState = bulkStates.roam;
	changedState = true; 
}

//ROAM
if(currentState == bulkStates.roam){
	if(changedState){
		direction = random_range(0, 359); 
		changedState = !changedState; 
	}
	
	var _ran = irandom_range(0, 100); 
	if(_ran <= 2){
		currentState = bulkStates.change; 
		changedState = true; 
		lastState = bulkStates.roam;
	}
}

//CHANGE
if(currentState == bulkStates.change){
	if(bulkChangeTick >= bulkChangeTimer && flash <= 0){
		flash = 1; 
		bulkChangeTick = 0; 
		bulkChange += 1; 
	}else{
		bulkChangeTick++; 
	}
	
	if(bulkChange >= 2){
		bulkChange = 0; 
		currentState = bulkStates.roam; 
		changedState = true; 
		lastState = bulkStates.change;
	}
}

//Movement
x += lengthdir_x(bulkSpeed, direction); 
y += lengthdir_y(bulkSpeed, direction); 