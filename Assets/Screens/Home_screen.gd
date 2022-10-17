extends Control

export(String,FILE) var Next_Scene:String

func _ready():
	SceneLoader.Load_Scene(Next_Scene,self)
