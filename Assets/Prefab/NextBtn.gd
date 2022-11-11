extends TextureProgress

func _ready():
	$Text.text = BasicLanguage.Get_Next()
