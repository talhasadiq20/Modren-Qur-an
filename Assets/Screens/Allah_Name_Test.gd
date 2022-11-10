extends "res://Assets/Prefab/M_P_Test.gd"

var Testing_Questions:Dictionary = {}

func _init():
	randomize()
	Empty_List()
	var Levels_List: = Save.Names_Level
	var All_Names: = Allahs_Name.new()
	var Ask_Names: = range(Levels_List.size())
	Ask_Names.shuffle()
	for i in range(7):
		if i >= Ask_Names.size():
# warning-ignore:return_value_discarded
			Testing_Questions.erase(i)
			continue
		if Levels_List[str(Ask_Names[i])] == 0:
			continue
		All_Names.Select_Name(Ask_Names[i])
		Testing_Questions[i]["Q"] = All_Names.Get_Selected_Arabic_Name()
		Testing_Questions[i]["A"] = All_Names.Get_Selected_Meaning()
		Testing_Questions[i]["D"] = All_Names.Get_Selected_Name()
		Testing_Questions[i]["i"] = Ask_Names[i]
	All_Names.queue_free()

func _ready():
	Set_Questions_List(Testing_Questions)

func Empty_List():
	Testing_Questions = {
		0:{
			"Q":"",
			"A":"",
			"D":"",
			"i":0
		},1:{
			"Q":"",
			"A":"",
			"D":"",
			"i":0
		},2:{
			"Q":"",
			"A":"",
			"D":"",
			"i":0
		},3:{
			"Q":"",
			"A":"",
			"D":"",
			"i":0
		},4:{
			"Q":"",
			"A":"",
			"D":"",
			"i":0
		},5:{
			"Q":"",
			"A":"",
			"D":"",
			"i":0
		},6:{
			"Q":"",
			"A":"",
			"D":"",
			"i":0
		},
	}

func _on_Endbtn_down():
	for i in range(Asking_Patren.size()):
		if Score[i] >= 1:
			Save.Level_Up_Name(Asking_Patren[i])
		else:
			Save.Level_Down_Name(Asking_Patren[i])
