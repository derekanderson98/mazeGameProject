extends Node2D


onready var path_follow : PathFollow2D = $Path2D/PathFollow2D
export var speed = 100

func _process(delta):
	path_follow.offset += speed * delta



func _on_Area2D_body_entered(body):
	if "player" in body.name:
		get_tree().reload_current_scene()
