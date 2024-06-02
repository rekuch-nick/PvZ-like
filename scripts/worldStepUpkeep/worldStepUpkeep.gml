function worldStepUpkeep(){
	
	
	
	//increment time
	playTimeMS ++;
	if(playTimeMS >= room_speed){ playTimeMS = 0; playTimeS ++; }
	if(playTimeS >= 60){ playTimeS = 0; playTimeM ++; }
	
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
		
	} else {
		//if there's no mobs left, either increase the wave count or win the stage
		if(instance_number(objMob) < 1){
			if(wave < array_length(waves) - 1){
				wave ++;
				mobIndex = 0;
				spawnCD = waves[wave].rate;
			} else {
				//win
			}
		}
	}
	
	

}