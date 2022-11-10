tool
extends TextureProgress

export(String) var Name:String = "test"
export(String) var Process_Name:String = "Processing"
export(String,FILE,"*.tscn") var Next_Scene:String

onready var Main_Lable: = $Text
onready var Processing_Lable: = $Processing
onready var anim: = $AnimationPlayer

func _get_configuration_warning():
	return "Next Scene not Defined" if not Next_Scene else ""

func _ready():
	Main_Lable.text = Name.capitalize()
	Processing_Lable.text = Process_Name.capitalize() + "..."

func _on_button_down():
	anim.play("click")
	yield(anim,"animation_finished")
	if Next_Scene:
		SceneLoader.Fake_Load(Next_Scene)
