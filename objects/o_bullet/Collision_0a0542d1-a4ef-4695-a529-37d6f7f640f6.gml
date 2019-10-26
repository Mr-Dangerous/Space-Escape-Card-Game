with(other){
	if(team != other.team){
		var crit_check = irandom(100)
		if(other.crit_chance > crit_check){
			other.damage *= 2
		}
		hp -= other.damage
		other.attack_complete = true
		if (hp < 1){
			instance_destroy()
		}
	}	
}
if (attack_complete = true){
	instance_destroy()
}
		
		