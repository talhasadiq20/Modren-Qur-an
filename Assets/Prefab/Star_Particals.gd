extends CPUParticles2D

var Show_Particals = 40 setget Set_Parricals

onready var small_p: = $Star_Particals_S
onready var mid_p: = $Star_Particals_M

func Set_Parricals(val:int) ->void:
	randomize()
# warning-ignore:integer_division
	var div: = float(val) / 3.0
#large Particals
	if div / 2.0 < 1.0:
		emitting = false
	else:
		emitting = true
		amount = int(div / 2.0)
		rotation_degrees = randi() % 360
#Mid Particals
	if div < 1.0:
		mid_p.emitting = false
	else:
		emitting = true
		mid_p.amount = int(div)
		mid_p.rotation_degrees = randi() % 360
#Small Particals
	if div * 3.0 < 1.0:
		small_p.emitting = false
	else:
		small_p.emitting = true
		small_p.amount = int(div * 3.0)
		small_p.rotation_degrees = randi() % 360
	Show_Particals = val
