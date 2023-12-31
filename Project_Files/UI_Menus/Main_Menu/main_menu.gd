extends Control


@onready var button_sfx: AudioStreamPlayer = %button_SFX





func _on_single_player_button_pressed() -> void:
	
	get_tree().change_scene_to_file("res://UI_Menus/Singleplayer_menu/singleplayer_menu.tscn")


func _on_multi_player_button_pressed() -> void:
	get_tree().change_scene_to_file("res://UI_Menus/Multiplayer_Menu/multiplayer_menu.tscn")



func _on_quit_game_button_pressed() -> void:
	get_tree().quit()




func _on_single_player_button_button_down() -> void:
	button_sfx.play() 


func _on_multi_player_button_button_down() -> void:
	button_sfx.play() 


func _on_quit_game_button_button_down() -> void:
	button_sfx.play()  
