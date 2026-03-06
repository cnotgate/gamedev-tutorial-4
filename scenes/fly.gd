extends RigidBody2D

@export var sceneName = "LoseScreenLvl2"

func _on_FlyArea_body_entered(body):
	if body.get_name() == "Player":
		get_tree().change_scene_to_file(str("res://scenes/" + sceneName + ".tscn"))
	else:
		call_deferred("queue_free")
		
		
func _physics_process(delta: float) -> void:
	linear_velocity = Vector2(-400, 0)
