extends Control

@onready var main = $"../"

func _on_resume_button_pressed():
	main.pauseMenu() 


func _on_quit_button_pressed():
	get_tree().change_scene_to_file("res://Main_Menu/main_menu.tscn")