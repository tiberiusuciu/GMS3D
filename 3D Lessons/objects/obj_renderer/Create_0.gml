// Create world depth layers;
global.z_layer = [];
global.world_height = 64;

for (var i = 0; i < global.world_height; i++) {
	global.z_layer[i] = layer_create(-i, $"z_layer[{string(i)}]");
}

// Create model sprites on layers
if (instance_exists(obj_model)) {
	with (obj_model) {
		index = [];
		for (var i = 0; i < image_number; i++) {
			index[i] = layer_sprite_create(global.z_layer[i], x, y, sprite_index);
			layer_sprite_speed(index[i], 0);
			layer_sprite_index(index[i], i);
			layer_sprite_xscale(index[i], image_xscale);
			layer_sprite_yscale(index[i], image_yscale);
			layer_sprite_angle(index[i], image_angle);
		}
	}
}