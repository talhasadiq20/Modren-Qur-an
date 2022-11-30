extends Control

onready var header: = $"%H1"
onready var Arabic2Lang: = $"%H2"
onready var Fast_Meaning: = $"%H3"
onready var Detail: = $"%P"
onready var menuButton: = $MenuButton
onready var likebtn: = $"%Like_btn"
onready var Done_btn: = $"%Done_Button"
onready var Anim_Player: = $AnimationPlayer
onready var Note_btn: = $"%Note_Btn"
onready var Note_Area: = $"%Notes"

var Current_name: = ""

func _ready():
	yield(get_tree(),"idle_frame")
	$NameMenu.New_Name_Selected()

func _on_New_Name(arabic_Name, arabic2Lang, meaning, detail, number):
	header.text = arabic_Name
	Arabic2Lang.text = arabic2Lang
	Fast_Meaning.text = meaning
	Detail.text = detail.replace("\n","\n    ")
	Save.Reading_Allah_Name = number
	if Current_name != "":
		Click_Menu()
	Current_name = arabic_Name
	if Save.Is_Name_Fav(): likebtn.Like()
	else: likebtn.reset()
	Done_btn.Is_Done = bool(Save.Get_Name_Level(number))
	if Save.Has_Note(number):
		Note_Area.Update_Note(Save.Get_Note(number))
	else:
		Note_Area.Update_Note("")

func _on_Name_Area_pressed():
	Click_Menu()

func Click_Menu()->void:
	menuButton._on_MenuButton_pressed()
	menuButton._on_pressed()

func _on_Clicked_Like_btn(liked):
	if liked:
		Save.Add_Fav_Name()
	else:
		Save.Remove_Fav_Name()

func _on_Done_Button_Clicked(stat):
	if stat:
		Save.Level_Up_Name(Save.Reading_Allah_Name)
	else:
		Save.Forgot_Name(Save.Reading_Allah_Name)

func _on_Cliked_Note_Btn(_Stats):
	Anim_Player.play("Show_Notes")

func _on_Notes_New_note(Note):
	Anim_Player.play_backwards("Show_Notes")
	Save.Add_Note(Save.Reading_Allah_Name,Note)
	Note_btn.Note = false
	Note_btn._Play_Revese()
