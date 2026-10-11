extends Sprite2D

# Paramètres règlables
@export var speed: float = 300.0
@export var target_coordinates_one: Vector2 = Vector2(150.0, 230.0) # pour plus de clarté, on renomme notre variable
@export var target_coordinates_two: Vector2 = Vector2(150.0, 230.0) 

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
		return target_coordinates_one
	else:
		return target_coordinates_two
	
# Fonction qui gère les inputs joueurs
func check_inputs() -> void:
	if (Input.is_action_just_pressed("ToggleTarget")):
		go_to_target_one = !go_to_target_one
		print("La touche espace a été pressée")
	
	
# Fonction pour aider le debug
func display_car_properties():
	print("-------")
	print("Car ", name, " has a speed of ", speed)
