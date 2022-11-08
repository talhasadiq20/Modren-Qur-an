extends Control

export(NodePath) var Allah_Names

onready var Particals:Array = [$Star_Particals,$Star_Particals2]

func _ready():
	get_node(Allah_Names).Update_Progress(ProgessData.Allah_Name_Progress)
	Update_Partical_Progress()

func Update_Partical_Progress():
	var progress = ProgessData.Over_All_Progress
	for par in Particals:
		par.Show_Particals = (progress/100) * 120
