tool
extends TextureButton

export(String,FILE,"*.tscn") var Next_Scene
export(bool) var Is_Active:bool = true
export(Array,Texture) var Images:Array = []

onready var tex: = $TextureRect
onready var anim: = $AnimationPlayer

func _get_configuration_warning():
	if not Is_Active:
		return "Enter Next scene" if not Next_Scene else ""
	return "" if Images.size() == 2 else "Add two Images saturated and unsaturated"

func _ready():
	Is_Active_setter(Is_Active)

func Is_Active_setter(val):
	if val:
		rect_scale = Vector2(1,1)
		disabled = true
		tex.texture = Images[0]
		anim.play("hover")
	else:
		rect_scale = Vector2(0.8,0.8)
		disabled = false
		tex.texture = Images[1]
		anim.stop()
	Is_Active = val

func _on_button_down():
	tex.texture = Images[0]
	anim.play_backwards("Deactive")
	yield(anim,"animation_finished")
	Is_Active_setter(true)
	if get_tree().change_scene(Next_Scene) == OK:
		return

func Deactivate():
	tex.texture = Images[1]
	anim.play("Deactive")
	yield(anim,"animation_finished")
	Is_Active_setter(false)
