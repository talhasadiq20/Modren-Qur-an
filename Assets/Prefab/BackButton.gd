extends TextureButton


func _on_pressed():
	$AnimationPlayer.play("Clicked")
