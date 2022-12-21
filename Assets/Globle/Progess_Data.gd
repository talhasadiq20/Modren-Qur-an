extends Node
const SAVE_DIR:String = "user://save/"
const SAVE_PATH:String = SAVE_DIR+"progress.dat"

var ProgressDic:Dictionary

var Allah_Name_Learned:int = 0 setget Leared_New_Name
var Allah_Name_Progress:float = 0.0
var Current_Arabic_Levels:int = 0
var Current_Arabic_Progress:int = 0
var Arabic_Language_Progress:float = 0.0
var Over_All_Progress:float = 0.0

const Total_Names:int = 99
var Total_Arabic_Levels:int = 6 setget Set_Total_Arabic_Levels
const Total_Suras:int = 114
const Total_Hadis:int = 0

func Set_Total_Arabic_Levels(val:int)->void:
	if val == Total_Arabic_Levels: return
	Total_Arabic_Levels = val
	ProgressDic["Total_Arabic_Levels"] = Total_Arabic_Levels
	Update_Overall_Progress()
	Save_File()

func Leared_New_Name(val:int) -> void:
	Allah_Name_Learned = val
	Allah_Name_Learned = int(min(Total_Names,max(Allah_Name_Learned,0)))
	ProgressDic["Allah_Name_Learned"] = Allah_Name_Learned
	Update_Arabic_Language_Progress()

func Set_Arabic_Language_Progress(val:int)->void:
	Current_Arabic_Progress = val
	ProgressDic["Current_Arabic_Progress"] = Current_Arabic_Progress
	if val >=6:
		Learned_New_Arabic_Level()
	Save_File()

func Set_Arabic_Level(val:int) ->void:
	Current_Arabic_Levels = val
	ProgressDic["Current_Arabic_Levels"] = Current_Arabic_Levels
	Update_Arabic_Language_Progress()

func Learned_New_Arabic_Level()->void:
	Current_Arabic_Levels += 1
	ProgressDic["Current_Arabic_Levels"] = Current_Arabic_Levels
	Update_Arabic_Language_Progress()

func Update_Arabic_Language_Progress() -> void:
	Arabic_Language_Progress = float(Current_Arabic_Levels) / float(Total_Arabic_Levels)
	Arabic_Language_Progress *= 100
	Update_Overall_Progress()
	Save_File()

func Update_Allah_Name_Progress()->void:
	Allah_Name_Progress = (float(Allah_Name_Learned) / 99.0) * 100.0
	Update_Overall_Progress()
	Save_File()

func Update_Overall_Progress()->void:
	var denom:float = Total_Names + Total_Suras + Total_Arabic_Levels + Total_Hadis
	var numi:float = Allah_Name_Learned + Current_Arabic_Levels
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
	if ProgressDic.has("Allah_Name_Learned"):
		Allah_Name_Learned = ProgressDic["Allah_Name_Learned"]
		Update_Allah_Name_Progress()
	if ProgressDic.has("Current_Arabic_Levels"):
		Current_Arabic_Levels = ProgressDic["Current_Arabic_Levels"]
	if ProgressDic.has("Current_Arabic_Progress"):
		Current_Arabic_Progress = ProgressDic["Current_Arabic_Progress"]
	if ProgressDic.has("Total_Arabic_Levels"):
		Total_Arabic_Levels = ProgressDic["Total_Arabic_Levels"]
	if ProgressDic.has("Arabic_Language_Progress"):
		Arabic_Language_Progress = ProgressDic["Arabic_Language_Progress"]
	else:
		Update_Arabic_Language_Progress()

func Save_File()->void:
	var file = File.new()
	var dir = Directory.new()
	if !dir.dir_exists(SAVE_DIR):
		dir.make_dir_recursive(SAVE_DIR)
	if file.open_encrypted_with_pass(SAVE_PATH,File.WRITE,"S!aVe0faLLah") == OK:
		file.store_var(ProgressDic)
		file.close()
