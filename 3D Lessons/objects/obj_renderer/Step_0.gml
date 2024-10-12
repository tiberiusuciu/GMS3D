// Update layer rotational position
for (var i = 0; i < global.world_height; i++) {
	var _camDir = -camera_get_view_angle(view_camera[0])+90;
	var _ldx = lengthdir_x(i, _camDir);
	var _ldy = lengthdir_y(i, _camDir);
	
	layer_x(global.z_layer[i], _ldx);
	layer_y(global.z_layer[i], _ldy);
}


// Update our sprite params
if (instance_exists(obj_model)) {
	with (obj_model) {
		for (var i = 0; i < image_number; i++) {
			layer_sprite_speed(index[i], 0);
			layer_sprite_index(index[i], i);
			layer_sprite_xscale(index[i], image_xscale);
			layer_sprite_yscale(index[i], image_yscale);
			layer_sprite_angle(index[i], image_angle);
			layer_sprite_x(index[i], x);
			layer_sprite_y(index[i], y);
		}
	}
}