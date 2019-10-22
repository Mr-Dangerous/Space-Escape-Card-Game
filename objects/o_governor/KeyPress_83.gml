//have all capital ships spawn minions

var i = 0
var capital_ship_list_size = ds_list_size(capital_ship_list)

for (var i = 0; i < capital_ship_list_size; i++) {
	
    var _capital_ship = ds_list_find_value(capital_ship_list, i)
	spawn_minions(_capital_ship)
	
	#region An example of terrible code
	/*
	with(_capital_ship){
		switch(team){
			case "right":
				switch(lane){
					case "top":
						switch(position){
							case "far":
								while(fighter_count>0){
									var _fighter = instance_create_layer(x + 40, y + 40 - (fighter_count * 40), "Instances", fighter)
									_fighter.image_xscale = .25
									_fighter.image_yscale = .25
									_fighter.lane = lane
									_fighter.team = team
									ds_list_add(minion_list, _fighter)
									fighter_count--
								}
						
							break;
							case "close":
								while(interceptor_count>0){
									var _interceptor = instance_create_layer(x + 40, y + 40 - (interceptor_count * 40), "Instances", interceptor)
									_interceptor.image_xscale = .25
									_interceptor.image_yscale = .25
									_interceptor.lane = lane
									_interceptor.team = team
									ds_list_add(minion_list, _interceptor)
									interceptor_count--
								}
							
						
							break;
						}
				
					break;
			
					case "bot":
						switch(position){
							case "far":
								while(fighter_count>0){
										var _fighter = instance_create_layer(x + 40, y + 40 - (fighter_count * 40), "Instances", fighter)
										_fighter.image_xscale = .25
										_fighter.image_yscale = .25
										_fighter.lane = lane
										_fighter.team = team
										ds_list_add(minion_list, _fighter)
										_fighter_count--
									}
						
							break;
							case "close":
						
							break;
						}
				
					break;
				}
					
			break;
		
			case "left":
			switch(lane){
					case "top":
						switch(position){
							case "far":
						
							break;
							case "close":
						
							break;
						}
				
					break;
			
					case "bot":
						switch(position){
							case "far":
						
							break;
							case "close":
						
							break;
						}
				
					break;
				}
		
			break;
		}
	}
	*/
	#endregion
}
