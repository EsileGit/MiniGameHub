extends Sprite2D

@export var speed: float = 300.0
@export var target_coordinates: Vector2 = Vector2(150.0, 230.0)

func _ready() -> void:
	display_car_properties()
	
# Fonction appelée à chaque frame
func _process(delta: float) -> void:
	# Pour se déplacer vers une coordonnée précise, la fonction 'move_toward' est 
	# toute indiquée. Ctrl + click sur la fonction pour consulter la doc.
	global_position = global_position.move_toward(target_coordinates, delta * speed)
	
# Fonction pour aider le debug
func display_car_properties():
	print("-------")
	print("Car ", name, " has a speed of ", speed)
	print("This car is going towards ", target_coordinates)
