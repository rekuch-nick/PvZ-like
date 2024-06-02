function getCard(n){
	
	var c = {
		img: object_get_sprite(n),
		obj: n,
		cost: 0,
		cdMax: 150,
		cd: 0,
		startsReady: false,
	};
	
	
	
	if(n == objPlanetFarm){
		c.cost = 50;
		c.startsReady = true;
	}
	
	if(n == objPlanetDesert){
		c.cost = 100;
	}
	
	
	if(!c.startsReady){ c.cd = c.cdMax; }
	return c;
}