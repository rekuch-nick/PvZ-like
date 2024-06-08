function worldStepUpkeep(){
	
	
	
	//increment time
	playTimeMS ++;
	if(playTimeMS >= room_speed){ 
		sun += 1;
		with(objPlanet){ ww.sun += sunIncome; }
		playTimeMS = 0; playTimeS ++; 
	}
	if(playTimeS >= 60){ playTimeS = 0; playTimeM ++; }
	
	//card cooldowns
	for(var i=0; i<handMax; i++){
		if(hand[i] != noone){
			if(hand[i].cd > 0){
				hand[i].cd --;
			}
		}
	}
		
	
	
	
	//if there's mobs left to spawn this wave
	if( mobIndex < array_length(waves[wave].mobs) ){
		//decremnt counter and possibly spawn one
		spawnCD --;
		if(spawnCD < 1){
			spawnCD = waves[wave].rate;
			
			var b = getRowPoint(waves[wave].pat);
			instance_create_depth(room_width, b, layerM, waves[wave].mobs[mobIndex]);
			
			mobIndex ++;
		}
		
	} else if(wave < array_length(waves) - 1) {
		//if there's no mobs left to spawn, but there is another wave
		if(waves[wave].endCD != -1){ waves[wave].endCD --; }
		if(instance_number(objMob) < 1 || ( waves[wave].endCD < 1 && waves[wave].endCD != -1 ) ){
			wave ++;
			mobIndex = 0;
			spawnCD = waves[wave].rate;
		}
	} else {
		//if there's no waves left, either increase the wave count or win the stage
		if(instance_number(objMob) < 1){
			
			//win
			
		}
	}
	
	

}