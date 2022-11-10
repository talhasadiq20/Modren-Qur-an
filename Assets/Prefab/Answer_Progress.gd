extends HBoxContainer

export(PackedScene) var Boxes

var Total_Questions:int = 10 setget set_Total_Questions
var Question_Array:Array = []

func set_Total_Questions(val):
	Total_Questions = val
	Place_Boxes()

func _ready():
	Place_Boxes()

func Place_Boxes():
	for child in get_children():
		child.queue_free()
	Question_Array.clear()
	for _i in range(Total_Questions):
		var ins = Boxes.instance()
		add_child(ins)
		Question_Array.append(ins)

func Question_Answer(Number:int,Correct:bool) ->void:
	var Selected_box = Question_Array[Number]
	Selected_box.Answer = 1 if Correct else -1
