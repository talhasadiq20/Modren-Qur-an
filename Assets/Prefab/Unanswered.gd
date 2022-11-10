tool
extends TextureRect

export(Array,Texture) var List_texturs:Array

var Answer:int = 0 setget Set_Answer

func _ready():
	Set_Texture()

func Set_Answer(val) ->void:
	Answer = val
	Set_Texture()

func Set_Texture() ->void:
	match Answer:
		0:
			texture = List_texturs[0]
		1:
			texture = List_texturs[1]
			self_modulate = GlobleSettings.Get_Right_Color()
		-1:
			texture = List_texturs[2]
			self_modulate = GlobleSettings.Get_Wrong_Color()
