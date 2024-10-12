var _camAng = -camera_get_view_angle(view_camera[0]) + 90;

for (var i = 0; i < image_number; i++) {
	var _ldx = lengthdir_x(i, _camAng);
	var _ldy = lengthdir_y(i, _camAng);
	draw_sprite_ext(sprite_index, i, x + _ldx, y+_ldy, 1, 1, 0, c_white, 1)
}