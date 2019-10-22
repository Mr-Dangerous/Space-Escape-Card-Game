//@param capital ship

var _capital_ship = argument0

var _minion_type
var _team = _capital_ship.team
var _x_offset = 0

switch(_capital_ship.position){
	case "close":
		_minion_type = _capital_ship.interceptor
	
	break;
	case "far":
		_minion_type = _capital_ship.fighter
	break;
}

switch(_capital_ship.team){
	case "right":
		_x_offset = -40
	break;
	case "left":
		_x_offset = 40
	break;
}

minion_count = 3

while(minion_count >0){
	var minion = instance_create_layer(_capital_ship.x + _x_offset, _capital_ship.y + 80 - (40 * minion_count), "Instances", _minion_type)
	with(minion){
		image_xscale = .15
		image_yscale = .15
		lane = _capital_ship.lane
		team = _team
		show_debug_message(team)
		with(minion){
			minion_find_lane_target()
			minion_find_ship_target()
		}
	}
	
	ds_list_add(minion_list, minion)
	minion_count--
}
	

if (_capital_ship.position = "close"){
	var minion = instance_create_layer(_capital_ship.x + _x_offset + (40*sign(_x_offset)), _capital_ship.y, "Instances", _capital_ship.corvette)
	with(minion){
		image_xscale = .25
		image_yscale = .25
		lane = _capital_ship.lane
		team = _team
		with(minion){
			minion_find_lane_target()
			minion_find_ship_target()
		}
	}
	
	
	
	ds_list_add(minion_list, minion)
}

