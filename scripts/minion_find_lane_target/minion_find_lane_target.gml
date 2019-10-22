capital_ship_list = _governer.capital_ship_list

var capital_ship_list_size = ds_list_size(capital_ship_list)
var _nearest_target = noone

if (capital_ship_list_size > 0){
	for (var i = 0; i < capital_ship_list_size; i++) {
	    _capital_ship = ds_list_find_value(capital_ship_list, i)
		if (_capital_ship.team != team){
			if (_nearest_target = noone){
				_nearest_target = _capital_ship
			} else {
				if (distance_to_object(_capital_ship) < distance_to_object(_nearest_target)){
					_nearest_target = _capital_ship
				}
			}
		}
				
	}
	if (_nearest_target != noone){
		lane_target = _nearest_target
	}
}