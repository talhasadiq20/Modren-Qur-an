extends Control

signal Finished()


func _on_animation_finished(_anim_name):
	emit_signal("Finished")
