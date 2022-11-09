extends Node
const SAVE_DIR:String = "user://save/"
const SAVE_PATH:String = SAVE_DIR+"save.dat"

var Main_dic:Dictionary = {
	"Allah_Name_Learning": 0
}

var Reading_Allah_Name:int = 0 setget Set_New_Name
var Allah_Names_Learned:int = 0 setget Set_Names_Learned
var Names_Fav:Array = []
var Names_Level:Dictionary = {}

func Get_Name_Level(Name_num:int) ->int:
	if !Names_Level.has(str(Name_num)): return 0
	return Names_Level[str(Name_num)]

func Update_Name_Progress(Name_Num:int,Level:int) ->void:
	Names_Level[str(Name_Num)] = Level
	Main_dic["Names_Level"] = Names_Level
	if Level == 1:
		ProgessData.Allah_Name_Learned = 1
	elif Level == 0:
		ProgessData.Allah_Name_Learned = -1
	Save_File()

func Add_Fav_Name() ->void:
	if Reading_Allah_Name in Names_Fav:
		return
	Names_Fav.append(Reading_Allah_Name)
	Main_dic["Fav_Names"] = Names_Fav
	Save_File()
func Remove_Fav_Name() ->void:
	if not Reading_Allah_Name in Names_Fav:
		return
	Names_Fav.erase(Reading_Allah_Name)
	Main_dic["Fav_Names"] = Names_Fav
	Save_File()

func Is_Name_Fav(val:int = -1) ->bool:
	if val == -1:
		if Reading_Allah_Name in Names_Fav: return true
	else:
		if val in Names_Fav: return true
	return false

func Set_Names_Learned(val:int) ->void:
	Main_dic["Allah_Name_Learned"] += val
	Allah_Names_Learned += val
	Save_File()

func Set_New_Name(val:int) -> void:
	Main_dic["Allah_Name_Learning"] = val
	Reading_Allah_Name = val
	Save_File()

func _init():
	Load_File()

func Load_File() ->void:
	var file = File.new()
	if file.open_encrypted_with_pass(SAVE_PATH,File.READ,"S!aVe0faLLah") == OK:
		Main_dic = file.get_var()
		file.close()
	
	if Main_dic.has("Allah_Name_Learning"):
		Reading_Allah_Name = Main_dic["Allah_Name_Learning"]
	if Main_dic.has("Allah_Name_Learned"):
		Allah_Names_Learned = Main_dic["Allah_Name_Learned"]
		ProgessData.Allah_Name_Learned = Allah_Names_Learned
	if Main_dic.has("Fav_Names"): Names_Fav = Main_dic["Fav_Names"]
	if Main_dic.has("Names_Level"): Names_Level = Main_dic["Names_Level"]

func Save_File()->void:
	var file = File.new()
	var dir = Directory.new()
	if !dir.dir_exists(SAVE_DIR):
		dir.make_dir_recursive(SAVE_DIR)
	if file.open_encrypted_with_pass(SAVE_PATH,File.WRITE,"S!aVe0faLLah") == OK:
		file.store_var(Main_dic)
		file.close()

