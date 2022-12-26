extends ScrollContainer

func _on_Learning_Focus(num):
	var list:Array = $VBoxContainer.get_children()
	num = max(1,num -1)
	yield(get_tree(),"idle_frame")
	ensure_control_visible(list[list.size()-num])

func _on_Clicked_Level_btn():
	for child in $VBoxContainer.get_children():
		if child is Arabic_Language_Level:
			child.Hide_Hover()
