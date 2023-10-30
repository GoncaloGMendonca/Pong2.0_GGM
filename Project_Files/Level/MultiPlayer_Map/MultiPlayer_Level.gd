extends Node

var player1_score := 0
var player2_score := 0
var paused = false


@onready var player_2_score: Label = %Player2_Score
@onready var player_label: Label = %PlayerScore
@onready var ball := %Ball as Ball
@onready var countdown_timer: Timer = %"Countdown Timer"
@onready var count_down_label: Label = %CountDownLabel
@onready var score_sound: AudioStreamPlayer = %ScoreSound
@onready var multi_p_1_label: Label = %Multi_P1_Label
@onready var multi_p_2_label: Label = %Multi_P2_Label
@onready var pause_menu: Control = %PauseMenu
@onready var timer_gamemode_label: Label = %Timer_Gamemode_Label
@onready var timer_gamemode: Timer = %Timer_Gamemode



var main_menu_scene: PackedScene

func _ready() -> void:
	multi_p_1_label.text = GameManager.player1_name
	multi_p_2_label.text = GameManager.player2_name
	main_menu_scene = ResourceLoader.load("res://UI_Menus/Main_Menu/main_menu.tscn")
	


func _process(_delta: float) -> void:
	if GameManager.IsTimemode:
		timer_gamemode_label.show()
		GameManager.max_score = 999999
		
	else:
		timer_gamemode_label.hide()
		
	
	timer_gamemode_label.text = str(ceil(timer_gamemode.time_left))
	
	count_down_label.text = str(ceil(countdown_timer.time_left))
	
	if Input.is_action_just_pressed("pause"):
		pauseMenu()

func pauseMenu():
	if paused:
		pause_menu.hide()
		Engine.time_scale = 1 
	else:
		pause_menu.show()
		Engine.time_scale = 0 
		
	paused = !paused 

func check_game_end() -> void:
	if player1_score >= GameManager.max_score:
		GameManager.winner = GameManager.player1_name 
		game_end("Player")
	elif player2_score >= GameManager.max_score:
		GameManager.winner = GameManager.player2_name 
		game_end("Opponent")

func game_end(_winner) -> void:
	get_tree().change_scene_to_file("res://UI_Menus/Results_Menu/results_menu.tscn")
	

func _on_wall_left_body_entered(body: Node2D) -> void:
	if body is Ball:
		body.position = get_viewport().size / 2
		ball.stop_moving()
		countdown_timer.start()
		count_down_label.show()
		player2_score += 1
		player_2_score.text = str(player2_score)
		score_sound.play()
		check_game_end()

func _on_wal_right_body_entered(body: Node2D) -> void:
	if body is Ball:
		body.position = get_viewport().size / 2
		ball.stop_moving()
		countdown_timer.start()
		count_down_label.show()
		player1_score += 1
		player_label.text = str(player1_score)
		score_sound.play()
		check_game_end()

func _on_countdown_timer_timeout() -> void:
	ball.start_moving()
	count_down_label.hide()



func _on_timer_gamemode_timeout() -> void:
	if player1_score >= player2_score:
		GameManager.winner = GameManager.player1_name 
		game_end("Player 1")
	elif player2_score >= player1_score:
		GameManager.winner = GameManager.player2_name 
		game_end("Player 2")
