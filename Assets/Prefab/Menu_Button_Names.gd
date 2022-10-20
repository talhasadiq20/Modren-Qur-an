extends TextureRect

var Name:String = "ﻪِﻠَّﻟﭐ ﻢِﺴْﺑِ" setget set_Name
var Number:int = 0
onready var Name_Lable: = $Name_Lable
onready var btn: = $TextureButton

func set_Name(val:String):
	Name = val
	Name_Lable.text = val

func _on_button_down():
	get_parent().get_parent().Select_Name(Number)
	Selected()

func Selected() ->void:
	btn.disabled = true
	self_modulate = Color(1,1,1,1)
	Name_Lable.self_modulate = Color(1,1,1,1)
	
func UnSelected()->void:
	btn.disabled = false
	self_modulate = Color(1,1,1,0)
	Name_Lable.self_modulate = Color(0.07,0.1,0.16,1)
