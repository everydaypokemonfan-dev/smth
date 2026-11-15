extends Area2D
signal enemy_died

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _on_body_entered(body: Sprite2D) -> void:
	if body.name == "Player":
		emit_signal("enemy_died")
		queue_free()
