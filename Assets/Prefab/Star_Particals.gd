extends CPUParticles2D

var Show_Particals = 40 setget Set_Parricals

func Set_Parricals(val:int) ->void:
	randomize()
	if val == 0:
		queue_free()
		return
# warning-ignore:integer_division
	var div = val / 3
	amount = div / 2
	rotation_degrees = randi() % 360
	$Star_Particals_S.amount = div
	$Star_Particals_S.rotation_degrees = randi() % 360
	$Star_Particals_M.amount = div * 3
	$Star_Particals_M.rotation_degrees = randi() % 360
	Show_Particals = val
