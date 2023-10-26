extends Control


# Called when the node enters the scene tree for the first time.

@onready var result_label: Label = %Result_Label


func _on_repeat_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Level/node.tscn")


func _on_return_button_pressed() -> void:
	get_tree().change_scene_to_file("res://UI_Menus/Main_Menu/main_menu.tscn")
