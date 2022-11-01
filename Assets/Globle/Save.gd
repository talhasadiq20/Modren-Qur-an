extends Node
const SAVE_DIR:String = "user://save/"
const SAVE_PATH:String = SAVE_DIR+"save.dat"

var Main_dic:Dictionary = {
	"Allah_Name_Learning": 0
}

var Reading_Allah_Name:int = 0 setget Set_New_Name
var Allah_Names_Learned:int = 0 setget Set_Names_Learned
var Over_All_Progress:float = 0.0

const Total_Names:int = 99
const Total_Words:int = 0
const Total_Suras:int = 114
const Total_Hadis:int = 0

func Set_Names_Learned(val:int) ->void:
	Main_dic["Allah_Name_Learned"] += val
	Allah_Names_Learned += val
	Update_Overall_Progress()
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
	if Main_dic.has("Over_All_Progress"):
		Over_All_Progress = Main_dic["Over_All_Progress"]

func Save_File()->void:
	var file = File.new()
	var dir = Directory.new()
	if !dir.dir_exists(SAVE_DIR):
		dir.make_dir_recursive(SAVE_DIR)
	if file.open_encrypted_with_pass(SAVE_PATH,File.WRITE,"S!aVe0faLLah") == OK:
		file.store_var(Main_dic)
		file.close()

func Update_Overall_Progress()->void:
	var denom:float = Total_Names + Total_Suras + Total_Words + Total_Hadis
	var numi:float = Main_dic["Allah_Name_Learned"]
	Over_All_Progress = (numi/denom) * 100
	Main_dic["Over_All_Progress"] = Over_All_Progress
