extends Control

onready var Arabic_Name: = $"%ArabicLabel"
onready var Arabic2Lang: = $"%Ar-Eng"
onready var Meaning: = $"%Short_Trans"
onready var Anim: = $AnimationPlayer

var Playing_in_reverse:bool = false
var Current_Arabic_Name:String = ""
var Current_Arabic2Lang:String = ""
var Current_Meaning:String = ""
var Current_Detail:String = ""
var Current_Name_Number:int = 0

signal New_Name(arabic_Name,arabic2Lang,meaning,detail)

var Showing:bool = false setget set_showing,get_showing

func set_showing(val:bool) ->void:
	if val:
		$AnimationPlayer.play_backwards("Show")
		$AnimationPlayer.playback_speed = 2
	else:
		$AnimationPlayer.play("Show")
		$AnimationPlayer.playback_speed = 1
	Showing = val

func get_showing()->bool:
	return Showing

func New_Selection(_name,_arbic2Lang,_meaning,_detail,_number,_forced_new)->void:
	Anim.play("New_Name_Display")
	Current_Arabic_Name = _name
	Current_Arabic2Lang = _arbic2Lang
	Current_Meaning = _meaning
	Current_Detail = _detail
	Current_Name_Number = _number
	if _forced_new:
		New_Name_Selected()

func _on_animation_finished(anim_name):
	match anim_name:
		"New_Name_Display":
			Arabic_Name.text = Current_Arabic_Name
			Arabic2Lang.text = Current_Arabic2Lang
			Meaning.text = Current_Meaning
			if !Playing_in_reverse:
				Anim.play_backwards("New_Name_Display")
				Playing_in_reverse = true
			else: Playing_in_reverse = false

func New_Name_Selected():
	emit_signal("New_Name",Current_Arabic_Name,Current_Arabic2Lang,Current_Meaning,Current_Detail,Current_Name_Number)
