extends Control

onready var header: = $"%H1"
onready var Arabic2Lang: = $"%H2"
onready var Fast_Meaning: = $"%H3"
onready var Detail: = $"%P"
onready var menuButton: = $MenuButton

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

func _on_Name_Area_pressed():
	Click_Menu()

func Click_Menu()->void:
	menuButton._on_MenuButton_pressed()
	menuButton._on_pressed()
