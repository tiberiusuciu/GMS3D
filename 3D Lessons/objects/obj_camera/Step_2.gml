if (mouse_locked) {
	window_set_cursor(cr_none);
	window_mouse_set(window_get_width() / 2, window_get_height() /2);
}
else {
	window_set_cursor(cr_default);
}
