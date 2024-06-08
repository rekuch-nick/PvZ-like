if(ww.state != State.play){ return; }



if(hp < 1){
	ww.pmap[xSpot, ySpot] = noone;
	instance_destroy();
}