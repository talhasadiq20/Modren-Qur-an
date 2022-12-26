tool
extends TextureButton

signal Clicked(val)
export(String) var Title
export(int,0,3) var Num
export(bool) var Is_Selected: = false

onready var lable: = $"%Label"

func _get_configuration_warning() -> String:
	if not Title:
		return "Enter Title Name"
	if not Num:
		return "Enter Number"
	lable.text = Title.capitalize()
	return ""

func _ready() -> void:
	lable.text = Title.capitalize()
	Set_Is_Selected(Is_Selected)

func _on_button_up() -> void:
	emit_signal("Clicked",Num)

func Set_Is_Selected(val) ->void:
	Is_Selected = val
	if val:
		self_modulate = Color(1,1,1,1)
	else:
		self_modulate = Color(1,1,1,0)
