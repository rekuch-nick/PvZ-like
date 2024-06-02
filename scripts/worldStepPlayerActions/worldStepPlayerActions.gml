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
		}
		
		
	}
	
	
	
	if(mouse_check_button_pressed(mb_right)){
		if(cursor != noone){ cursor = noone; }
	}

}