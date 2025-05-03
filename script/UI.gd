extends Control

var time : int = 0


func _ready() -> void:
	$Timer.start()



func _process(delta: float) -> void:
	$Kill.text = "Kills : " + str(GlobalVars.score)
	$Time.text = "Time : " + str(time)


func _on_timer_timeout() -> void:
	time += 1
