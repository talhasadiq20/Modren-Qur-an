extends Control

export(Dictionary) var Questions:Dictionary = {}

onready var Main_Question_UI: = $"%Main"

var Question_order: = []
var Current_Question: = 0
var Correct_Answers:int

onready var Main_UI: = $"%Main"
onready var Test_box_UI: = $"%Test_Block"
onready var Life_UI: = $"%Life"
onready var Lesson_Number_UI: = $"%Lessons"
onready var Main_Timer_UI: = $"%MainTimer"
onready var Test_Over_UI: = $"%Test_Over"
onready var Anim: = $"%AnimationPlayer"
onready var Next_Btn_UI: = $"%M_Next_btn2"


func _ready() -> void:
	Start()

func Start():
#	Question_order.resize(Questions.size())
	Question_order = range(max(Questions.size(),Lesson_Number_UI.Total_Lessons))
	Fraction(Question_order,Questions.size())
	Question_order.shuffle()
	Select_next_question()

func Select_next_question():
	Next_Btn_UI.disabled = false
	Anim.play_backwards("Done")
	Anim.seek(0.01,true)
	var question:String = Questions.keys()[Question_order[Current_Question]] 
	Main_UI.text = question
	Test_box_UI.New_Answers(Questions[question].duplicate(),get_wrong_answers())
	Current_Question += 1

func get_wrong_answers() -> Array:
	var new_array:Array = []
	new_array.clear()
	for i in range(Questions.size()):
		if i == Question_order[Current_Question]:
			continue
		new_array += Questions[Questions.keys()[i]].duplicate()
	return new_array

func _on_Next_button_down() -> void:
	Next_Btn_UI.disabled = true
	var has_wrong_answers: = Has_Answers_Wrong()
	if has_wrong_answers:
		if pick_Correct_Answers():
			Life_UI.Life_Lost()
	else:
		Correct_Answers += 1
	if Current_Question >= Lesson_Number_UI.Total_Lessons or Save.Current_life <= 0:
		End_Game()
		return
	Anim.play("Done")

func _on_Wrong_Answer() -> void:
	Life_UI.Life_Lost()
	if Save.Current_life <= 0 :
		End_Game()

func End_Game():
	Test_Over_UI.visible = true
	Test_Over_UI.Set_time(4096 - Main_Timer_UI.get_time_left())
	if Test_Over_UI.Set_Score(0 if Save.Current_life == 0 else Correct_Answers,Lesson_Number_UI.Total_Lessons):
		ProgessData.Set_Arabic_Language_Progress(ProgessData.Current_Arabic_Progress + 1)

func Fraction(arry:Array,size:float):
	for i in arry.size():
		var val:float = arry[i]
		if val/size < 1.0:
			continue
		else:
			for j in range(i,arry.size()):
				arry[j] -= size
			Fraction(arry,size)
			return

func Has_Answers_Wrong()->bool:
	for btn in Test_box_UI.get_children():
		if btn.disabled and not btn.Is_Correct_Answer:
			return true
		if not btn.disabled and btn.Is_Correct_Answer:
			return true
	return false

func pick_Correct_Answers() -> bool:
	var has_missed:bool = false
	for btn in Test_box_UI.get_children():
		if btn.forgotten():
			has_missed = true
	return has_missed

func _on_Done_button_down() -> void:
	Lesson_Number_UI.Answered(not Has_Answers_Wrong())
	Select_next_question()
