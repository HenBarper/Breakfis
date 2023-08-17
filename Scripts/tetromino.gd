extends Node2D

class_name Tetromino

var wall_kicks
var tetromino_data
var is_next_piece
var pieces = []

@onready var piece_scene = preload("res://Scenes/piece.tscn")

var tetromino_cells

func _ready():
	tetromino_cells = Shared.cells[tetromino_data.tetromino_type]
	
	for cell in tetromino_cells:
		var piece = piece_scene.instantiate() as Piece
		pieces.append(piece)
		add_child(piece)
		piece.set_texture(tetromino_data.piece_texture)
		piece.position = cell * piece.get_size()
		
	if is_next_piece == false:
		position = tetromino_data.spawn_position
		wall_kicks = Shared.wall_kicks_i if tetromino_data.tetromino_type == Shared.Tetromino.BACON else Shared.wall_kicks_jlostz
