


if(state == State.play){
	worldStepUpkeep();
	
	
	worldStepPlayerActions();
	
	
	
	
	
	
	
	
	
}



if(state == State.title){
	
	if(buttonPressed == txtStart){
		stageSetup(1);
		room_goto(roomBattle01);
		
	}
	
}





buttonPressed = "";