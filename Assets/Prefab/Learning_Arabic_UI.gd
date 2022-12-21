extends TextureRect
class_name Arabic_Language_Level

export(int,0,2) var Learn_Status:int = 0
export(String) var Title:String = "Enter Title"
export(String) var Detail:String = "Enter Details"
export(String,FILE,"*.tscn") var Next_Scene:String = ""

var Progress:int = 0 setget Set_Learn_Stat
var Level:int = 0 setget Set_Level
var Showing_Quick_Test: = false
var Is_hover: = false

onready var Tex: = $"%Back Dia"
onready var Progress_UI: = $"%Progress"
onready var Level_UI: = $"%Level"
onready var Title_UI: = $"%Title"
onready var Detail_UI: = $"%Details"
onready var Underline_UI: = $"%UnderLine"
onready var Lesson_Name_UI: = $"%Lesson_Name"
onready var Hold_Timer_UI: = $"%HoldTimer"
onready var Anim_Quick_Test: = $"%QuickTestAnim"
onready var Main_btn: = $"%Main_Btn"
onready var Quick_Test_UI: = $"%Quick test"

signal Current_Learning(num)
signal Clicked_Level()

func _ready():
	Set_Title(Title)
	Set_Detail(Detail)
#	Set_Learn_Stat(Learn_Status)
	Quick_Test_UI.modulate = Color(1,1,1,0)

func Set_Level(val):
	Level = val
	Level_UI.text = str(Level)

func Set_Learn_Stat(val) ->void:
	Learn_Status = val
	Tex.Set_Status(val)
	if Learn_Status == 1:
		emit_signal("Current_Learning",Level)
	
	Progress_UI.visible = true if val == 1 else false
	
	Level_UI.visible = false if val == 0 else true
	Level_UI.rect_scale = Vector2(2,2) if val == 2 else Vector2(1.5,1.5)
	
	Lesson_Name_UI.visible = false if val == 0 else true
	Set_Detail(Detail if val == 2 else "")
	Underline_UI.visible = false if Detail == "" else true
	
	Main_btn.disabled = true if val == 0 else false
	
	Quick_Test_UI.visible = true if val == 2 else false

func Set_Progress(val:int)->void:
# warning-ignore:narrowing_conversion
	val = min(Progress_UI.max_value,val)
	Progress = val
	Progress_UI.value = val

func Set_Title(title:String)->void:
	title = title.capitalize()
	Title = title
	Title_UI.text = title

func Set_Detail(detail:String)->void:
	detail = detail.capitalize()
	Detail = detail
	Detail_UI.text = detail

func _on_Btn_up():
	if !Is_hover:
		return
	if Level == 2:
		return
	if Next_Scene != "":
		SceneLoader.Fake_Load(Next_Scene)

func _on_Btn_button_hold_down():
	Hold_Timer_UI.start(1)
	Is_hover = true
	emit_signal("Clicked_Level")

func _on_HoldTimer_timeout():
	if !Showing_Quick_Test:
		Quick_Test_UI.modulate = Color(1,1,1,1)
		Is_hover = false
		Anim_Quick_Test.play("Show")
		Showing_Quick_Test = true
		Hold_Timer_UI.start(15)
	elif Showing_Quick_Test:
		Hide_Hover()

func Hide_Hover():
	Anim_Quick_Test.play_backwards("Show")
	Showing_Quick_Test = false
	yield(Anim_Quick_Test,"animation_finished")
	Quick_Test_UI.modulate = Color(1,1,1,0)

func _on_Reset_Test_btn_down() -> void:
	ProgessData.Set_Arabic_Language_Progress(0)
	ProgessData.Set_Arabic_Level(Level)
