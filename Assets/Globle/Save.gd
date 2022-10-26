extends Node
const SAVE_DIR:String = "user://save/"
const SAVE_PATH:String = SAVE_DIR+"save.dat"

var Main_dic:Dictionary = {
	"Allah_Name": 0
}

var Reading_Allah_Name:int = 0 setget Set_New_Name

func _init():
	Load_File()

func Load_File() ->void:
	var file = File.new()
	if file.open_encrypted_with_pass(SAVE_PATH,File.READ,"S!aVe0faLLah") == OK:
		Main_dic = file.get_var()
		file.close()
	
	Reading_Allah_Name = Main_dic["Allah_Name"]

func Set_New_Name(val:int) -> void:
	Main_dic["Allah_Name"] = val
	Reading_Allah_Name = val
	Save_File()

func Save_File()->void:
	var file = File.new()
	var dir = Directory.new()
	if !dir.dir_exists(SAVE_DIR):
		dir.make_dir_recursive(SAVE_DIR)
	if file.open_encrypted_with_pass(SAVE_PATH,File.WRITE,"S!aVe0faLLah") == OK:
		file.store_var(Main_dic)
		file.close()

