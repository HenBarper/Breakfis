extends Node

enum Tetromino {
	BACON, EGG, PANCAKE, SAUSAGE, BANANA, WAFFLES, WAFFLEZ
}

var cells = {
	Tetromino.BACON: [Vector2(-1, 0), Vector2(0, 0), Vector2(1, 0), Vector2(2, 0)],
	Tetromino.EGG: [Vector2(1, 0), Vector2(2, 0), Vector2(0, -1), Vector2(1, -1), Vector2(2, -1)],
	Tetromino.PANCAKE: [Vector2(-1, 0), Vector2(0, 0), Vector2(-1, -1), Vector2(0, -1)],
	Tetromino.SAUSAGE: [Vector2(-1, 0), Vector2(0, 0), Vector2(1, 0), Vector2(1, -1)],
	Tetromino.BANANA: [Vector2(-1, 0), Vector2(0, 0), Vector2(1, 0), Vector2(1, 1)],
	Tetromino.WAFFLES: [Vector2(-1, 0), Vector2(0, 0), Vector2(0, -1), Vector2(1, -1)],
	Tetromino.WAFFLEZ: [Vector2(-1, 0), Vector2(0, 0), Vector2(0, 1), Vector2(1, 1)],
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
	Tetromino.BACON: preload("res://Resources/bacon_piece_data.tres"),
	Tetromino.EGG: preload("res://Resources/egg_piece_data.tres"),
	Tetromino.PANCAKE: preload("res://Resources/pancake_piece_data.tres"),
	Tetromino.SAUSAGE: preload("res://Resources/sausage_piece_data.tres"),
	Tetromino.BANANA: preload("res://Resources/banana_piece_data.tres"),
	Tetromino.WAFFLES: preload("res://Resources/waffles_piece_data.tres"),
	Tetromino.WAFFLEZ: preload("res://Resources/wafflez_piece_data.tres")
}

var clockwise_rotation_matrix = [Vector2(0, -1), Vector2(1, 0)]
var counter_clockwise_rotation_matrix = [Vector2(0,1), Vector2(-1, 0)]
