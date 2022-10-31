extends TextureButton

export(String) var Title:String = "text"
export(String,FILE) var Next_Scene_Path:String

onready var lable:Label = $"%Label"
onready var timer: = $Timer
onready var anim = $AnimationPlayer

var Showing_Details:bool = false

func _ready():
	Type_Lable()

func Type_Lable():
	lable.text = Title

func _on_button_down():
	if !Showing_Details:
		timer.start()
	else:
		anim.play_backwards("Show_Details")
		yield(anim,"animation_finished")
		Showing_Details = false

func _on_Icons_button_up():
	if Showing_Details:
		return
	else:
		print("run")
		timer.stop()
		SceneLoader.Load_Scene(Next_Scene_Path,get_owner())

func _on_timeout():
	if !Showing_Details:
		anim.play("Show_Details")
		Showing_Details = true
