extends Control


# Called when the node enters the scene tree for the first time.

@onready var result_label: Label = %Result_Label
@onready var button_sfx: AudioStreamPlayer = %button_SFX



func _process(delta: float) -> void:
	result_label.text = GameManager.winner 



func _on_return_button_pressed() -> void:
	get_tree().change_scene_to_file("res://UI_Menus/Main_Menu/main_menu.tscn")



func _on_repeat_button_button_down() -> void:
	button_sfx.play() 


func _on_return_button_button_down() -> void:
	button_sfx.play() 
