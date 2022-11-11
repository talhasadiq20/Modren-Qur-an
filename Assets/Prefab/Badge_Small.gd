extends TextureRect

export(Array,Texture) var tex:Array
var level:int = 0 setget Set_Level

func Set_Level(val) ->void:
	level = int(floor(val))
	if val > 0:
		modulate = Color(1,1,1,1)
		texture = tex[min(val-1,Save.Max_Levels)]
	else:
		modulate = Color(1,1,1,0)
