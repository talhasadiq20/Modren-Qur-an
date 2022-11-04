extends Node
const SAVE_DIR:String = "user://save/"
const SAVE_PATH:String = SAVE_DIR+"progress.dat"

var ProgressDic:Dictionary

var Allah_Name_Learned:int = 0 setget Leared_New_Name
var Allah_Name_Progress:float = 0.0
var Over_All_Progress:float = 0.0

const Total_Names:int = 99
const Total_Words:int = 0
const Total_Suras:int = 114
const Total_Hadis:int = 0

func Leared_New_Name(val:int) -> void:
	Allah_Name_Learned += val
	Update_Allah_Name_Progress()

func Update_Allah_Name_Progress()->void:
	Allah_Name_Progress = (float(Allah_Name_Learned) / 99.0) * 100.0

func Update_Overall_Progress()->void:
	var denom:float = Total_Names + Total_Suras + Total_Words + Total_Hadis
	var numi:float = Allah_Name_Learned
	Over_All_Progress = (numi/denom) * 100
	ProgressDic["Over_All_Progress"] = Over_All_Progress

func _init():
	Load_File()

func Load_File() ->void:
	var file = File.new()
	if file.open_encrypted_with_pass(SAVE_PATH,File.READ,"S!aVe0faLLah") == OK:
		ProgressDic = file.get_var()
		file.close()
	
	if ProgressDic.has("Over_All_Progress"):
		Over_All_Progress = ProgressDic["Over_All_Progress"]
	

func Save_File()->void:
	var file = File.new()
	var dir = Directory.new()
	if !dir.dir_exists(SAVE_DIR):
		dir.make_dir_recursive(SAVE_DIR)
	if file.open_encrypted_with_pass(SAVE_PATH,File.WRITE,"S!aVe0faLLah") == OK:
		file.store_var(ProgressDic)
		file.close()
