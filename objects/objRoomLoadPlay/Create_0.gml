

with(objImage){ sprite_index = imgBGStage; }

ww.state = State.play;

ww.hud = instance_create_depth(0, 0, ww.layerHUD, objHUD);

for(var a=0; a<9; a++){ for(var b=0; b<5; b++){
	ww.pmap[a, b] = noone;
}}