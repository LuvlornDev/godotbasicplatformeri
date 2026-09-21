extends Node

@onready var player = $Player
@onready var wall = $TileMapLayer2
@onready var music = $Player/Music

const TRIGGER_X = 8100.0
var triggered = false

func _ready():
	wall.visible = false
	wall.collision_enabled = false

func _process(_delta):
	if player.global_position.x >= TRIGGER_X and not triggered:
		triggered = true

		wall.visible = true
		wall.collision_enabled = true

		var tween = create_tween()
		tween.tween_property(music, "volume_db", -80.0, 0.5)
		tween.tween_callback(music.stop)
