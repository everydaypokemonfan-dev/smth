extends Area2D
@onready var sprite2d = $"../../player/sprite2d"

func _on_body_entered(body: Node2D) -> void:
		pass # Replace with function body.
		if body.is_in_group("player"):
			sprite2d.play("evolve")
