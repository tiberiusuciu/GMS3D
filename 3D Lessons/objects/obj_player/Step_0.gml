// Smooth camera to out location
cam.x = lerp(cam.x, x, .05);
cam.y = lerp(cam.y, y, .05);

// Basic movement
direction = -camera_get_view_angle(view_camera[0])+90;

var spd, move_dir, move_spd;
spd = 2;
move_dir = 0;
move_spd = 0;

if (keyboard_check(ord("W"))) {
	move_dir = 0;
	move_spd = spd;
}
if (keyboard_check(ord("A"))) {
	move_dir = 90;
	move_spd = spd;
	image_xscale = -1;
}
if (keyboard_check(ord("S"))) {
	move_dir = 180;
	move_spd = spd;
}
if (keyboard_check(ord("D"))) {
	move_dir = 270;
	move_spd = spd;
	image_xscale = 1;
}

// Animation
image_speed = move_spd != 0;
if (move_spd == 0) {
	image_index = 0;
}

var _ldx = lengthdir_x(move_spd, direction + move_dir);
var _ldy = lengthdir_y(move_spd, direction + move_dir);

phy_position_x += _ldx;
phy_position_y += _ldy;

phy_rotation = -direction + 90;