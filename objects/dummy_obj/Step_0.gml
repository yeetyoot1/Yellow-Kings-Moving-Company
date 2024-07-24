// movement code

// detect key press
moveRight = (keyboard_check(ord("D")));
moveLeft = (keyboard_check(ord("A")));
moveUp = (keyboard_check(ord("W")));
moveDown = (keyboard_check(ord("S")));

// calculate movement
_vx = ((moveRight - moveLeft) * walkSpeed);
_vy = ((moveDown - moveUp) * walkSpeed);

// if idle
if (_vx == 0 && _vy == 0) {
	
// change idle Sprite based on last direction
	switch dir {
	case 0: sprite_index = Sprite_Right_Idle; break;
//	case 1: sprite_index = spr_player_idle_up; break;
	case 2: sprite_index = Sprite_Left_Idle; break;
	case 3: sprite_index = Sprite_Forward_Idle; break;
	}
}

// if moving
if (_vx != 0 || _vy != 0) {
	if !collision_point(x+_vx,y,obj_par_environment,true,true){
		x += _vx;	
	}
	if !collision_point(x,y+_vy,obj_par_environment,true,true){
		y += _vy;
	}
	
	// change walking Sprite based on direction
	if (_vx > 0) {
	sprite_index = Sprite_Right;
	dir = 0;
	}
	if (_vx < 0) {
	sprite_index = Sprite_Left;
	dir = 2;
	}
	if (_vy > 0) {
	sprite_index = Sprite_Forward;
	dir = 3;
	}
//	if (vy < 0) {
//		sprite_index = spr_player_walk_up;
//	dir	 = 1;
//	}
}