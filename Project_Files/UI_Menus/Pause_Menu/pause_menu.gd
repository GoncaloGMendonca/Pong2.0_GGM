extends Control

@onready var main = $"../"
@onready var button_sfx: AudioStreamPlayer = %button_SFXp

func _on_resume_button_pressed():
	main.pauseMenu() 


func _on_quit_button_pressed():
	get_tree().change_scene_to_file("res://UI_Menus/Main_Menu/main_menu.tscn")


func _on_resume_button_button_down() -> void:
	button_sfx.play() 


func _on_quit_button_button_down() -> void:
	button_sfx.play() 
