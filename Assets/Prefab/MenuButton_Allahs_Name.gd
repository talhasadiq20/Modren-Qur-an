extends "res://Assets/Prefab/MenuButton.gd"

onready var Display_Menu: = $"../NameMenu"

var showing: = false

func _on_MenuButton_pressed():
	if showing:
		Display_Menu.Showing = true
	else:
		Display_Menu.Showing = false
	showing = !showing
