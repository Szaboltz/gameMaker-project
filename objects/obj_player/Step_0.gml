if keyboard_check(vk_right) {
    x += velocidade;
}
if keyboard_check(vk_left) {
    x -= velocidade;
}

last_shot += 1;
if (last_shot >= cooldown) {
	if keyboard_check_pressed(vk_space) {
		instance_create_layer(x, y - 40, "instances", obj_player_bullet);
		last_shot=0;
	}
}

draw_text(0, 0, vida)
