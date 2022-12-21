extends HBoxContainer

export(int) var Total_Lessons:int = 1
export(int) var Current_Lesson:int = 1
export(PackedScene) var dot

func _ready() -> void:
	Add_Dots()

func Add_Dots() ->void:
	for child in get_children():
		child.queue_free()
	for i in range(Total_Lessons):
		var ins = dot.instance()
		add_child(ins)
		ins.Answer = 0
		ins.self_modulate = GlobleSettings.Get_Right_Color() if i == Current_Lesson-1 else Color(1,1,1,1)
