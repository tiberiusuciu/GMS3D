// Clear the outline surface and check that it still exists

if (surface_exists(global.outline_surf)) {
	
	surface_set_target(global.outline_surf);
	draw_clear_alpha(c_black, 0);
	surface_reset_target();

} else {
	global.outline_surf = surface_create(room_width, room_height);
}

// Find objects and draw outlines
if (instance_exists(obj_block)) {
	with (obj_block) {
		
		var outline_object = obj_outline_surface;
		var _col = outline_object.outline_color;
		var _width = outline_object.outline_width;
		
		// Target outline surface
		surface_set_target(global.outline_surf);
		
		// Get camera angle
		var _camAng = -camera_get_view_angle(view_camera[0]) + 90;


		// Draw outline
		for (var i = 0; i < image_number; i++) {
			var _ldx = lengthdir_x(i, _camAng);
			var _ldy = lengthdir_y(i, _camAng);
			draw_sprite_ext(sprite_index, i, x + _ldx, y+_ldy, 1+_width, 1+_width, 0, _col, 1)
		}
		
		
		// Reset surface target
		surface_reset_target();
		
	}
}


// Draw our outline surface
if (surface_exists(global.outline_surf)) {
	draw_surface(global.outline_surf, 0, 0);
}