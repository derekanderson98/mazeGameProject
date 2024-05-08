extends KinematicBody2D

export var speed = 20

var velocity = Vector2(0, 0)

func _physics_process(delta):
	var direction = Input.get_vector("player_left", "player_right", "player_up", "player_down")
		
	velocity.x = direction.x * speed
	velocity.y = direction.y * speed
	move_and_slide(velocity, Vector2.ZERO)
