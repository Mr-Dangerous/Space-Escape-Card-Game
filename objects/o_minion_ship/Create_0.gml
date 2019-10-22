switch (minion_type){
	case "interceptor":
		max_speed = 2
	break;
	
	case "fighter":
		max_speed = 1
	break;
	
	case "corvette":
		max_speed = 1
	break;
}

enum minion{
	moving,
	locked_on
}

state = minion.moving
	
