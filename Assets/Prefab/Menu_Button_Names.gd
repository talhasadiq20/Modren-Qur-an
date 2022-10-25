extends TextureRect

var Name:String = "ﻪِﻠَّﻟﭐ ﻢِﺴْﺑِ" 
var Number:int = 0
var Detail:String = ""
var Meaning:String = ""
var Arbic2Lang:String = "" setget set_Name

onready var Name_Lable: = $Name_Lable
onready var btn: = $TextureButton

signal new_Selection(Arabic,A2L,meaning)

func set_Name(val:String):
	Arbic2Lang = val
	Name_Lable.text = val

func _on_button_down():
	get_parent().get_parent().Select_Name(Number)
	Selected()

func Selected() ->void:
	btn.disabled = true
	self_modulate = Color(1,1,1,1)
	Name_Lable.self_modulate = Color(1,1,1,1)
	emit_signal("new_Selection",Name,Arbic2Lang,Meaning,Detail)

func UnSelected()->void:
	btn.disabled = false
	self_modulate = Color(1,1,1,0)
	Name_Lable.self_modulate = Color(0.07,0.1,0.16,1)
