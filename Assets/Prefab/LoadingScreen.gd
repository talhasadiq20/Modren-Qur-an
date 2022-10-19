extends Control

onready var Anim_Player: = $AnimationPlayer
onready var Aya_Place: = $"%Title"
onready var Translation_Place: = $"%Meaning"

var Process_showed:bool = false
var Status:int = 0
var Ayat:Dictionary = {
	0:{
		"Ayat":"ﻪِﻠَّﻟﭐ ﻢِﺴْﺑِ",
		"en":"In the Name of Allah"
	}
}

func _ready():
	randomize()
	Status = 1
	Set_Aya()
	yield(get_tree(),"idle_frame")

func Set_Aya()->void:
	var ran = randi() % Ayat.size()
	Aya_Place.text = Ayat[ran]["Ayat"]
	Translation_Place.text = Ayat[ran][GlobleSettings.Get_Current_Language()]

func Set_Progress(val:float) -> void:
	var progress_bar: = $"%ProgressBar"
	progress_bar.value = val

func Is_Finished()->bool:
	return true if !Status else false

func Bye_Bye()->void:
	Set_Progress(100)
	Status = 2
	Anim_Player.play_backwards("Add_Progress_Bar")

func _on_animation_finished(_anim_name):
	if Status == 1:
		Status = 0
	if Status == 2:
		Play_Intro()
	if Status == 3:
		Status = 1

func Play_Intro() ->void:
	Status = 3
	$SkippedButton.disabled = false
	Anim_Player.play("Display_Ayat")

func _on_Skipped_pressed():
	Status = 0
