extends Control

var is_paused = false setget set_is_paused 

var game_paused := false
var pause_menu: PackedScene
var current_scene: PackedScene

func _ready() -> void:
	current_scene = ResourceLoader.load("res://Level/node.tscn") # Replace with your actual game scene
	pause_menu = ResourceLoader.load("res://Pause_Menu/pause_menu.tscn") # Replace with your pause menu scene

func _input(event):
	if event is InputEventKey and event.key == KEY_ESCAPE:
		if not game_paused:
			pause_game()
		else:
			resume_game()

func pause_game() -> void:
	game_paused = true
	var pause_instance = pause_menu.instance()
	add_child(pause_instance)
	get_tree().paused = true

func resume_game() -> void:
	game_paused = false
	get_tree().paused = false
	$PauseMenu.queue_free()

func return_to_main_menu() -> void:
	get_tree().change_scene_to_file("res://Main_Menu/main_menu.tscn")

