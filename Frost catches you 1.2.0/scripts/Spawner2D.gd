extends Position2D

export var enemy_scene: PackedScene = load("res://scenes/frost.tscn")
onready var spawnArea = $CollisionShape2D.shape.extends
onready var origin = $CollisionShape2D.global_position - spawnArea

func spawn_enemy(_enemy_scene := enemy_scene) -> void:
	var enemy := _enemy_scene.instance() as Node2D
	add_child(enemy)
	enemy.set_as_toplevel(true)
	enemy.global_position = gen_random_pos()

func gen_random_pos():
	var x = rand_range(origin.x, spawnArea.x)
	var y = rand_range(origin.y, spawnArea.y)
	
	return Vector2(x, y)
