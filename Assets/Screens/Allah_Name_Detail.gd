extends Control

onready var header: = $"%H1"
onready var Arabic2Lang: = $"%H2"
onready var Fast_Meaning: = $"%H3"
onready var Detail: = $"%P"
onready var menuButton: = $MenuButton
onready var likebtn: = $"%Like_btn"
onready var Done_btn: = $"%Done_Button"

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
		ProgessData.Allah_Name_Learned = 1
	else:
		Save.Level_Down_Name(Save.Reading_Allah_Name)
