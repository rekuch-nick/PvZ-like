draw_set_halign(fa_center);
for(var i=0; i<ww.handMax; i++){
	if(ww.hand[i] != noone){
		draw_sprite_stretched(imgCard, 0, i * 128, 0, 128, 128);
		draw_sprite_stretched(ww.hand[i].img, 0, i * 128, 0, 128, 128);
		
		draw_text(64 + i * 128, 96, ww.hand[i].cost)
		
		if(ww.hand[i].cd > 0){
			var b = 128 * (ww.hand[i].cd / ww.hand[i].cdMax);
			draw_set_alpha(.5);
			draw_rectangle_color(i * 128, 0, i * 128 + 128, b, c_black, c_black, c_black, c_black, false);
			draw_set_alpha(1);
		}
		
		if(ww.sun < ww.hand[i].cost){
			var b = 128;
			draw_set_alpha(.5);
			draw_rectangle_color(i * 128, 0, i * 128 + 128, b, c_black, c_black, c_black, c_black, false);
			draw_set_alpha(1);
		}
		
	}
}
draw_set_halign(fa_left);

if(ww.cursor != noone){
	
	var a = ww.cur.a;
	var b = ww.cur.b;
	if(inBounds(a, b)){
		a = a + 1; b = b + 1;
		draw_set_alpha(.6);
		draw_sprite_stretched(ww.cursor.img, 0, a * 128, b * 128, 128, 128);
		draw_set_alpha(1);
	}
}

draw_set_halign(fa_right);
draw_text(room_width - 4, 4, ww.sun);
draw_set_halign(fa_left);