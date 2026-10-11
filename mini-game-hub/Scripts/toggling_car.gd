extends Sprite2D

# Paramètres règlables
@export var speed: float = 300.0
@export var target_one: Node2D 
@export var target_two: Marker2D 

# Variables fonctionnelles (ne sont pas issue d'une data reglée par l'utilisateur)
var go_to_target_one: bool = true # par défaut, on se dirige vers la première cible

func _ready() -> void:
	display_car_properties()
	
# Fonction appelée à chaque frame
func _process(delta: float) -> void:
	check_inputs()
	var coordinates_to_reach: Vector2 = get_target_coordinates()
	global_position = global_position.move_toward(coordinates_to_reach, delta * speed)
	
# Fonction qui renvoie la cible choisie
func get_target_coordinates() -> Vector2:
	# Choix de la cible en fonction du booléen
	if (go_to_target_one):
		return target_one.global_position
	else:
		return target_two.global_position
	
# Fonction qui gère les inputs joueurs
func check_inputs() -> void:
	if (Input.is_action_just_pressed("ToggleTarget")):
		go_to_target_one = !go_to_target_one
		print("On se dirige vers la première target ? ", go_to_target_one)
	
	
# Fonction pour aider le debug
func display_car_properties():
	print("-------")
	print("Car ", name, " has a speed of ", speed)
