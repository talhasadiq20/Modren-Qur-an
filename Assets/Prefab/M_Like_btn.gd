extends TextureRect

var Liked:bool = false

onready var anim: = $AnimationPlayer
signal Clicked_Like_btn(status)

func Like():
	anim.play("Like")
	anim.seek(1,true)
	Liked = true
func reset():
	anim.play_backwards("Like")
	anim.seek(0.5,true)
	Liked = false

func _on_button_down():
	if !Liked:
		Liked = true
		emit_signal("Clicked_Like_btn",Liked)
		anim.play("Like")
	else:
		Liked = false
		emit_signal("Clicked_Like_btn",Liked)
		anim.play_backwards("Like")
