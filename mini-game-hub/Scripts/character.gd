class_name Character

# Variables membres
var _health: int:
	set = set_health, get = get_health
var char_name: String = "Harry Potter"
var weapon: String = "Wood stick"
var weapon_damage: int = 2
var max_health: int = 100


func _init(p_max_health: int = 100, 
p_char_name:String = "Neville Longbottom", 
p_weapon: String = "no weapon", 
p_weapon_damage: int = 2) -> void:
	set_health(p_max_health)
	max_health = p_max_health
	char_name = p_char_name
	weapon = p_weapon
	weapon_damage = p_weapon_damage
	
func set_health(new_health: int):
	_health = clampi(new_health, 0, max_health)
func get_health():
	return _health
	
func print_health():
	print("Character %s has %d PV" %[char_name, _health])
	
func take_damage(damage_amount: int):
	_health -= damage_amount
	
func heal(heal_amount: int):
	_health += heal_amount
	
		
func display_stats():
	print("Character {0} has {1} PV. {0} wields a {2} which deals {3} damage."
	.format([char_name, _health, weapon, weapon_damage]))
	
