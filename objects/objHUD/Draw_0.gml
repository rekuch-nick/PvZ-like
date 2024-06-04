for(var i=0; i<ww.handMax; i++){
	if(ww.hand[i] != noone){
		draw_sprite_stretched(imgCard, 0, i * 128, 0, 128, 128);
		draw_sprite_stretched(ww.hand[i].img, 0, i * 128, 0, 128, 128);
	}
}


if(ww.cursor != noone){
	
	var a = ww.cur.a;
	var b = ww.cur.b;
	if(inBounds(a, b)){
		a = a + 1; b = b + 1;
		draw_sprite_stretched(ww.cursor.img, 0, a * 128, b * 128, 128, 128);
	}
}

draw_set_halign(fa_right);
draw_text(room_width - 4, 4, ww.sun);
draw_set_halign(fa_left);