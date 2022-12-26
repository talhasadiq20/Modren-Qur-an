tool
extends TextureRect
class_name Arabic_Language_Review

export(Array,Texture) var Images:Array
export(String) var Review_Folder:String
export(PackedScene) var Review_btn

onready var Label_UI: = $"%Label"
onready var Lock_UI: = $"%Lock"
onready var Review_Block: = $HBoxContainer

func _get_configuration_warning() -> String:
	return "Select Review Folder" if not Review_Folder else ""

var Is_Unlocked:bool = false

func _ready() -> void:
	Unlock(Is_Unlocked)

func Unlock(val:bool = true)->void:
	Is_Unlocked = val
	texture = Images[1] if Is_Unlocked else Images[0]
	if not Is_Unlocked:
#		Label_UI.text = "Locked"
		Label_UI.self_modulate = Color(1,1,1,1)
	Lock_UI.Set_Is_Lock(!Is_Unlocked)
	
	if ! Is_Unlocked:
		return
	var Files = list_files_in_directory(Review_Folder)
	var i: = 1
	if Files != []:
		for file in Files:
			var ins = Review_btn.instance()
			Review_Block.add_child(ins)
			ins.Review_Path = Review_Folder + file
			ins.Set_Lable(i)
			i += 1
	if Files.size() > 3:
		Label_UI. visible = false

func Set_Chapter(val:int) ->void:
	Label_UI.text = "Chapter " + str(val) if Is_Unlocked else "Locked"
	Label_UI.self_modulate = Color(0.31,0.28,0.43,1) if Is_Unlocked else Color(1,1,1,1)

func list_files_in_directory(path)->Array:
	var files: = []
	var dir: = Directory.new()
# warning-ignore:return_value_discarded
	dir.open(path)
# warning-ignore:return_value_discarded
	dir.list_dir_begin()
	while true:
		var file: = dir.get_next()
		if file == "":
			break
		elif not file.begins_with(".") and file.ends_with(".tscn"):
			files.append(file)
#		dir.list_dir_end()
	return files
