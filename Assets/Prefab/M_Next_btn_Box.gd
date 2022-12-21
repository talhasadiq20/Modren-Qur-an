tool
extends TextureButton

export(String,FILE,"*.tscn") var Next_Scene:String
export(bool) var Is_Last_Scene:bool = false
export(int,0,6) var Progress_Level = 0

onready var Timmer: = $"%Timer"
onready var Anim: = $"%AnimationPlayer"

func _get_configuration_warning() -> String:
	if Is_Last_Scene:
		$TextureRect.visible = false
		$Label.visible = true
		return ""
	$TextureRect.visible = true
	$Label.visible = false
	return "Enter Next Scene" if not Next_Scene else ""

func _ready() -> void:
	if Is_Last_Scene:
		$TextureRect.visible = false
		$Label.visible = true
	else:
		$TextureRect.visible = true
		$Label.visible = false

func _on_Next_btn_down() -> void:
	disabled = true
	if $bg.visible:
		Anim.play("End")
		yield(Anim,"animation_finished")
		Timmer.start(2)
		yield(Timmer,"timeout")
	if not Is_Last_Scene:
		if get_tree().change_scene(Next_Scene) == OK:
			return
	ProgessData.Set_Arabic_Language_Progress(Progress_Level)
	if get_tree().change_scene("res://Assets/Screens/Learn_Arabic.tscn") == OK:
			return
