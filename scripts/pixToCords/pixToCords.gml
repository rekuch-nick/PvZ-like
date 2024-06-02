function pixToCords(aa, bb){
	
	aa -= 128;
	bb -= 128;
	
	aa = floor(aa / 128);
	bb = floor(bb / 128);
	
	
	return { a: aa, b: bb };
}