extends TextureButton

var Review_Path:String

func Set_Lable(val:int):
	$Label.text = str(val)

func _on_Review_Banner_btn_up() -> void:
	if not Review_Path:
		print("Path Not Entered")
	SceneLoader.Fake_Load(Review_Path)
