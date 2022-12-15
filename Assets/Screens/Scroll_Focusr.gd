extends ScrollContainer

func _on_Learning_Focus(num):
	var list:Array = $VBoxContainer.get_children()
	num = max(1,num -1)
	yield(get_tree(),"idle_frame")
	ensure_control_visible(list[list.size()-num])
