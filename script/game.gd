extends Node2D


var enemy_scene = preload("res://scenes/enemy.tscn")
var gnemy_scence = preload("res://scenes/genemy.tscn")


@onready var player = $Player



func _on_timer_timeout() -> void:
	var enemy = enemy_scene.instantiate()
	
	enemy.global_position = player.global_position
	
	
	while  enemy.global_position.distance_squared_to(player.global_position) < 10000:
		enemy.global_position.x = randi_range(0, get_viewport_rect().size.x)
		enemy.global_position.y = randi_range(0, get_viewport_rect().size.y)

	add_child(enemy)



func _on_timer_3_timeout() -> void:
	var Genemy = enemy_scene.instantiate()


	Genemy.global_position = player.global_position
	
	
	while  Genemy.global_position.distance_squared_to(player.global_position) < 10000:
		Genemy.global_position.x = randi_range(0, get_viewport_rect().size.x)
		Genemy.global_position.y = randi_range(0, get_viewport_rect().size.y)


	add_child(Genemy)
