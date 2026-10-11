extends Sprite2D

@export var speed: float = 300.0
@export var target_coordinates_one: Vector2 = Vector2(150.0, 230.0) # pour plus de clarté, on renomme notre variable
@export var target_coordinates_two: Vector2 = Vector2(150.0, 230.0) 

@export var go_to_target_one: bool = true # par défaut, on se dirige vers la première cible

func _ready() -> void:
	display_car_properties()
	
# Fonction appelée à chaque frame
func _process(delta: float) -> void:
	
	var coordinates_to_reach: Vector2
	
	if (go_to_target_one):
		coordinates_to_reach = target_coordinates_one
	else:
		coordinates_to_reach = target_coordinates_two
		
	print(name, " has selected coordinates: ", coordinates_to_reach)
	global_position = global_position.move_toward(coordinates_to_reach, delta * speed)
	
	
# Fonction pour aider le debug
func display_car_properties():
	print("-------")
	print("Car ", name, " has a speed of ", speed)
