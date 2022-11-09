extends TextureButton

onready var anim: = $AnimationPlayer

var Is_Done:bool = false setget Set_Done

signal Clicked(stat)

func Set_Done(val:bool) ->void:
	Is_Done = val
	if val:
		anim.play("Done")
		anim.seek(0.95,true)
	else:
		anim.play_backwards("Done")
		anim.seek(0.05,true)

func _on_button_down():
	if Is_Done:
		anim.play_backwards("Done")
		Is_Done = false
	else:
		Is_Done = true
		anim.play("Done")
	emit_signal("Clicked",Is_Done)
