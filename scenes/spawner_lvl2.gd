extends Node2D

@export var obstacle : PackedScene
@export var spawn_time: float = 1.7

func _ready():
	repeat()

func spawn():
	var spawned = obstacle.instantiate()
	get_parent().add_child.call_deferred(spawned)

	var spawn_pos = global_position
	#spawn_pos.x = spawn_pos.x + randf_range(-1000, 1000)
	spawned.global_position = spawn_pos

func repeat():
	spawn()
	await get_tree().create_timer(spawn_time).timeout
	repeat()
