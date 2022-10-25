extends Node

enum lang{
	en,
	ur
}

var Language:int = lang.en

func Get_Current_Language()->String:
	match Language:
		lang.en:
			return "en"
		lang.ur:
			return "ur"
	return "en"

func Get_Arabic() ->String: return "Arabic_Name"
