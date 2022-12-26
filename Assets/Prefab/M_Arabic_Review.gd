extends Control

onready var Anim = $"%AnimationTree".get("parameters/playback")

var current_active:int = 1

func _on_btn_Clicked(val) -> void:
	if val == current_active:
		return
	current_active = val
	Anim.set("parameters/blend_position", val)
	Anim.travel(str(val))
	var child:Array = $bg/VBoxContainer/Btn_Area/HBoxContainer.get_children()
	for i in range(3):
		child[i].Set_Is_Selected(true if i == val -1 else false)
