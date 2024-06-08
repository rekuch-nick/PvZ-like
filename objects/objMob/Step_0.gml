if(ww.state != State.play){ return; }


if(atkCD > 0){ atkCD --; }



x -= moveSpeed;

var bumpedPlant = noone;
while(pointInBlock(x, y)){
	bumpedPlant = ww.pmap[pixToCords(x, y).a, pixToCords(x, y).b];
	x += 1;
}
if(bumpedPlant != noone && atkCD < 1){
	atkCD = atkCDMax;
	bumpedPlant.hp -= atkPow;
}


if(x < 0){ instance_destroy(); }