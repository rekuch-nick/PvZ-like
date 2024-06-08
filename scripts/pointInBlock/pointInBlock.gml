function pointInBlock(a, b){
	
	var c = pixToCords(x, y);
	if(!inBounds(c.a, c.b)){ return false; }
	
	if(ww.pmap[c.a, c.b] != noone){
			return true;
	}
	
	return false;

}