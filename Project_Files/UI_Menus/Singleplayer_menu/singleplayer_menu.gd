extends Control


@onready var p_1_name_input: TextEdit = %P1_NameInput
@onready var p_1_color_picker: ColorPickerButton = %P1_ColorPicker
@onready var max_score_input: TextEdit = %MaxScore_Input
@onready var teste_label: Label = $TESTE_LABEL
@onready var button_sfx: AudioStreamPlayer = %button_SFX




func _on_start_game_single_button_pressed() -> void:
	GameManager.player1_name = p_1_name_input.text
	GameManager.player1_color = p_1_color_picker.color
	GameManager.max_score = max_score_input.text.to_int()
	get_tree().change_scene_to_file("res://Level/SinglePlayer_Map/SinglePlayer_Scene.tscn")


func _on_backto_main_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://UI_Menus/Main_Menu/main_menu.tscn")


func _on_option_button_item_selected(index: int) -> void:
	if index == 0:
		GameManager.difficulty_level = 0 
	elif index == 1:
		GameManager.difficulty_level = 1
	elif index == 2:
		GameManager.difficulty_level = 2

#
#func _on_button_pressed() -> void:
#	GameManager.difficulty_level = int(2)
##	GameManager.difficulty_level = 2
###	set_speed_based_on_difficulty()
##	teste_label.set_text("TA PRONTO")
###	print("Difficulty level:", GameManager.difficulty_level)
##	emit_signal("difficulty_level_changed", 2)
##


func _on_start_game_single_button_button_down() -> void:
	button_sfx.play() 


func _on_backto_main_menu_button_down() -> void:
	button_sfx.play() 
