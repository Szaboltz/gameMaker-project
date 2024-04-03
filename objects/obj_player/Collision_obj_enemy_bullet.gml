vida -= 1;

if (vida <= 0) {
	instance_deactivate_all(true);
	instance_deactivate_object(obj_player);
} 
