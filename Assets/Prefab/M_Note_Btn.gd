extends TextureRect

signal Cliked_Note_Btn(Stats)

onready var Anim: = $AnimationPlayer

var Note:bool = false

func Has_Note():
	Note = true
	Anim.play("Click")
	Anim.seek(0.95,true)

func Dont_Have_Note():
	Note = false
	Anim.play_backwards("Click")
	Anim.seek(0.05,true)

func _Play_Revese():
		Anim.play_backwards("Click")

func _on_button_down():
	if !Note:
		Note = true
		Anim.play("Click")
		yield(Anim,"animation_finished")
		emit_signal("Cliked_Note_Btn",Note)
	else:
		Note = false
		Anim.play_backwards("Click")
		yield(Anim,"animation_finished")
		emit_signal("Cliked_Note_Btn",Note)
