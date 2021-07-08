extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var tileType: String = 'dirt'

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func set_type(newType : String):
	tileType = newType
	if (newType == 'dirt'):
		$ColorRect.color = 'blah'


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
