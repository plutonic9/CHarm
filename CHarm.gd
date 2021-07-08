extends Node

var field = []
var plants  = {} # dictionary for plant types

export var field_x: int = 8
export var field_y: int = 8
export var tile_sizeX: int = 100
export var tile_sizeY: int = 100 

func _ready():

	for i in range(8):
		field.append([])
		for j in range(8):
			field[i].append({"type": "dirt", "alive": false, "time_alive": 0 })
			
			
	for plots in field:	
		print(plots)
		print(" ")
		
		
			
	plants["dirt"] = Color(0.96, 0.64, 0.38, 1)
	plants["rice"] = Color(0.96, 0.96, 0.96, 1)
	plants["wheat"] = Color(0.96, 0.87, 0.7, 1)
	plants["corn"] = Color(1, 1, 0, 1)
	plants["rock"] = Color(0.55, 0.27, 0.07, 1)
	plants["dead"] = Color(0.45, 0, 0, 1 )

	$Dirt.color = plants["dirt"]
	$Rice.color = plants["rice"]
	$Wheat.color = plants["wheat"]
	$Corn.color = plants["corn"]
	$Rock.color = plants["rock"]
	$Dead.color = plants["dead"]	

#	field.append = {Vector2(0,0): {"type": "dirt"}}
#
#	print(field)
	
	
	
	
	


func _process(delta):
	pass
