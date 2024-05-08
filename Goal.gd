extends Area2D


export var nextScene = "res://level2.tscn"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Goal_body_entered(body):
	if "player" in body.name:
		get_tree().change_scene(nextScene)
