extends TextureRect

export(Array,Texture) var Textures:Array = []

onready var Lock: = $"%Lock"

func Set_Status(val:int):
	texture = Textures[val]
	if val == 0:
		Lock.Is_Lock = true
	else:
		Lock.visible = false
		Lock.Is_Lock = false
