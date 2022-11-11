extends ColorRect
tool
export(String,FILE,"*.tscn") var Last_Sceen


onready var Main_Header: = $"%Main_Header"
onready var Time_Box: = $"%Time_Spend"
onready var Percentage_Box: = $"%Percentage"
onready var Endbtn: = $"%Endbtn"
onready var anim: = $AnimationPlayer

var time_Played:int setget Set_time

func _ready():
	$Endbtn/EndLabel.text = BasicLanguage.Get_Finish()

func Set_time(val):
	var time = convert_sec2min(val)
	Time_Box.Heading = BasicLanguage.Get_Time()
	Time_Box.Dis = time

func convert_sec2min(val:int)->String:
	if val < 60:
		return "00:"+str(val)
	else:
# warning-ignore:integer_division
		var mint: = int(val / 60)
		var sec: = val - (mint*60)
		var mins_str = str(mint) if mint >=10 else "0" + str(mint)
		var sec_str = str(sec) if sec >=10 else "0" + str(sec)
		return mins_str+":"+sec_str

func Set_Score(right_answers:int,total_questions):
# warning-ignore:narrowing_conversion
	var per:int = round((float(right_answers) / float(total_questions)) * 100)
	Percentage_Box.Heading = BasicLanguage.Get_Percentage()
	Percentage_Box.Dis = str(per) + "%"
	if per > 50:
		Main_Header.text = BasicLanguage.Get_Congragulations()
		Endbtn.self_modulate = GlobleSettings.Get_Right_Color()
	else:
		Main_Header.text = BasicLanguage.Get_Try_Again()
		Endbtn.self_modulate = GlobleSettings.Get_Wrong_Color()

func _get_configuration_warning():
	return "Select Last Scene" if not Last_Sceen else ""

func Go_Back():
	SceneLoader.Fake_Load(Last_Sceen)

func _on_YesBtn_up():
	Go_Back()

func _on_btn_up():
	anim.play("Finish_Click")
	yield(anim,"animation_finished")
	Go_Back()
