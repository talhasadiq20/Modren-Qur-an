extends Control

var Showing:bool = false setget set_showing,get_showing

func set_showing(val:bool) ->void:
	if val:
		$AnimationPlayer.play_backwards("Show")
		$AnimationPlayer.playback_speed = 2
	else:
		$AnimationPlayer.play("Show")
		$AnimationPlayer.playback_speed = 1
	Showing = val

func get_showing()->bool:
	return Showing
