extends Node

enum loading_status{
	NULL,
	START,
	READY_TO_PROCESS,
	BYE
}

var LoadingScene
var loader:ResourceInteractiveLoader 
var Loading_State:int = 0
var Current_Scene
var Level_Path:String

func Load_Scene(path:String,current_scene) -> void:
	Current_Scene = current_scene
	Level_Path = path
	LoadingScene = load("res://Assets/Prefab/LoadingScreen.tscn").instance()
	get_tree().get_root().call_deferred("add_child",LoadingScene)
	Loading_State = loading_status.START

func _process(_delta):
	match Loading_State:
		loading_status.NULL:
			return
		loading_status.START:
			if LoadingScene.Is_Finished():
				Loading_State = loading_status.READY_TO_PROCESS
		loading_status.READY_TO_PROCESS:
			if loader == null:
				loader = ResourceLoader.load_interactive(Level_Path)
			var err: = loader.poll()
			if err == ERR_FILE_EOF:
				Loading_State = loading_status.BYE
				LoadingScene.Bye_Bye()
			elif err == OK:
				var progress: = float(loader.get_stage())/loader.get_stage_count()
				LoadingScene.Set_Progress(progress * 100)
			yield(get_tree(),"idle_frame")
		loading_status.BYE:
			if !LoadingScene.Is_Finished():
				return
			var resorce: = loader.get_resource()
			get_tree().get_root().call_deferred("add_child",resorce.instance())
			if Current_Scene: Current_Scene.queue_free()
			LoadingScene.queue_free()
			Loading_State = loading_status.NULL

func Fake_Load(val:String)->void:
	var screen = load("res://Assets/Prefab/Fake_Loader.tscn").instance()
	var last_scene = get_tree().get_root().get_children().back()
	last_scene.modulate = Color(1,1,1,0)
#	get_tree().get_root().call_deferred("add_child",screen)
	last_scene.queue_free()
	add_child(screen)
	yield(screen,"Finished")
	if get_tree().change_scene(val) == OK:
#		yield(get_tree(),"idle_frame")
		return
	Load_Scene(val,null) 
