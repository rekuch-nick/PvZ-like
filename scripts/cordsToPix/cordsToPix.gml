function cordsToPix(aa, bb){
	
	
	
	aa = aa * 128;
	bb = bb * 128;
	
	aa += 128 + 64;
	bb += 128 + 64;
	
	return { a: aa, b: bb };
}