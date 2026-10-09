extends Sprite2D

class_name Vehicle

# Bien faire attention d'utiliser le nom du noeud après le $
@onready var belt_sound_player: AudioStreamPlayer = $AudioStreamPlayer


# Paramètres
@export var speed_linear:float = 200.0
@export var direction:Vector2 = Vector2(116.0, 21.5)
@export var target: Marker2D


# Variable de travail
var current_direction:Vector2

func _ready() -> void:
	current_direction = direction
	print(typeof(current_direction))
	
func _process(delta: float) -> void:
	var direction_to_target:Vector2 = global_position.direction_to(target.global_position)
	translate(direction_to_target * delta * speed_linear)
	
# Ce code n'est jamais appelé: il est juste là pour vous donner l'exemple vu en cours
func move_to_mouse(delta:float):
	look_at(get_global_mouse_position())
	move_local_x(delta * speed_linear)
