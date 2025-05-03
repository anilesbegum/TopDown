extends Node2D

@onready var leabel = $Label
@onready var timer = $Timer
@onready var total_time_seconds : int = 1260


func _ready() -> void:
	$Timer.start()
