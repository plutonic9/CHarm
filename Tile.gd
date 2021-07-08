extends Node2D

var colors = {
	"dirt": Color(0.96, 0.64, 0.38, 1),
	"rock": Color(0.55, 0.27, 0.07, 1),
	"dead": Color(0, 0, 0, 1)
}

export var tileType: String = 'dirt'


# Called when the node enters the scene tree for the first time.
func _ready():
	set_type('dirt')
	pass

func set_type(newType : String):
	tileType = newType
	if (newType == 'dirt'):
		$ColorRect.color = colors.dirt
	elif (newType == 'rock'):
		$ColorRect.color = colors.rock

func get_type():
	return tileType
