extends Control

onready var Anim: = $AnimationPlayer
onready var Note: = $"%Note"

var in_focus:bool = false

signal New_note(Note)

func Update_Note(note:String) ->void:
	Note.text = note

func _on_Done_Button_Clicked():
	if not in_focus:
		emit_signal("New_note",Note.text)

func _on_Note_focus_entered():
	if not in_focus:
		in_focus = true
		Anim.play("Focus")

func _on_Note_focus_exited():
	if in_focus:
		Anim.play_backwards("Focus")
		in_focus = false

func _on_button_down():
	_on_Note_focus_exited()
