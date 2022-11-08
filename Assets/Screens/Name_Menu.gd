extends Control

export(PackedScene) var Banar
export(String,FILE,"*.tscn") var Names_Detail_Pac

onready var Banar_Parent: = $ScrollContainer/VBoxContainer
onready var scrole: = $ScrollContainer

func _ready():
	var names = Allahs_Name.new()
	for i in range(99):
		var ins = Banar.instance()
		Banar_Parent.add_child(ins)
		ins.Arbic = names.Names[i][GlobleSettings.Get_Arabic()]
		ins.Detail = names.Names[i]["Name"][GlobleSettings.Get_Current_Language()]
		ins.Level = 0
		ins.num = i
		ins.Parent = self
		ins.Scene = Names_Detail_Pac
	yield(get_tree(),"idle_frame")
	scrole.ensure_control_visible(scrole.get_child(0).get_child(Save.Reading_Allah_Name))
	scrole.scroll_vertical += 650 if Save.Reading_Allah_Name > 5 else 0

