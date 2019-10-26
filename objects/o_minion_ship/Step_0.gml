//find lane target
if (lane_target = noone){
	minion_find_lane_target()
}
if (ship_target = noone){
	minion_find_ship_target()
}

if (fire_rate > 0){
	fire_rate++
	if(fire_rate >= 100){
		fire_rate = 0
	}
}

if (hp<1){
	instance_destroy()
	exit
}

if (self = noone){
	exit
}

switch(state){
	case minion.moving:
	//check for ship target if it's not found
	if (ship_target = noone){
		minion_find_ship_target()
		direction = point_direction(x, y, lane_target.x, lane_target.y)
		image_angle = direction - 90
		speed = max_speed
	}
	
	if (ship_target != noone){
	//100 to be replaced by range
	
		if (distance_to_object(ship_target) < 100){
			direction = point_direction(x, y, ship_target.x, ship_target.y)
			image_angle = direction - 90
			speed = 0
			state = minion.locked_on
		} else {
			direction = point_direction(x, y, ship_target.x, ship_target.y)
			image_angle = direction - 90
			speed = max_speed
		}
	}
	
	break;
	
	case minion.locked_on:
	
		if(ship_target = noone){
			state = minion.moving
			exit
			
		}
		if (fire_rate = 0 and ship_target != noone){
			fire_rate ++
			var bullet = instance_create_layer(x, y, "Instances", o_bullet)
			with(bullet){
				target_direction = point_direction(x, y, other.ship_target.x, other.ship_target.y)
				direction = target_direction
				image_angle = direction - 90
				speed = 4
				team = other.team
				crit_chance = other.crit_chance
				damage = other.attack_damage
			}
		}
			
	break;
}


		



