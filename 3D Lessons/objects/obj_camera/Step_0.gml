var _hSens, _look, _angleDiff;

// Mouse sensitivity
_hSens = .1;

// Get our look amount from the mouse x movement
_look = (window_mouse_get_x() - window_get_width() / 2) * _hSens;
_look = clamp(_look, -10, 10);

// Set our look direction and constrain it
look_direction += _look;
if (look_direction > 359) then look_direction = 0;
if (look_direction < 0) then look_direction = 359;

// Smooth the rotational movement
_angleDiff = angle_difference(camera_angle, look_direction);
camera_angle = lerp(camera_angle, camera_angle - (min(abs(_angleDiff) * sign(_angleDiff), 100)), _hSens);

// Set our camera angle
camera_set_view_angle(view_camera[0], camera_angle);

// Set our camera position to us
var _camW = camera_get_view_width(view_camera[0]) / 2;
var _camH = camera_get_view_height(view_camera[0]) / 2;
camera_set_view_pos(view_camera[0], x - _camW, y - _camH);