extends Node2D

#	plants["dirt"] = Color(0.96, 0.64, 0.38, 1)
#	plants["rice"] = Color(0.96, 0.96, 0.96, 1)
#	plants["wheat"] = Color(0.96, 0.87, 0.7, 1)
#	plants["corn"] = Color(1, 1, 0, 1)
#	plants["rock"] = Color(0.55, 0.27, 0.07, 1)
#	plants["dead"] = Color(0.45, 0, 0, 1 )

var dirtColor = Color(0.96, 0.64, 0.38, 1)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func set_type(newType : String):
	if (newType == 'dirt'):
		$ColorRect.color = dirtColor
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
