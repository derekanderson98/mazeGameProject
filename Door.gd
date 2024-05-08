extends RigidBody2D


signal key_used

func _on_Area2D_body_entered(body):
	if "player" in body.name && $"../VariableTracker".keys > 0:
		emit_signal("key_used")
		queue_free()
