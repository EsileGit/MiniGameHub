extends Sprite2D

@export var speed: float = 300.0
@export var direction_of_movement: Vector2 = Vector2(1, 1)

func _ready() -> void:
	display_car_properties()
	
# Fonction appelée à chaque frame
func _process(delta: float) -> void:
	# On déplace le noeud courrant d'une petite distance indexée sur delta (temps depuis la dernière frame)
	# La direction de déplacement est un paramètre
	position += direction_of_movement.normalized() * (delta * speed)
	
	
# Fonction pour aider le debug
func display_car_properties():
	print("-------")
	print("Car ", name, " has a speed of ", speed)
	print("This car is going in the direction ", direction_of_movement)
