extends Node


#var singleplayer_difficulty: String = "Easy"

var max_score: int = 5

var player1_name: String = "Player 1"
var player1_color: Color = "Color(0.688, 0, 0.533)"
var player1_speed: int = 10
var cpu_speed: int = 10
var player2_name: String = "Player 1"
var player2_color: Color = "Color(0.688, 0, 0.533)"

var winner 

var difficulty_level: int = 1



func _process(delta: float) -> void:
	set_speed_based_on_difficulty()
	

func set_speed_based_on_difficulty():
	match difficulty_level:
		0:
			player1_speed = 250
			cpu_speed = 200
		1:
			player1_speed = 450
			cpu_speed = 400
		2:
			player1_speed = 550
			cpu_speed = 500
		_:
			print("Invalid difficulty level")


