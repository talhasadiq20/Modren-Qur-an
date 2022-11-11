extends TextureRect

var Heading:String = "Hello" setget Set_Heading
var Dis:String = "Hello" setget Set_Dic

func Set_Heading(val):
	$VBoxContainer/Heading.text = val

func Set_Dic(val):
	$VBoxContainer/Detail.text = val
