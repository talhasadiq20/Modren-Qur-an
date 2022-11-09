extends TextureRect

var Arbic:String = "Text" setget Set_Arabic
var Detail:String = "Text" setget Set_Detail
var Scene:String
var num:int = 0
var Parent
var Level:int = 0 setget Set_Level

onready var Tile_Lable: = $"%Title"
onready var Detail_Lable: = $"%Eng"
onready var Badge: = $"%Badge"
onready var Small_Bage: = $"%SmallBadge"

func Set_Arabic(val):
	Arbic = val
	Tile_Lable.text = val

func Set_Detail(val):
	Detail = val
	Detail_Lable.text = val

func Set_Level(val):
	Level = val
	Small_Bage.level = val
	Badge.level = val

func _on_button_down():
	Save.Reading_Allah_Name = num
	SceneLoader.Fake_Load(Scene)
