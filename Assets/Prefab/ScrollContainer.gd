extends ScrollContainer

export(int) var Scroll_Limit:int = 300

onready var Detail_area:TextureRect = $"%Detail_Area"
onready var Name_area:TextureRect = $"%Name_area"

var Scroll_num:int = 0
var Name_area_Top_Limit: float
var Name_area_Bottom_Limit: float
var Detail_area_Top_Limit: float

func _ready():
	Name_area_Top_Limit = Name_area.anchor_top
	Detail_area_Top_Limit = Detail_area.anchor_top
	Name_area_Bottom_Limit = Name_area.anchor_bottom

func _process(_delta):
	if Scroll_num == scroll_vertical or scroll_vertical > Scroll_Limit:
		return
	else:
		Scroll_num = scroll_vertical
	var smoth_Num = (max(Scroll_Limit - float(Scroll_num),1.0)/Scroll_Limit)
	var smoth
#Name area moment
	smoth = range_lerp(smoth_Num,0,1,0,Name_area_Top_Limit)
	Name_area.anchor_top = smoth
	smoth = range_lerp(smoth_Num,0,1,0.15,Name_area_Bottom_Limit)
	Name_area.anchor_bottom = smoth
#Detail Area Movement
	smoth = range_lerp(smoth_Num,0,1,0,Detail_area_Top_Limit)
	Detail_area.anchor_top = smoth
#Scroll Area Moment
	smoth = range_lerp(smoth_Num,0,1,0.18,0.22)
	anchor_top =smoth

