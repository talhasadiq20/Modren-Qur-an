extends VBoxContainer

func _ready():
	var i: = get_children().size()
	for child in get_children():
		child.Level = i
		i -= 1
