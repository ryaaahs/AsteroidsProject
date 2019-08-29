/// States 
enum bulkStates {
	idle, 
	roam,
	change
}

currentState = bulkStates.idle; 
changedState = false; 
lastState = ""; 
bulkSpeed = 1.5; 

bulkChangeTick = 0; 
bulkChangeTimer = room_speed;
bulkChange = 0; 
flash = 0; 