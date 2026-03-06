extends Button

@export var sceneName: String = "Level2"

func _button_pressed():
	get_tree().change_scene_to_file(str("res://scenes/" + sceneName + ".tscn"))
