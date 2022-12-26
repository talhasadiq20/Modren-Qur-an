extends VBoxContainer

func _ready():
	var Language_Level: = 1
	var Review_Level: = 1
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
		if child is Arabic_Language_Review:
			child.Set_Chapter(Review_Level)
			Review_Level += 1
	
	var is_Finished_Chapter: = false
	for child in get_children():
		if child is Arabic_Language_Level and not is_Finished_Chapter:
			is_Finished_Chapter = child.Learn_Status == 2
		if child is Arabic_Language_Review and is_Finished_Chapter:
			child.Unlock()
