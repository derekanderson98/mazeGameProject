extends Node2D


export var keys = 0;


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Key_key_obtained():
	keys += 1
	$KeyTracker.text = "Keys: " + str(keys)


func _on_Door_key_used():
	keys -= 1
	$KeyTracker.text = "Keys: " + str(keys)
