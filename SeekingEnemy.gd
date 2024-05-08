extends KinematicBody2D

var playerDetected = false

export var speed = 20

var velocity = Vector2(0, 0)

func _process(delta):
	if playerDetected:
		var player = get_node("../player")
		var direction = (player.position - self.position).normalized()
		velocity.x = direction.x * speed
		velocity.y = direction.y * speed
	else:
		velocity = Vector2.ZERO
	move_and_slide(velocity, Vector2.ZERO)

func _on_Hitbox_body_entered(body):
	if "player" in body.name:
		get_tree().reload_current_scene()


func _on_VisionArea_body_entered(body):
	if "player" in body.name:
		playerDetected = true


func _on_VisionArea_body_exited(body):
	if "player" in body.name:
		playerDetected = false
