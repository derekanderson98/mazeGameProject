extends RigidBody2D

signal key_obtained

func _on_Key1_body_entered(body):
	if "player" in body.name:
		emit_signal("key_obtained")
		queue_free()
