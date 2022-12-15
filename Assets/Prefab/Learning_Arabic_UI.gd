extends TextureRect

export(int,0,2) var Learn_Status:int = 0
export(String) var Title:String = "Enter Title"
export(String) var Detail:String = "Enter Details"
export(String,FILE,"*.tscn") var Next_Scene:String = ""

var Progress:int = 0 setget Set_Learn_Stat
var Level:int = 0 setget Set_Level

onready var Tex: = $"%Back Dia"
onready var Progress_UI: = $"%Progress"
onready var Level_UI: = $"%Level"
onready var Title_UI: = $"%Title"
onready var Detail_UI: = $"%Details"
onready var Underline_UI: = $"%UnderLine"
onready var Lesson_Name_UI: = $"%Lesson_Name"

signal Current_Learning(num)

func _ready():
	Set_Title(Title)
	Set_Detail(Detail)
	Set_Learn_Stat(Learn_Status)

func Set_Level(val):
	Level = val
	Level_UI.text = str(Level)
	
	if Learn_Status == 1:
		emit_signal("Current_Learning",Level)

func Set_Learn_Stat(val) ->void:
	Learn_Status = val
	Tex.Set_Status(val)
	
	Progress_UI.visible = true if val == 1 else false
	
	Level_UI.visible = false if val == 0 else true
	Level_UI.rect_scale = Vector2(2,2) if val == 2 else Vector2(1.5,1.5)
	
	Lesson_Name_UI.visible = false if val == 0 else true
	Set_Detail(Detail if val == 2 else "")
	Underline_UI.visible = false if Detail == "" else true

func Set_Progress(val:int)->void:
# warning-ignore:narrowing_conversion
	val = min(Progress_UI.max_value,val)
	Progress = val
	Progress_UI.value = val

func Set_Title(title:String)->void:
	Title = title
	Title_UI.text = title

func Set_Detail(detail:String)->void:
	Detail = detail
	Detail_UI.text = detail

func _on_Btn_up():
	if Next_Scene != "":
		SceneLoader.Fake_Load(Next_Scene)
