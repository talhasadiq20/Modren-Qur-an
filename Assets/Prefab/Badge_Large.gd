extends TextureRect

export(Array,Texture) var tex:Array
var level:int = 0 setget Set_Level

onready var Small_Badge: = $"%SmallBadge"

func Set_Level(val) ->void:
	level = int(floor(val))
	if val > 0:
		modulate = Color(1,1,1,1)
		texture = tex[min(val-1,Save.Max_Levels)]
		Small_Badge.level = val
	else:
		modulate = Color(1,1,1,0)
