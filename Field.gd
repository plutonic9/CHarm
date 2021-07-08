extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var Tile = preload("res://Tiles.tscn") # Will load when parsing the script.



# Called when the node enters the scene tree for the first time.
func _ready():
	var field = []
	
	for col in range(5):
		field.append([])
		for row in range(5):
			var type: String
			if (col % 2 == 0):
				type = 'dirt'
			else:
				type = 'rock'
				
			var tile = Tile.instance()
			tile.set_type(type)
			tile.position = Vector2(col * 100, row * 100)
			add_child(tile)
			
			
			
	# for array(8) { for array(8) { addChild(new Tile('dirt') }
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
