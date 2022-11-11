extends Node

func Get_Quiting_Text() ->String:
	match GlobleSettings.Language:
		GlobleSettings.lang.en:
			return "are you sure?".capitalize()
	return "are you sure?".capitalize()

func Get_Loss_progress()->String:
	match GlobleSettings.Language:
		GlobleSettings.lang.en:
			return "You will lose your progress".capitalize()
	return "You will lose your progress".capitalize()

func Get_Yes() ->String:
	match GlobleSettings.Language:
		GlobleSettings.lang.en:
			return "yes".capitalize()
	return "yes".capitalize()

func Get_No() ->String:
	match GlobleSettings.Language:
		GlobleSettings.lang.en:
			return "no".capitalize()
	return "no".capitalize()

func Get_Congragulations() ->String:
	match GlobleSettings.Language:
		GlobleSettings.lang.en:
			return "Congragulations".to_upper()
	return "Congragulations".to_upper()

func Get_Next() ->String:
	match GlobleSettings.Language:
		GlobleSettings.lang.en:
			return "Next".capitalize()
	return "Next".capitalize()

func Get_Time()->String:
	match GlobleSettings.Language:
		GlobleSettings.lang.en:
			return "Time".capitalize()
	return "Time".capitalize()

func Get_Percentage()->String:
	match GlobleSettings.Language:
		GlobleSettings.lang.en:
			return "Accuracy".capitalize()
	return "Accuracy".capitalize()

func Get_Try_Again()->String:
	match GlobleSettings.Language:
		GlobleSettings.lang.en:
			return "Try again later".capitalize()
	return "Try again late".capitalize()

func Get_Finish()->String:
	match GlobleSettings.Language:
		GlobleSettings.lang.en:
			return "Finish".capitalize()
	return "Finish".capitalize()
