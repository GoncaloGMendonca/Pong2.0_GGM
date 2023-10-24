extends CharacterBody2D

@export var speed := 400

var direction := 0.0 

@onready var start_position := position

	
func _physics_process(_delta: float) -> void:
	position.x = 0
	velocity.y = direction * speed
	move_and_slide()
	position.x = start_position.x

func _unhandled_input(_event: InputEvent) -> void:
	direction = Input.get_axis("ui_up","ui_down")
