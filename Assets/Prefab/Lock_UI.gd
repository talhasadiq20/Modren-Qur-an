extends TextureRect

var Is_Lock: = true setget Set_Is_Lock

onready var Anim: = $Lock_Anim

func Set_Is_Lock(val):
	if val == Is_Lock:
		return
	Is_Lock = val
	if !val:
		Anim.play("Lock")
	else:
		print(5555)
		Anim.play_backwards("Lock")
