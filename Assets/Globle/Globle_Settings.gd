extends Node

enum lang{
	en,
	ur
}

var Language:int = lang.en

func Get_Arabic() ->String: return "Arabic_Name"

func Get_Current_Language()->String:
	match Language:
		lang.en:
			return "en"
		lang.ur:
			return "ur"
	return "en"

func Get_Right_Color() -> Color:
	return Color(0.33,0.91,0.56,1)
func Get_Wrong_Color() -> Color:
	return Color(0.95,0.33,0.33,1)
