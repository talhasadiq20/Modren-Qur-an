extends ScrollContainer

export(PackedScene) var Names_PC:PackedScene

onready var Top_Arrow: = $"%Top_Arrow"
onready var Bottom_Arrow: = $"%Bottom_Arrow"
onready var Name_Area: = $"%Names_Contaner"
onready var Parent: = $"../.."

var Current_Scroll:int = 0
var Selected_Name:int = 0
var Names_Node:Array = []

func _ready():
	Selected_Name = Save.Reading_Allah_Name
	Make_Names()
	Select_Name(Selected_Name)
	Focus(Selected_Name)

func _on_Top_Arrow_button_down():
# warning-ignore:narrowing_conversion
	scroll_vertical -= min(120,scroll_vertical)
func _on_Bottom_Arrow_pressed():
	scroll_vertical += 120

func _process(_delta):
	if scroll_vertical == Current_Scroll:
		return
	Current_Scroll = scroll_vertical
	if Current_Scroll >= 80:
		Top_Arrow.visible = true
		Top_Arrow.disabled = false
	else:
		Top_Arrow.visible = false
		Top_Arrow.disabled = true
	if Current_Scroll <= 190 * 99 - 80:
		Bottom_Arrow.visible = true
		Bottom_Arrow.disabled = false
	else:
		Bottom_Arrow.visible = false
		Bottom_Arrow.disabled = true

func Focus(val:int) ->void:
	scroll_vertical = (val-1) * 160

func Make_Names() ->void:
	var Names_lib: = Allahs_Name.new()
	Names_Node.resize(99)
	for i in range(99):
		var scene = Names_PC.instance()
		Name_Area.add_child(scene)
		
		Names_lib.Select_Name(i)
		scene.Number = i
		scene.Name = Names_lib.Get_Selected_Arabic_Name()
		scene.Detail = Names_lib.Get_Selected_Detail()
		scene.Meaning = Names_lib.Get_Selected_Meaning()
		scene.Arbic2Lang = Names_lib.Get_Selected_Name()
		
		scene.connect("new_Selection",Parent,"New_Selection")
		if i == Selected_Name:
			scene.Selected()
# warning-ignore:return_value_discarded
		Names_Node[i] = scene
	Names_lib.queue_free()

func Select_Name(val:int) ->void:
	Names_Node[Selected_Name].UnSelected()
	Selected_Name = val
