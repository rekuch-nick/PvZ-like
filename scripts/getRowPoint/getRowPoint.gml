function getRowPoint(p){
	var n = choose(0, 1, 2, 3, 4);
	
	if(p == Pat.bigRow && roll(75)){ n = mainRow; }
	
	if(p == Pat.top && roll(80)){ n = choose(0, 1, 2); }
	
	if(p == Pat.bot && roll(80)){ n = choose(2, 3, 4); }
	
	if(p == Pat.changeRows){
		if(roll(30)){ mainRow = choose(0, 1, 2, 3, 4); }
		n = mainRow;
	}
	
	
	return 128 * (n + 1) + 64;
}