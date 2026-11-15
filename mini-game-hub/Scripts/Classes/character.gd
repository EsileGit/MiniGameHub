class_name Character

var char_name: String = "Jean-Michel"
var age: int = 3
var level: int = 1:
	set(value):
		level = clampi(value, 1, MAX_LEVEL)
		
var max_health: int = 100

var health: int = 42:
	set(value):
		#print("+++ Setter de health (value = )", value)
		health = clampi(value, 0, max_health)
		#print("+++ Fin du setter de health")
	get:
		#print("--- Getter de health")
		return health

var weapon: Weapon

# Variable de travail
var percent_health: float:
	set(value):
		percent_health = clampf(value, 0, 100)
		health = value * max_health / 100
	get:
		return 100.0 * health / max_health

# Constantes
const MAX_LEVEL = 100


func _init(new_char_name: String, new_max_health: int, _weapon:Weapon = Weapon.create_wizard_weapon(), _age: int = 50) -> void:
	char_name = new_char_name

	max_health = new_max_health
	# On commence avec un personnage plein de vie par défaut
	health = max_health
	
	weapon = _weapon
	age = _age
	
func heal(amount: int):
	health += amount
	print("temp new health = ", health)
	health = clampi(health, 0, max_health)
	
	
func print_age() -> void:
	print(char_name, " a ", age, " ans.")

func print_health() -> void:
	print(char_name, " a ", health, " PV.")
	
func increase_age(nb_years: int) -> void:
	age += nb_years
	
func display_stats():
	var message_to_print: String = "{0} a {1} ans, {2}/{5} PV ({6}%) et {0} manie l'arme {3}, qui fait {4} degats. {0} est de niveau {7}"\
	.format([char_name, age, health, weapon.weapon_name, weapon.weapon_damage, max_health, percent_health, level])
	
	print(message_to_print)

func deal_damage_to(other_character: Character):
	other_character.health -= weapon.weapon_damage
	print(char_name, " a fait ",weapon.weapon_damage," degats à ", other_character.char_name)
	
	
# Fonctions statiques
static func create_teacher(prof_name:String) -> Character:
	var new_name: String = "Pr. " + prof_name
	var new_teacher: Character = Character.new(new_name, 400, Weapon.create_teacher_weapon(), 45)
	return new_teacher
