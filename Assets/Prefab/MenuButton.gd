extends TextureButton

export(String) var Text:String = "All" 

var Clicked:bool = false

func _ready():
	$Label.text = Text

func _on_pressed():
	if !Clicked:
		$AnimationPlayer.play("Clicked")
	else:
		$AnimationPlayer.play_backwards("Clicked")
	Clicked = !Clicked
