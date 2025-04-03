extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("up"):
		position.y -= 5
	if Input.is_action_pressed("down"):
		position.y += 5
	if Input.is_action_pressed("left"):
		position.x -= 5
	if Input.is_action_pressed("right"):
		position.x += 5




	move_and_slide()
