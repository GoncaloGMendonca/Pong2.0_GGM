extends Control


@onready var p_1_name_input: TextEdit = %P1_NameInput
@onready var p_1_color_picker: ColorPickerButton = %P1_ColorPicker

@onready var p_2_name_input: TextEdit = %P2_NameInput
@onready var p_2_color_picker: ColorPickerButton = %P2_ColorPicker

@onready var m_max_score_input: TextEdit = %M_MaxScore_Input


func _on_start_game_multi_button_pressed() -> void:
	GameManager.player1_name = p_1_name_input.text
	GameManager.player1_color = p_1_color_picker.color
	GameManager.player2_name = p_2_name_input.text
	GameManager.player2_color = p_2_color_picker.color
	GameManager.max_score = m_max_score_input.text.to_int()
	get_tree().change_scene_to_file("res://Level/MultiPlayer_Map/MultiPlayer_Scene.tscn")
