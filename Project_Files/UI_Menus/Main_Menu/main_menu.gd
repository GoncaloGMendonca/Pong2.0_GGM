extends Control




func _on_single_player_button_pressed() -> void:
	get_tree().change_scene_to_file("res://UI_Menus/Singleplayer_menu/singleplayer_menu.tscn")




func _on_quit_game_button_pressed() -> void:
	get_tree().quit()
