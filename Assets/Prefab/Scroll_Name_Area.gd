extends ScrollContainer

export(PackedScene) var Names_PC:PackedScene

onready var Top_Arrow: = $"%Top_Arrow"
onready var Bottom_Arrow: = $"%Bottom_Arrow"
onready var Name_Area: = $"%Names_Contaner"

var Current_Scroll:int = 0
var Selected_Name:int = 13
var Names_Node:Array = []

func _ready():
	Make_Names()
	Focus(Selected_Name)

func _on_Top_Arrow_button_down():
# warning-ignore:narrowing_conversion
	scroll_vertical -= min(90,scroll_vertical)
func _on_Bottom_Arrow_pressed():
	scroll_vertical += 90

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
	scroll_vertical = (val-1) * 90

func Make_Names() ->void:
	Names_Node.resize(99)
	for i in range(1,100):
		var scene = Names_PC.instance()
		Name_Area.add_child(scene)
		if i == Selected_Name:
			scene.Selected()
		scene.Number = i
		scene.Name = "ﻪِﻠَّﻟﭐ ﻢِﺴْﺑِ"
		Names_Node[i-1]=scene

func Select_Name(val:int) ->void:
	Names_Node[Selected_Name-1].UnSelected()
	Selected_Name = val
	Focus(Selected_Name)
