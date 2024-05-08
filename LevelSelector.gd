extends Button


export var level = "res://level1.tscn"




func _on_Button_pressed():
	get_tree().change_scene(level)
