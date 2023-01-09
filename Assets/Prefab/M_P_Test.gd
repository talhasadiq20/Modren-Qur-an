extends Control

onready var Progress_Tex: = $"%Current_Question_Number"
onready var Progress_Lable: = $"%Progress_Label"
onready var Answer_Dots: = $"%Answer_Progress"
onready var timer: = $"%timer"
onready var Answers_MCQs:Array = [$"%Op_A",$"%Op_B",$"%Op_C",$"%Op_D"]
onready var Question_Lable: = $"%Question"
onready var Dis_Lable: = $"%Dis"
onready var Next_btn: = $"%NextBtn"
onready var End_Scene: = $"%Test_Over"
onready var Test_Time: = $"%Test_Time"
onready var Anim: = $AnimationPlayer

signal Test_Ended

var Current_Question:int = 1
var Max_Question:int = 1
var Questions:Dictionary
var Asking_Patren: = [] # Holds Number in Order the Questions Are Asked
var Testing_Num:int
var Score:Array = [] # Holds Scores

func Set_Total_Questions(val:int)->void:
	Progress_Tex.max_value = val
	Max_Question = val
	Current_Question = 0
	Next_Question()
	Answer_Dots.Total_Questions = val

func Next_Question()->void:
	Next_btn.visible = false
	Current_Question += 1
	if Current_Question > Questions.size():
		Show_Results()
		return
	Progress_Lable.text = str(Current_Question)+"/"+str(Max_Question)
	Progress_Tex.value = Current_Question
	Testing_Num = Asking_Patren[Current_Question-1]
	Question_Lable.text = Questions[Current_Question-1]["Q"]
	Dis_Lable.visible = true
	if Questions[Current_Question-1]["D"] != "":
		Dis_Lable.text = Questions[Current_Question-1]["D"]
	else:
		Dis_Lable.visible = false
	var Corrent_Answer_At:int = randi() % 4
	var Wrong_Answeres: = Get_Wrong_Answers(Current_Question-1)
	for i in range(4):
		if i != Corrent_Answer_At:
			Answers_MCQs[i].Set_Text(Wrong_Answeres[i])
			Answers_MCQs[i].Answer_Holding = false
		else:
			Answers_MCQs[i].Set_Text(Questions[Current_Question-1]["A"])
			Answers_MCQs[i].Answer_Holding = true

func _on_Answered(Is_Correct):
	Answer_Dots.Question_Answer(Current_Question-1,Is_Correct)
	for box in Answers_MCQs:
		box.disabled = true
		if box.Answer_Holding:
			box.Correct_Answer()
	if Is_Correct:
		Score[Current_Question-1] += 1
	else:
		Score[Current_Question-1] -= 1
	timer.start(1)
	Next_Button_Show(Is_Correct)

func Set_Questions_List(dic:Dictionary) ->void:
	Questions = dic
	for i in dic.size():
		Score.append(0)
		Asking_Patren.append(dic[i]["i"])
	Set_Total_Questions(dic.size())

func Get_Wrong_Answers(Checking:int) ->Array:
	var temp_Answers_Dic:Array = []
	for i in range(Questions.size()):
		if i == Checking:
			continue
		temp_Answers_Dic.append(Questions[i]["A"])
	temp_Answers_Dic.shuffle()
	while temp_Answers_Dic.size() > 4:
		temp_Answers_Dic.remove(4)
	return temp_Answers_Dic

func Next_Button_Show(Is_Correct:bool):
	Next_btn.visible = true
	if Is_Correct:
		Next_btn.modulate = GlobleSettings.Get_Right_Color()
	else:
		Next_btn.modulate = GlobleSettings.Get_Wrong_Color()

func _on_Next_button_down():
	$NextBtn/AnimationPlayer.play("click")
	timer.start(0.5)
	yield(timer,"timeout")
	Next_Question()

func Show_Results():
	emit_signal("Test_Ended")
	End_Scene.visible = true
	var time:int = 4096 - Test_Time.get_time_left()
	End_Scene.time_Played = time
	var Corrent_Answers: = 0
	for val in Score: Corrent_Answers += 1 if val > 0 else 0
	End_Scene.Set_Score(Corrent_Answers,Score.size())
	Anim.play("End_Results")
