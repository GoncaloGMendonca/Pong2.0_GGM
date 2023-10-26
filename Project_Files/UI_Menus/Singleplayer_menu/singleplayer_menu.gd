extends Control


@onready var p_1_name_input: TextEdit = %P1_NameInput
@onready var p_1_color_picker: ColorPickerButton = %P1_ColorPicker
@onready var max_score_input: TextEdit = %MaxScore_Input




func _on_start_game_single_button_pressed() -> void:
	GameManager.player1_name = p_1_name_input.text
	GameManager.player1_color = p_1_color_picker.color
	GameManager.max_score = max_score_input.text
	get_tree().change_scene_to_file("res://Level/node.tscn")


func _on_backto_main_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://UI_Menus/Main_Menu/main_menu.tscn")
