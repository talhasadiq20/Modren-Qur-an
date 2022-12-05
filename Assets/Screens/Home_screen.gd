extends Control

export(NodePath) var Allah_Names
export(NodePath) var Current_Dock_Btn

onready var Particals:Array = [$Star_Particals,$Star_Particals2]

func _ready():
	get_node(Allah_Names).Update_Progress(ProgessData.Allah_Name_Progress)
# warning-ignore:integer_division
	var Allah_Names_Level:int = Get_Over_All_Level(Save.Names_Level) / ProgessData.Total_Names
	get_node(Allah_Names).Set_Level(Allah_Names_Level)
	Update_Partical_Progress()

func Update_Partical_Progress():
	var progress = ProgessData.Over_All_Progress
	for par in Particals:
		par.Show_Particals = (progress/100.0) * 120.0

func _notification(what):
	if what == MainLoop.NOTIFICATION_WM_GO_BACK_REQUEST:
		get_tree().quit()
		get_tree().queue_free()

func Get_Over_All_Level(dic:Dictionary) ->int:
	var progress:float = 0
	for key in dic:
		progress += dic[key]
	return int(progress)

func _on_dock_button_down():
	get_node(Current_Dock_Btn).Deactivate()
