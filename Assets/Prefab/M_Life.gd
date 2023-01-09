extends Label

onready var Anim: = $AnimationPlayer

func _ready() -> void:
	text = str(Save.Current_life)

func Life_Lost() -> bool:
	var can_continue:bool = bool(Save.Lost_Life())
	Input.vibrate_handheld()
	Anim.play("Life_Lost")
	text = str(Save.Current_life)
	yield(Anim,"animation_finished")
	return can_continue
