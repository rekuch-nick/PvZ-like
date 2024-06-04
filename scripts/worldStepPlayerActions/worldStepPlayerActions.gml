function worldStepPlayerActions(){
	
	cur = pixToCords(mouse_x, mouse_y);
	
	if(mouse_check_button_pressed(mb_left)){
		if(cur.b == -1){ 
			if(cur.a >= -1 && cur.a < handMax){
				var a = cur.a + 1;
				if(hand[a] != noone){
					// the mouse is on card row
					cursor = hand[a];
					show_debug_message(cursor)
				}
			}
		} else if (inBounds(cur.a, cur.b)){
			if(pmap[cur.a, cur.b] == noone){
				show_debug_message(cursor.cd)
				if(sun >= cursor.cost && cursor.cd < 1){
					//buy planet
					sun -= cursor.cost;
					cursor.cd = cursor.cdMax;
					var c = cordsToPix(cur.a, cur.b);
					pmap[cur.a, cur.b] = instance_create_depth(c.a, c.b, ww.layerP, cursor.obj);
					cursor = noone;
				}
			}
		}
		
		
	}
	
	
	
	if(mouse_check_button_pressed(mb_right)){
		if(cursor != noone){ cursor = noone; }
	}

}