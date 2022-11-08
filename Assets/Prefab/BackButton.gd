extends TextureButton
tool
export(String,FILE,"*.tscn") var scene

func _get_configuration_warning():
	if not scene:
		return "Select the return Scene" 
	return ""

func _on_pressed():
	$AnimationPlayer.play("Clicked")
	yield($AnimationPlayer,"animation_finished")
	SceneLoader.Fake_Load(scene)
