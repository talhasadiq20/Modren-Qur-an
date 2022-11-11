extends TextureButton

export(String) var Title:String = "text"
export(String,FILE) var Next_Scene_Path:String

onready var lable:Label = $"%Label"
onready var timer: = $Timer
onready var anim = $AnimationPlayer
onready var Progress = $"%Progress"
onready var Badge: = $SmallBadge

var Showing_Details:bool = false

func _ready():
	Type_Lable()

func Type_Lable():
	lable.text = Title

func Update_Progress(val:float)->void:
	Progress.value = val

func _on_button_down():
	if !Showing_Details:
		timer.start()
	else:
		anim.play_backwards("Show_Details")
		anim.playback_speed = 1.5
		yield(anim,"animation_finished")
		Showing_Details = false

func _on_Icons_button_up():
	if Showing_Details:
		return
	else:
		timer.stop()
		SceneLoader.Fake_Load(Next_Scene_Path)

func _on_timeout():
	if !Showing_Details:
		anim.play("Show_Details")
		anim.playback_speed = 1
		Showing_Details = true

func Set_Level(val:int):
	if val >0:
		Badge.level = val
	else:
		Badge.modulate = Color(1,1,1,0)
