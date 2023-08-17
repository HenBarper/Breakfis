extends Node

enum Tetromino {
	JAM, TOAST, SALAMI, QUICHE, COFFEE, SAMMY, PCAKES
}

var cells = {
	Tetromino.JAM: [Vector2(-1, 0), Vector2(0, 0), Vector2(1, 0), Vector2(2, 0)],
	Tetromino.TOAST: [Vector2(-1, 1), Vector2(-1, 0), Vector2(0,0), Vector2(1, 0 )],
	Tetromino.SALAMI: [Vector2(1,1), Vector2(-1, 0), Vector2(0,0), Vector2(1,0)],
	Tetromino.QUICHE: [Vector2(0,1), Vector2(1,1), Vector2(0,0), Vector2(1,0)],
	Tetromino.COFFEE: [Vector2(0,1), Vector2(1,1), Vector2(-1, 0), Vector2(0,0)],
	Tetromino.SAMMY: [Vector2(0,1), Vector2(-1, 0), Vector2(0,0), Vector2(1,0)],
	Tetromino.PCAKES: [Vector2(-1, 1), Vector2(0, 1), Vector2(0,0), Vector2(1, 0)]
}

var wall_kicks_i = [
	[Vector2(0,0), Vector2(-2,0), Vector2(1,0), Vector2(-2,-1), Vector2(1,2)],
	[Vector2(0,0), Vector2(2,0), Vector2(-1, 0), Vector2(2,1), Vector2(-1, -2)],
	[Vector2(0,0), Vector2(-1, 0), Vector2(2,0), Vector2(-1,2), Vector2(2, -1)],
	[Vector2(0,0), Vector2(1,0), Vector2(-2, 0), Vector2(1, -2), Vector2(-2, 1)],
	[Vector2(0,0), Vector2(2,0), Vector2(-1, 0), Vector2(2,1), Vector2(-1, -2)],
	[Vector2(0,0), Vector2(-2,0), Vector2(1, 0), Vector2(-2, -1), Vector2(1, 2)],
	[Vector2(0,0), Vector2(1,0), Vector2(-2,0), Vector2(1, -2), Vector2(-2,1)],
	[Vector2(0,0), Vector2(-1, 0), Vector2(2, 0), Vector2(-1,2), Vector2(2, -1)]
]

var wall_kicks_jlostz = [
	[Vector2(0,0), Vector2(-1,0), Vector2(-1,1), Vector2(0,-2), Vector2(-1, -2)],
	[Vector2(0,0), Vector2(1,0), Vector2(1, -1), Vector2(0,2), Vector2(1, 2)],
	[Vector2(0,0), Vector2(1, 0), Vector2(1,-1), Vector2(0,2), Vector2(1, 2)],
	[Vector2(0,0), Vector2(-1,0), Vector2(-1, 1), Vector2(0, -2), Vector2(-1, -2)],
	[Vector2(0,0), Vector2(1,0), Vector2(1, 1), Vector2(0,-2), Vector2(1, -2)],
	[Vector2(0,0), Vector2(-1,0), Vector2(-1, -1), Vector2(0, 2), Vector2(-1, 2)],
	[Vector2(0,0), Vector2(-1,0), Vector2(-1,-1), Vector2(0, 2), Vector2(-1, 2)],
	[Vector2(0,0), Vector2(1, 0), Vector2(1, 1), Vector2(0,-2), Vector2(1, -2)]
]

var data = {
	Tetromino.JAM: preload("res://Resources/jam_piece_data.tres"),
	Tetromino.TOAST: preload("res://Resources/toast_piece_data.tres"),
	Tetromino.SALAMI: preload("res://Resources/salami_piece_data.tres"),
	Tetromino.QUICHE: preload("res://Resources/quiche_piece_data.tres"),
	Tetromino.COFFEE: preload("res://Resources/coffee_piece_data.tres"),
	Tetromino.SAMMY: preload("res://Resources/sammy_piece_data.tres"),
	Tetromino.PCAKES: preload("res://Resources/pcakes_piece_data.tres")
}

var clockwise_rotation_matrix = [Vector2(0, -1), Vector2(1, 0)]
var counter_clockwise_rotation_matrix = [Vector2(0,1), Vector2(-1, 0)]
