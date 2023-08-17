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
