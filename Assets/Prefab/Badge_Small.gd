extends TextureRect

var level:int = 0 setget Set_Level

func Set_Level(val) ->void:
	level = val
	modulate = Color(1,1,1,1)
	match val:
		0:
			modulate = Color(1,1,1,0)
