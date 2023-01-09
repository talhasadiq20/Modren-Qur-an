extends GridContainer

export(PackedScene) var Clickable_button: = preload("res://Assets/Prefab/Clickable_Lable.tscn")

func New_Answers(Correct:Array,Wrong:Array) ->void:
	var rows: = randi() % 1 + 3
	Correct.shuffle()
	Wrong.shuffle()

	var has_Childs:int = get_children().size()
	
	for i in range(0,rows * 3):
		if i >= has_Childs:
			var ins = Clickable_button.instance()
			add_child(ins)
			yield(get_tree(),"idle_frame")
		var child = get_child(i)
		var rand:float = randf()
		if rand > 0.5:
			if Correct != []:
				child.Set_Lable(Correct.pop_front(),true)
			else:
				child.Set_Lable(Wrong.pop_front(),false)
		else:
			if Wrong != []:
				child.Set_Lable(Wrong.pop_front(),false)
			else:
				child.Set_Lable(Correct.pop_front(),true)
