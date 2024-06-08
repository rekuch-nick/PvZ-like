function stageSetup(n){
	
	waves = [];
	wave = 0;
	mobIndex = 0;
	mainRow = choose(0, 1, 2, 3, 4);
	
	state = State.play;
	
	playTimeMS = 0;
	playTimeS = 0;
	playTimeM = 0;
	
	if(n == 1){ 
		
		waveSetup([objMobBee, objMobBee, objMobBee, objMobBee, objMobBee], Pat.equal, 30, "", -1);
		waveSetup([objMobBee, objMobBee, objMobBee, objMobBee, objMobBee], Pat.equal, 10, "", 150);
		waveSetup([objMobBee, objMobBee, objMobBee, objMobBee, objMobBee], Pat.equal, 30, "", 150);
		
		
	}
	
	spawnCD = waves[0].rate;
	
	
	

}