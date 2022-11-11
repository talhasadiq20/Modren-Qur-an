extends Label

func _ready():
	text = BasicLanguage.Get_Quiting_Text()
	text += " " +BasicLanguage.Get_Loss_progress()
