extends TextureRect

var Name:String = "ﻪِﻠَّﻟﭐ ﻢِﺴْﺑِ" 
var Number:int = 0
var Detail:String = ""
var Meaning:String = ""
var Arbic2Lang:String = "" setget set_Name

onready var Name_Lable: = $Name_Lable
onready var btn1: = $TextureButton
onready var btn2: = $SecondClick

signal new_Selection(Arabic,A2L,meaning,detail,number,Force_Click)

func set_Name(val:String):
	Arbic2Lang = val
	Name_Lable.text = val

func _on_button_down():
	get_parent().get_parent().Select_Name(Number)
	Selected()

func Selected() ->void:
	yield(get_tree(),"idle_frame")
	btn1.disabled = true
	self_modulate = Color(1,1,1,1)
	Name_Lable.self_modulate = Color(1,1,1,1)
	btn2.disabled = false
	btn2.visible = true
	emit_signal("new_Selection",Name,Arbic2Lang,Meaning,Detail,Number,false)

func Second_Click():
	emit_signal("new_Selection",Name,Arbic2Lang,Meaning,Detail,Number,true)

func UnSelected()->void:
	btn1.disabled = false
	btn2.disabled = true
	btn2.visible = false
	self_modulate = Color(1,1,1,0)
	Name_Lable.self_modulate = Color(0.07,0.1,0.16,1)
