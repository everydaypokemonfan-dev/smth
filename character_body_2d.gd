extends CharacterBody2D
@onready var target=$"../player/Sprite2D"

var SPEED = 2000
func _on_body_entered(body: Node2D) -> void:
	if body.name == "$../player/Sprite2D" or body.is_in_group("$../player/Sprite2D"):
		var follow=func _physics_process(delta: float) -> void:
			var direction=(target.position-position).normalized()
			velocity=direction * SPEED
			look_at(target.position)
		move_and_slide()
