tool
extends Control

export(String,FILE,"1*.tscn") var Scene_1
export(String,FILE,"1*.tscn") var Scene_2
export(String,FILE,"1*.tscn") var Scene_3
export(String,FILE,"1*.tscn") var Scene_4
export(String,FILE,"1*.tscn") var Scene_5

func _get_configuration_warning() -> String:
	if not Scene_1:
		return "Add Scene 1"
	elif not Scene_2:
		return "Add Scene 2"
	elif not Scene_3:
		return "Add Scene 3"
	elif not Scene_4:
		return "Add Scene 4"
	elif not Scene_5:
		return "Add Scene 5"
	return ""

func _ready() -> void:
	var progress: = ProgessData.Current_Arabic_Progress
	var Current_Scene:String
	match progress+1:
		1:
			Current_Scene = Scene_1
		2:
			Current_Scene = Scene_2
		3:
			Current_Scene = Scene_3
		4:
			Current_Scene = Scene_4
		5:
			Current_Scene = Scene_5
	if not Current_Scene:
		ProgessData.Set_Arabic_Language_Progress(progress - 1)
		if get_tree().reload_current_scene():
			return
	if get_tree().change_scene(Current_Scene):
		return
