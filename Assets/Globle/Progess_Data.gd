extends Node

var Allah_Name_Learned:int = 0 setget Leared_New_Name
var Allah_Name_Progress:float = 0.0
var Over_All_Progress:float = 0.0

func Leared_New_Name(val:int) -> void:
	Allah_Name_Learned += val
	Update_Allah_Name_Progress()

func Update_Allah_Name_Progress()->void:
	Allah_Name_Progress = (float(Allah_Name_Learned) / 99.0) * 100.0
