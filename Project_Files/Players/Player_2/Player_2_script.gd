extends CharacterBody2D

@export var speed := 400

var direction := 0.0 

@onready var start_position := position


func _ready() -> void:
	get_node("Player_Sprite").modulate = GameManager.player2_color

func _physics_process(_delta: float) -> void:
	velocity.y = direction * speed
	move_and_slide()
	position.x = start_position.x

func _unhandled_input(_event: InputEvent) -> void:
	direction = Input.get_axis("move_up","move_down")


