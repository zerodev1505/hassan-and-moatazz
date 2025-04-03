extends CharacterBody2D

@onready var target=$"../player"
var speed=50




func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		var direction=(target.position-position).normalized()
		velocity= direction * speed 
		look_at(target.position)
		move_and_slide()
