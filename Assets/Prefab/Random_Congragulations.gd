extends Label

export(Array,String) var Encouragements:Array = ["Great","Well Done","Excellent","Amazing","Awesome"]

func _ready() -> void:
	randomize()
	text = Encouragements[randi() % Encouragements.size()]
