extends Node
const SAVE_DIR:String = "user://save/"
const SAVE_PATH:String = SAVE_DIR+"save.dat"
const Max_Levels:int = 4
const Max_Lifes:int = 5

var Main_dic:Dictionary = {
	"Allah_Name_Learning": 0
}

var Reading_Allah_Name:int = 0 setget Set_New_Name
var Allah_Names_Learned:int = 0 setget Set_Names_Learned
var Names_Fav:Array = []
var Names_Level:Dictionary = {}
var Notes:Dictionary = {}
var Current_life:int = 5

func Lost_Life()->int:
	Current_life -= 1
# warning-ignore:narrowing_conversion
	Current_life = min(Max_Lifes,max(0,Current_life))
	Main_dic["Current_life"] = str(Current_life)
	Save_File()
	return Current_life

func Rest_lifes()->void:
	Current_life = Max_Lifes
	Save_File()

func Get_Name_Level(Name_num:int) ->int:
	if !Names_Level.has(str(Name_num)): return 0
	return Names_Level[str(Name_num)]

func Level_Up_Name(Name_Num:int)->void:
	if !Names_Level.has(str(Name_Num)):
		Names_Level[str(Name_Num)] = 1.0
		ProgessData.Allah_Name_Learned += 1
	else:
		Names_Level[str(Name_Num)] += 0.5
	Names_Level[str(Name_Num)] = min(Names_Level[str(Name_Num)],Max_Levels)
	Main_dic["Names_Level"] = Names_Level
	Save_File()
func Level_Down_Name(Name_Num:int)->void:
	Names_Level[str(Name_Num)] -= 1.0
	Names_Level[str(Name_Num)] = max(Names_Level[str(Name_Num)],0)
	if max(Names_Level[str(Name_Num)],0) < 1:
# warning-ignore:return_value_discarded
		Names_Level.erase(str(Name_Num))
		ProgessData.Allah_Name_Learned -= 1
	Main_dic["Names_Level"] = Names_Level
	Save_File()

func Forgot_Name(Name_Num:int) ->void:
	ProgessData.Allah_Name_Learned -=1
# warning-ignore:return_value_discarded
	Names_Level.erase(str(Name_Num))
	Main_dic["Names_Level"] = Names_Level
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

func Add_Note(name_number:int,note:String) ->void:
	Notes[str(name_number)] = note
	if note == "":
# warning-ignore:return_value_discarded
		Notes.erase(str(name_number))
	Main_dic["Notes"] = Notes
	Save_File()
func Has_Note(name_number:int) ->bool:
	if !Main_dic.has("Notes"):
		return false
	if Main_dic["Notes"].has(str(name_number)):
		return true
	return false
func Get_Note(name_number:int) ->String:
	return Main_dic["Notes"][str(name_number)]

func _init():
	Load_File()
	if Main_dic.has("Last_Login"):
		var Current_Date = OS.get_date()["day"]
		var Old_Date = int(Main_dic["Last_Login"])
		if Old_Date != Current_Date:
			Day_Reset()

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
	if Main_dic.has("Notes"): Notes = Main_dic["Notes"]
	if Main_dic.has("Current_life"): Current_life = int(Main_dic["Current_life"])

func Save_File()->void:
	var file = File.new()
	var dir = Directory.new()
	if !dir.dir_exists(SAVE_DIR):
		dir.make_dir_recursive(SAVE_DIR)
	if file.open_encrypted_with_pass(SAVE_PATH,File.WRITE,"S!aVe0faLLah") == OK:
		Main_dic["Last_Login"] = OS.get_date()["day"]
		file.store_var(Main_dic)
		file.close()

func Day_Reset():
	Rest_lifes()
