tool
extends TextureButton

export(String,FILE,"*.tscn") var Last_Sceen

func _get_configuration_warning():
	return "Select Last Scene" if not Last_Sceen else ""

func Go_Back():
	SceneLoader.Fake_Load(Last_Sceen)


func _on_YesBtn_up():
	Go_Back()

func _on_btn_up():
	var tim: = Timer.new()
	add_child(tim)
	tim.start(1)
	yield(tim,"timeout")
	
	Go_Back()
