extends Control

var Process_showed:bool = false
var Status:int = 0

func _ready():
	Status = 1
	yield(get_tree(),"idle_frame")

func Set_Progress(val:float) -> void:
	var progress_bar: = $"%ProgressBar"
	progress_bar.value = val

func Is_Finished()->bool:
	return true if !Status else false

func Bye_Bye()->void:
	Set_Progress(100)
	Status = 1
	$AnimationPlayer.play("Bye_Bye")

func _on_animation_finished(_anim_name):
	Status = 0
