tool
extends ColorRect

export(String,FILE,"*.tscn") var Return_Scene

func _get_configuration_warning() -> String:
	return "enter return scene" if not Return_Scene else ""

func _notification(what):
	if what == MainLoop.NOTIFICATION_WM_GO_BACK_REQUEST:
		visible = true


func _on_YesBtn_button_down() -> void:
	SceneLoader.Fake_Load(Return_Scene)


func _on_NoBtn_button_down() -> void:
	visible = false
