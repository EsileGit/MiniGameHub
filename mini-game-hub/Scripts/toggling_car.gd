extends Sprite2D

# Paramètres règlables
@export var speed: float = 300.0
# Le ciblage commence avec le premier élément du tableau, et les parcourt dans l'ordre croissant d'index
@export var targets: Array[Node2D]

# Variable de travail
var current_index: int = 0


func _ready() -> void:
	display_car_properties()
	
# Fonction appelée à chaque frame
func _process(delta: float) -> void:
	check_inputs()
	var coordinates_to_reach: Vector2 = get_target_coordinates()
	global_position = global_position.move_toward(coordinates_to_reach, delta * speed)
	
# Fonction qui renvoie la cible choisie
func get_target_coordinates() -> Vector2:
	# Choix de la cible en fonction son index
	var current_target_node: Node2D = targets[current_index]
	return current_target_node.global_position
	# return targets[current_index].global_position
	
# Fonction qui gère les inputs joueurs
func check_inputs() -> void:
	if (Input.is_action_just_pressed("ToggleTarget")):
		#print("---------------------------")
		#print("old index : ", current_index)
		#print("size : ", targets.size())
		current_index = (current_index + 1) % targets.size()
		
		#print("Le ", name, " se dirige vers la target : ", current_index)
		#print("---------------------------")
	
	
# Fonction pour aider le debug
func display_car_properties():
	print("-------")
	print("Car ", name, " has a speed of ", speed)
