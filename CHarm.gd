extends Node

var Tile = preload("res://Tile.tscn") # Will load when parsing the script.
var field
var rng = RandomNumberGenerator.new()

export var fieldWidth: int = 5
export var fieldHeight: int = 5
export var numOfRocks: int = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	field = build_field(fieldWidth, fieldHeight)
			
			
func build_field(width: int, height: int):
	var result = []
	rng.randomize()
	
	for col in range(width):
		result.append([])
		for row in range(height):
			var tile = preload("res://Tile.tscn").instance()
			result[col].append(tile)
			tile.position = Vector2(col * 100, row * 100)
			add_child(tile)
			

	for i in range(numOfRocks):
		var rock_col = rng.randi_range(0, width - 1)
		var rock_row = rng.randi_range(0, height - 1)
		
		if (result[rock_col][rock_row].get_type() == 'rock'):
			print("already rock")
	
		result[rock_col][rock_row].set_type('rock')
		
	return result
