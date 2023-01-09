extends Button

signal Wrong_Answer()

var Is_Correct:int = 0 setget Set_Is_Correct
var Is_Correct_Answer:bool = false

onready var Anim: = $AnimationPlayer

func Set_Is_Correct(val:int) ->void:
	match val:
		1:
			self_modulate = GlobleSettings.Get_Right_Color()
			disabled = true
		-1:
			self_modulate = GlobleSettings.Get_Wrong_Color()
			disabled = true
	Is_Correct = val

func Set_Lable(val:String,is_correct_answer:bool,reset:int = 0)->void:
	text = val.capitalize()
	Is_Correct = reset
	disabled = false
	Is_Correct_Answer = is_correct_answer
	self_modulate= Color(1,1,1,1)
	Anim.play_backwards("Was_Correct")
	Anim.seek(0.01,true)

func _on_button_up() -> void:
	self.Is_Correct = 1 if Is_Correct_Answer else -1
	if Is_Correct_Answer:
		self_modulate= Color(1,1,1,0)
	if !Is_Correct_Answer:
		emit_signal("Wrong_Answer")

func forgotten() ->bool:
	if disabled:
		return false
	if Is_Correct_Answer:
		self_modulate = GlobleSettings.Get_Right_Color()
		Anim.play("Was_Correct")
		return true
	return false
