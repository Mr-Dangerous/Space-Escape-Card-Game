



if (team = "right"){
	//scan left, x_direction negative
	_scan_direction = -1
}
if (team = "left"){
	//scan right, x_direction positive
	_scan_direction = 1
}
var _active_target = ship_target
var _scan_counter = 0

while (_active_target = noone and _scan_counter < 3){
	var _scanned_minion = instance_nearest(x + (40*_scan_counter*_scan_direction), y, o_minion_ship)
	with (_scanned_minion){
		if (team != other.team){
		_active_target = _scanned_minion
		show_debug_message("trigger")
		}
	}
	if(_active_target = noone) {
		_scan_counter++
	}
}
	
if (_active_target != noone){
	ship_target = _active_target
}