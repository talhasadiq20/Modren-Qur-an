extends VBoxContainer

func _ready():
	var Language_Level: = 1
	var Current_level: = ProgessData.Current_Arabic_Levels + 1
	ProgessData.Total_Arabic_Levels = get_children().size()
	for i in range(get_children().size()-1,-1,-1):
		var child = get_child(i)
		if child is Arabic_Language_Level:
			child.Level = Language_Level
			if Language_Level < Current_level:
				child.Set_Learn_Stat(2)
			elif Language_Level == Current_level:
				child.Set_Learn_Stat(1)
				child.Set_Progress(ProgessData.Current_Arabic_Progress)
			else:
				child.Set_Learn_Stat(0)
			Language_Level += 1
