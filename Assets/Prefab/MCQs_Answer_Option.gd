extends TextureButton

var Answer_Holding:bool = false

signal Answered(Is_Correct)

onready var Text_Lable: = $Label
onready var anim: = $AnimationPlayer

func Set_Text(val:String):
	Text_Lable.text = val
	anim.play_backwards("Click")
	anim.seek(0.05,true)
	self_modulate = Color(1,1,1,1)
	Text_Lable.remove_color_override("font_color")
	disabled = false

func _on_button_up():
	disabled = true
	anim.play("Click")
	yield(anim,"animation_finished")
	emit_signal("Answered",Answer_Holding)
	if Answer_Holding:
		Correct_Answer()
	else:
		Wrong_Answer()

func Correct_Answer():
	var Set_Color: = GlobleSettings.Get_Right_Color()
	self_modulate = Set_Color
	Text_Lable.add_color_override("font_color",Set_Color-Color(0.2,0.2,0.2,0))

func Wrong_Answer():
	var Set_Color: = GlobleSettings.Get_Wrong_Color()
	self_modulate = Set_Color
	Text_Lable.add_color_override("font_color",Set_Color)
