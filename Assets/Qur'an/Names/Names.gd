extends Node
class_name Allahs_Name

var Selected_Name:Dictionary = {}

func Get_Selected_Arabic_Name() ->String: return Selected_Name[GlobleSettings.Get_Arabic()]
func Get_Selected_Name() ->String: return Selected_Name["Name"][GlobleSettings.Get_Current_Language()]
func Get_Selected_Meaning() ->String: return Selected_Name["Meaning"][GlobleSettings.Get_Current_Language()]
func Get_Selected_Detail() ->String: return Selected_Name["Detail"][GlobleSettings.Get_Current_Language()]

func get_all() -> Dictionary: return Names

var Names:Dictionary = {
			0:{
		"Arabic_Name": "ٱلْرَّحْمَـانُ",
		"Name":{
			"en":"Ar-Rahmaan",
			"ur":""
		},
		"Meaning":{
			"en":"Who Loves Unconditionally",
			"ur":""
		},
		"Detail":{
			"en":"    - Most Loving\n- Temporary\n- At this Moment\n\nThis name comes from a few things. One of them is Ar-Rahm. When a woman is pregnant, her womb is called Rahm. Because that baby is taken care of in every way. There is a relationship between the child and the mother. The child does not know the mother but the mother knows the child and loves the child. But the does not have a love for the mother yet. Still, the mother is taking care of the child in every way. The entire World of the child is taken care of by the mother.\nNormally when a person protects themselves, they protect their head, we protect our body. But a mother before protecting anything else will protect her stomach when she is expecting. She will make sure not to walk in narrow spaces and not close to corners of the tables. She will take extra caution. That word gives birth to the word Rahma.\nRahma is not the same as mercy. Which means you were expecting punishment. Mercy is used when you spare someone. But the word Rahma has nothing to do with Punishment. It has to do with complete care and love.\nThe addition of the last two letters (Alif, Noon) makes the word mean extremely but temporary, unconditionally loving but temporary. Temporary in the sense it will not go away unless something else takes its place or satisfy it. For example, you are extremely trusty and it’ll only go away after you drink some water. That means you were extremely thirsty but it was temporary.\nHe is loving you right now. We do not have to wait for his love. For example, Your financial situation is thin. You are living check to check. If you do not get the check on time, you will not be able to pay rent tomorrow. Your boss lives on the other side of the town and is running late. It is Friday evening, 4 PM and the office will close at 5, you are still there worried because you won't receive the check if he does not come. Your coworker is there and tells you that the boss is very responsible, he will be here, do not worry. Now he is telling one of his traits but you wish he was responsible at this moment. If you tell, someone is responsible that does not mean he is reliable all the time. Your problem is of this moment, at this time, and want him to be responsible at this moment. When we are in trouble, we do not care about the future. We forget about the future and only care about the right now. For example, You are very hungry and your wife asks what should I cook tomorrow. Your answer would be, leave tomorrow, I want something to eat now. But when you have eaten your fill, you’ll ask what's for tomorrow. Once the problem of now is dealt with then you think about the future. Ar-Rahman solves the problem of now by saying I love you at this moment.\nWhen Allah is saying Al-Rahman he is saying he cares for you, he is saying he understands that you are very delicate and you must be handled with care and he will take care of every matter that you have.",
			"ur":""
		},
	},
	1:{
		"Arabic_Name": "ٱلْرَّحِيْمُ",
		"Name":{
			"en":"Ar-Raheem",
			"ur":""
		},
		"Meaning":{
			"en":"The Bestower Of Mercy",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	2:{
		"Arabic_Name": "ٱلْمَلِكُ",
		"Name":{
			"en":"Al-Malik",
			"ur":""
		},
		"Meaning":{
			"en":"The King And Owner Of Dominion",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	3:{
		"Arabic_Name": "ٱلْقُدُّوسُ",
		"Name":{
			"en":"Al-Quddus",
			"ur":""
		},
		"Meaning":{
			"en":"The Absolutely Pure",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	4:{
		"Arabic_Name": "ٱلْسَّلَامُ",
		"Name":{
			"en":"As-Salam",
			"ur":""
		},
		"Meaning":{
			"en":"The Perfection And Giver Of Peace",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	5:{
		"Arabic_Name": "ٱلْمُؤْمِنُ",
		"Name":{
			"en":"Al-Mu’Min",
			"ur":""
		},
		"Meaning":{
			"en":"The One Who Gives Emaan And Security",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	6:{
		"Arabic_Name": "ٱلْمُهَيْمِنُ",
		"Name":{
			"en":"Al-Muhaymin",
			"ur":""
		},
		"Meaning":{
			"en":"The Guardian, The Witness, The Overseer",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	7:{
		"Arabic_Name": "ٱلْعَزِيزُ",
		"Name":{
			"en":"Al-Azeez",
			"ur":""
		},
		"Meaning":{
			"en":"The All Mighty",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	8:{
		"Arabic_Name": "ٱلْجَبَّارُ",
		"Name":{
			"en":"Al-Jabbar",
			"ur":""
		},
		"Meaning":{
			"en":"The Compeller, The Restorer",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	9:{
		"Arabic_Name": "ٱلْمُتَكَبِّرُ",
		"Name":{
			"en":"Al-Mutakabbir",
			"ur":""
		},
		"Meaning":{
			"en":"The Supreme, The Majestic",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	10:{
		"Arabic_Name": "ٱلْخَالِقُ",
		"Name":{
			"en":"Al-Khaaliq",
			"ur":""
		},
		"Meaning":{
			"en":"The Creator, The Maker",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	11:{
		"Arabic_Name": "ٱلْبَارِئُ",
		"Name":{
			"en":"Al-Baari’",
			"ur":""
		},
		"Meaning":{
			"en":"The Originator",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	12:{
		"Arabic_Name": "ٱلْمُصَوِّرُ",
		"Name":{
			"en":"Al-Musawwir",
			"ur":""
		},
		"Meaning":{
			"en":"The Fashioner",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	13:{
		"Arabic_Name": "ٱلْغَفَّارُ",
		"Name":{
			"en":"Al-Ghaffar",
			"ur":""
		},
		"Meaning":{
			"en":"The All- And Oft-Forgiving",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	14:{
		"Arabic_Name": "ٱلْقَهَّارُ",
		"Name":{
			"en":"Al-Qahhar",
			"ur":""
		},
		"Meaning":{
			"en":"The Subduer, The Ever-Dominating",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	15:{
		"Arabic_Name": "ٱلْوَهَّابُ",
		"Name":{
			"en":"Al-Wahhaab",
			"ur":""
		},
		"Meaning":{
			"en":"The Giver Of Gifts",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	16:{
		"Arabic_Name": "ٱلْرَّزَّاقُ",
		"Name":{
			"en":"Ar-Razzaaq",
			"ur":""
		},
		"Meaning":{
			"en":"The Provider",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	17:{
		"Arabic_Name": "ٱلْفَتَّاحُ",
		"Name":{
			"en":"Al-Fattaah",
			"ur":""
		},
		"Meaning":{
			"en":"The Opener, The Judge",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	18:{
		"Arabic_Name": "ٱلْعَلِيمُ",
		"Name":{
			"en":"Al-‘Aleem",
			"ur":""
		},
		"Meaning":{
			"en":"The All-Knowing, The Omniscient",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	19:{
		"Arabic_Name": "ٱلْقَابِضُ",
		"Name":{
			"en":"Al-Qaabid",
			"ur":""
		},
		"Meaning":{
			"en":"The Withholder",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	20:{
		"Arabic_Name": "ٱلْبَاسِطُ",
		"Name":{
			"en":"Al-Baasit",
			"ur":""
		},
		"Meaning":{
			"en":"The Extender",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	21:{
		"Arabic_Name": "ٱلْخَافِضُ",
		"Name":{
			"en":"Al-Khaafidh",
			"ur":""
		},
		"Meaning":{
			"en":"The Reducer, The Abaser",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	22:{
		"Arabic_Name": "ٱلْرَّافِعُ",
		"Name":{
			"en":"Ar-Raafi’",
			"ur":""
		},
		"Meaning":{
			"en":"The Exalter, The Elevator",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	23:{
		"Arabic_Name": "ٱلْمُعِزُّ",
		"Name":{
			"en":"Al-Mu’Izz",
			"ur":""
		},
		"Meaning":{
			"en":"The Honourer, The Bestower",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	24:{
		"Arabic_Name": "ٱلْمُذِلُّ",
		"Name":{
			"en":"Al-Muzil",
			"ur":""
		},
		"Meaning":{
			"en":"The Dishonourer, The Humiliator",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	25:{
		"Arabic_Name": "ٱلْسَّمِيعُ",
		"Name":{
			"en":"As-Samee’",
			"ur":""
		},
		"Meaning":{
			"en":"The All-Hearing",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	26:{
		"Arabic_Name": "ٱلْبَصِيرُ",
		"Name":{
			"en":"Al-Baseer",
			"ur":""
		},
		"Meaning":{
			"en":"The All-Seeing",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	27:{
		"Arabic_Name": "ٱلْحَكَمُ",
		"Name":{
			"en":"Al-Hakam",
			"ur":""
		},
		"Meaning":{
			"en":"The Judge, The Giver Of Justice",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	28:{
		"Arabic_Name": "ٱلْعَدْلُ",
		"Name":{
			"en":"Al-‘Adl",
			"ur":""
		},
		"Meaning":{
			"en":"The Utterly Just",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	29:{
		"Arabic_Name": "ٱلْلَّطِيفُ",
		"Name":{
			"en":"Al-Lateef",
			"ur":""
		},
		"Meaning":{
			"en":"The Subtle One, The Most Gentle",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	30:{
		"Arabic_Name": "ٱلْخَبِيرُ",
		"Name":{
			"en":"Al-Khabeer",
			"ur":""
		},
		"Meaning":{
			"en":"The Acquainted, The All-Aware",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	31:{
		"Arabic_Name": "ٱلْحَلِيمُ",
		"Name":{
			"en":"Al-Haleem",
			"ur":""
		},
		"Meaning":{
			"en":"The Most Forbearing",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	32:{
		"Arabic_Name": "ٱلْعَظِيمُ",
		"Name":{
			"en":"Al-‘Atheem",
			"ur":""
		},
		"Meaning":{
			"en":"The Magnificent, The Supreme",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	33:{
		"Arabic_Name": "ٱلْغَفُورُ",
		"Name":{
			"en":"Al-Ghafoor",
			"ur":""
		},
		"Meaning":{
			"en":"The Forgiving, The Exceedingly Forgiving",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	34:{
		"Arabic_Name": "ٱلْشَّكُورُ",
		"Name":{
			"en":"Ash-Shakoor",
			"ur":""
		},
		"Meaning":{
			"en":"The Most Appreciative",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	35:{
		"Arabic_Name": "ٱلْعَلِيُّ",
		"Name":{
			"en":"Al-‘Alee",
			"ur":""
		},
		"Meaning":{
			"en":"The Most High, The Exalted",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	36:{
		"Arabic_Name": "ٱلْكَبِيرُ",
		"Name":{
			"en":"Al-Kabeer",
			"ur":""
		},
		"Meaning":{
			"en":"The Greatest, The Most Grand",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	37:{
		"Arabic_Name": "ٱلْحَفِيظُ",
		"Name":{
			"en":"Al-Hafeedh",
			"ur":""
		},
		"Meaning":{
			"en":"The Preserver, The All-Heedful And All-Protecting",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	38:{
		"Arabic_Name": "ٱلْمُقِيتُ",
		"Name":{
			"en":"Al-Muqeet",
			"ur":""
		},
		"Meaning":{
			"en":"The Sustainer",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	39:{
		"Arabic_Name": "ٱلْحَسِيبُ",
		"Name":{
			"en":"Al-Haseeb",
			"ur":""
		},
		"Meaning":{
			"en":"The Reckoner, The Sufficient",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	40:{
		"Arabic_Name": "ٱلْجَلِيلُ",
		"Name":{
			"en":"Al-Jaleel",
			"ur":""
		},
		"Meaning":{
			"en":"The Majestic",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	41:{
		"Arabic_Name": "ٱلْكَرِيمُ",
		"Name":{
			"en":"Al-Kareem",
			"ur":""
		},
		"Meaning":{
			"en":"The Most Generous, The Most Esteemed",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	42:{
		"Arabic_Name": "ٱلْرَّقِيبُ",
		"Name":{
			"en":"Ar-Raqeeb",
			"ur":""
		},
		"Meaning":{
			"en":"The Watchful",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	43:{
		"Arabic_Name": "ٱلْمُجِيبُ",
		"Name":{
			"en":"Al-Mujeeb",
			"ur":""
		},
		"Meaning":{
			"en":"The Responsive One",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	44:{
		"Arabic_Name": "ٱلْوَاسِعُ",
		"Name":{
			"en":"Al-Waasi’",
			"ur":""
		},
		"Meaning":{
			"en":"The All-Encompassing, The Boundless",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	45:{
		"Arabic_Name": "ٱلْحَكِيمُ",
		"Name":{
			"en":"Al-Hakeem",
			"ur":""
		},
		"Meaning":{
			"en":"The All-Wise",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	46:{
		"Arabic_Name": "ٱلْوَدُودُ",
		"Name":{
			"en":"Al-Wadood",
			"ur":""
		},
		"Meaning":{
			"en":"The Most Loving",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	47:{
		"Arabic_Name": "ٱلْمَجِيدُ",
		"Name":{
			"en":"Al-Majeed",
			"ur":""
		},
		"Meaning":{
			"en":"The Glorious, The Most Honorable",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	48:{
		"Arabic_Name": "ٱلْبَاعِثُ",
		"Name":{
			"en":"Al-Ba’Ith",
			"ur":""
		},
		"Meaning":{
			"en":"The Resurrector, The Raiser Of The Dead",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	49:{
		"Arabic_Name": "ٱلْشَّهِيدُ",
		"Name":{
			"en":"Ash-Shaheed",
			"ur":""
		},
		"Meaning":{
			"en":"The All- And Ever Witnessing",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	50:{
		"Arabic_Name": "ٱلْحَقُّ",
		"Name":{
			"en":"Al-Haqq",
			"ur":""
		},
		"Meaning":{
			"en":"The Absolute Truth",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	51:{
		"Arabic_Name": "ٱلْوَكِيلُ",
		"Name":{
			"en":"Al-Wakeel",
			"ur":""
		},
		"Meaning":{
			"en":"The Trustee, The Disposer Of Affairs",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	52:{
		"Arabic_Name": "ٱلْقَوِيُّ",
		"Name":{
			"en":"Al-Qawiyy",
			"ur":""
		},
		"Meaning":{
			"en":"The All-Strong",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	53:{
		"Arabic_Name": "ٱلْمَتِينُ",
		"Name":{
			"en":"Al-Mateen",
			"ur":""
		},
		"Meaning":{
			"en":"The Firm, The Steadfast",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	54:{
		"Arabic_Name": "ٱلْوَلِيُّ",
		"Name":{
			"en":"Al-Waliyy",
			"ur":""
		},
		"Meaning":{
			"en":"The Protecting Associate",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	55:{
		"Arabic_Name": "ٱلْحَمِيدُ",
		"Name":{
			"en":"Al-Hameed",
			"ur":""
		},
		"Meaning":{
			"en":"The Praiseworthy",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	56:{
		"Arabic_Name": "ٱلْمُحْصِيُ",
		"Name":{
			"en":"Al-Muhsee",
			"ur":""
		},
		"Meaning":{
			"en":"The All-Enumerating, The Counter",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	57:{
		"Arabic_Name": "ٱلْمُبْدِئُ",
		"Name":{
			"en":"Al-Mubdi",
			"ur":""
		},
		"Meaning":{
			"en":"The Originator, The Initiator",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	58:{
		"Arabic_Name": "ٱلْمُعِيدُ",
		"Name":{
			"en":"Al-Mu’Id",
			"ur":""
		},
		"Meaning":{
			"en":"The Restorer, The Reinstater",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	59:{
		"Arabic_Name": "ٱلْمُحْيِى",
		"Name":{
			"en":"Al-Muhyee",
			"ur":""
		},
		"Meaning":{
			"en":"The Giver Of Life",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	60:{
		"Arabic_Name": "ٱلْمُمِيتُ",
		"Name":{
			"en":"Al-Mumeet",
			"ur":""
		},
		"Meaning":{
			"en":"The Bringer Of Death, The Destroyer",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	61:{
		"Arabic_Name": "ٱلْحَىُّ",
		"Name":{
			"en":"Al-Hayy",
			"ur":""
		},
		"Meaning":{
			"en":"The Ever-Living",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	62:{
		"Arabic_Name": "ٱلْقَيُّومُ",
		"Name":{
			"en":"Al-Qayyoom",
			"ur":""
		},
		"Meaning":{
			"en":"The Sustainer, The Self-Subsisting",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	63:{
		"Arabic_Name": "ٱلْوَاجِدُ",
		"Name":{
			"en":"Al-Waajid",
			"ur":""
		},
		"Meaning":{
			"en":"The Perceiver",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	64:{
		"Arabic_Name": "ٱلْمَاجِدُ",
		"Name":{
			"en":"Al-Maajid",
			"ur":""
		},
		"Meaning":{
			"en":"The Illustrious, The Magnificent",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	65:{
		"Arabic_Name": "ٱلْوَاحِدُ",
		"Name":{
			"en":"Al-Waahid",
			"ur":""
		},
		"Meaning":{
			"en":"The One",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	66:{
		"Arabic_Name": "ٱلْأَحَد",
		"Name":{
			"en":"Al-Ahad",
			"ur":""
		},
		"Meaning":{
			"en":"The Unique, The Only One",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	67:{
		"Arabic_Name": "ٱلْصَّمَدُ",
		"Name":{
			"en":"As-Samad",
			"ur":""
		},
		"Meaning":{
			"en":"The Eternal, Satisfier Of Needs",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	68:{
		"Arabic_Name": "ٱلْقَادِرُ",
		"Name":{
			"en":"Al-Qadir",
			"ur":""
		},
		"Meaning":{
			"en":"The Capable, The Powerful",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	69:{
		"Arabic_Name": "ٱلْمُقْتَدِرُ",
		"Name":{
			"en":"Al-Muqtadir",
			"ur":""
		},
		"Meaning":{
			"en":"The Omnipotent",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	70:{
		"Arabic_Name": "ٱلْمُقَدِّمُ",
		"Name":{
			"en":"Al-Muqaddim",
			"ur":""
		},
		"Meaning":{
			"en":"The Expediter, The Promoter",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	71:{
		"Arabic_Name": "ٱلْمُؤَخِّرُ",
		"Name":{
			"en":"Al-Mu’Akhkhir",
			"ur":""
		},
		"Meaning":{
			"en":"The Delayer, The Retarder",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	72:{
		"Arabic_Name": "ٱلأَوَّلُ",
		"Name":{
			"en":"Al-Awwal",
			"ur":""
		},
		"Meaning":{
			"en":"The First",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	73:{
		"Arabic_Name": "ٱلْآخِرُ",
		"Name":{
			"en":"Al-Aakhir",
			"ur":""
		},
		"Meaning":{
			"en":"The Last",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	74:{
		"Arabic_Name": "ٱلْظَّاهِرُ",
		"Name":{
			"en":"Az-Dhaahir",
			"ur":""
		},
		"Meaning":{
			"en":"The Manifest",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	75:{
		"Arabic_Name": "ٱلْبَاطِنُ",
		"Name":{
			"en":"Al-Baatin",
			"ur":""
		},
		"Meaning":{
			"en":"The Hidden One, Knower Of The Hidden",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	76:{
		"Arabic_Name": "ٱلْوَالِي",
		"Name":{
			"en":"Al-Waali",
			"ur":""
		},
		"Meaning":{
			"en":"The Governor, The Patron",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	77:{
		"Arabic_Name": "ٱلْمُتَعَالِي",
		"Name":{
			"en":"Al-Muta’Ali",
			"ur":""
		},
		"Meaning":{
			"en":"The Self Exalted",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	78:{
		"Arabic_Name": "ٱلْبَرُّ",
		"Name":{
			"en":"Al-Barr",
			"ur":""
		},
		"Meaning":{
			"en":"The Source Of Goodness, The Kind Benefactor",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	79:{
		"Arabic_Name": "ٱلْتَّوَّابُ",
		"Name":{
			"en":"At-Tawwab",
			"ur":""
		},
		"Meaning":{
			"en":"The Ever-Pardoning, The Relenting",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	80:{
		"Arabic_Name": "ٱلْمُنْتَقِمُ",
		"Name":{
			"en":"Al-Muntaqim",
			"ur":""
		},
		"Meaning":{
			"en":"The Avenger",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	81:{
		"Arabic_Name": "ٱلْعَفُوُّ",
		"Name":{
			"en":"Al-‘Afuww",
			"ur":""
		},
		"Meaning":{
			"en":"The Pardoner",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	82:{
		"Arabic_Name": "ٱلْرَّؤُفُ",
		"Name":{
			"en":"Ar-Ra’Oof",
			"ur":""
		},
		"Meaning":{
			"en":"The Most Kind",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	83:{
		"Arabic_Name": "مَالِكُ ٱلْمُلْكُ",
		"Name":{
			"en":"Maalik-Ul-Mulk",
			"ur":""
		},
		"Meaning":{
			"en":"Master Of The Kingdom, Owner Of The Dominion",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	84:{
		"Arabic_Name": "ذُو ٱلْجَلَالِ وَٱلْإِكْرَامُ",
		"Name":{
			"en":"Dhul-Jalaali Wal-Ikraam",
			"ur":""
		},
		"Meaning":{
			"en":"Possessor Of Glory And Honour, Lord Of Majesty And Generosity",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	85:{
		"Arabic_Name": "ٱلْمُقْسِطُ",
		"Name":{
			"en":"Al-Muqsit",
			"ur":""
		},
		"Meaning":{
			"en":"The Equitable, The Requiter",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	86:{
		"Arabic_Name": "ٱلْجَامِعُ",
		"Name":{
			"en":"Al-Jaami’",
			"ur":""
		},
		"Meaning":{
			"en":"The Gatherer, The Uniter",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	87:{
		"Arabic_Name": "ٱلْغَنيُّ",
		"Name":{
			"en":"Al-Ghaniyy",
			"ur":""
		},
		"Meaning":{
			"en":"The Self-Sufficient, The Wealthy",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	88:{
		"Arabic_Name": "ٱلْمُغْنِيُّ",
		"Name":{
			"en":"Al-Mughni",
			"ur":""
		},
		"Meaning":{
			"en":"The Enricher",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	89:{
		"Arabic_Name": "ٱلْمَانِعُ",
		"Name":{
			"en":"Al-Mani’",
			"ur":""
		},
		"Meaning":{
			"en":"The Withholder",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	90:{
		"Arabic_Name": "ٱلْضَّارُ",
		"Name":{
			"en":"Ad-Dharr",
			"ur":""
		},
		"Meaning":{
			"en":"The Distresser",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	91:{
		"Arabic_Name": "ٱلْنَّافِعُ",
		"Name":{
			"en":"An-Nafi’",
			"ur":""
		},
		"Meaning":{
			"en":"The Propitious, The Benefactor",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	92:{
		"Arabic_Name": "ٱلْنُّورُ",
		"Name":{
			"en":"An-Nur",
			"ur":""
		},
		"Meaning":{
			"en":"The Light, The Illuminator",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	93:{
		"Arabic_Name": "ٱلْهَادِي",
		"Name":{
			"en":"Al-Haadi",
			"ur":""
		},
		"Meaning":{
			"en":"The Guide",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	94:{
		"Arabic_Name": "ٱلْبَدِيعُ",
		"Name":{
			"en":"Al-Badee’",
			"ur":""
		},
		"Meaning":{
			"en":"The Incomparable Originator",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	95:{
		"Arabic_Name": "ٱلْبَاقِي",
		"Name":{
			"en":"Al-Baaqi",
			"ur":""
		},
		"Meaning":{
			"en":"The Ever-Surviving, The Everlasting",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	96:{
		"Arabic_Name": "ٱلْوَارِثُ",
		"Name":{
			"en":"Al-Waarith",
			"ur":""
		},
		"Meaning":{
			"en":"The Inheritor, The Heir",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	97:{
		"Arabic_Name": "ٱلْرَّشِيدُ",
		"Name":{
			"en":"Ar-Rasheed",
			"ur":""
		},
		"Meaning":{
			"en":"The Guide, Infallible Teacher",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	},
	98:{
		"Arabic_Name": "ٱلْصَّبُورُ",
		"Name":{
			"en":"As-Saboor",
			"ur":""
		},
		"Meaning":{
			"en":"The Forbearing, The Patient",
			"ur":""
		},
		"Detail":{
			"en":"",
			"ur":""
		},
	}
}

func get_name_val(val:int) -> Dictionary:
	return Names[val]

func Select_Name(num:int) ->void:
	if num >= Names.size():
		Selected_Name = Names[0]
		return
	Selected_Name = Names[num]
