/// @description Insert description here
// You can write your code in this editor

//variables
walkSpeed = 16;
vx = 0;
vy = 0;
dir = 3;
moveRight = 0;
moveLeft = 0;
moveUp = 0;
moveDown = 0;

// detect key press
while (keyboard_check_pressed(vk_up)) {
	moveUp = 1;
}
while (keyboard_check_released(vk_up)) {
	moveUp = 0;
}
while (keyboard_check_pressed(vk_down)) {
	moveDown = 1;
}
while (keyboard_check_released(vk_down)) {
	moveDown = 0;
}
while (keyboard_check_pressed(vk_right)) {
	moveRight = 1;
}
while (keyboard_check_released(vk_right)) {
	moveRight = 0;
}
while (keyboard_check_pressed(vk_left)) {
	moveLeft = 1;
}
while (keyboard_check_released(vk_left)) {
	moveLeft = 0;
}

// calculate movement
vx = ((moveRight - moveLeft) * walkSpeed);
vy = ((moveDown - moveUp) * walkSpeed);

// if idle
if (vx == 0 && vy == 0) {
	// do nothin for now
}

// if moving
if (vx != 0 || vy != 0) {
	x += vx;
	y += vy;
}