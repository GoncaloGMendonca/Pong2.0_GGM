extends CharacterBody2D

@export var speed := 450

var direction := 0.0 

@onready var start_position := position


func _ready() -> void:
	get_node("Player_Sprite").modulate = GameManager.player1_color
	speed = GameManager.player1_speed

func _physics_process(_delta: float) -> void:
	velocity.y = direction * speed
	move_and_slide()
	position.x = start_position.x

func _unhandled_input(_event: InputEvent) -> void:
	direction = Input.get_axis("ui_up","ui_down")
