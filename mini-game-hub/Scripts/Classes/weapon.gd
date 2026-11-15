class_name Weapon
# Enum
enum WeaponType { WAND, BOW, SWORD, STAFF, AXE, BOOK }


# Variables
var weapon_name: String = "pas d'arme"
var weapon_damage: int = 1
var weapon_type: WeaponType
var weapon_type_int: int = 0

func _init(_weapon_type: WeaponType):
	if (_weapon_type == WeaponType.BOW):
		weapon_name = "Arc"
		weapon_damage = 35
	elif (_weapon_type == WeaponType.WAND):
		weapon_name = "Baguette"
		weapon_damage = 12
	elif (_weapon_type == WeaponType.SWORD):
		weapon_name = "Epée"
		weapon_damage = 26
	elif (_weapon_type == WeaponType.SWORD):
		weapon_name = "qdaz"
		weapon_damage = 26
		
	match _weapon_type:
		WeaponType.BOW:
			weapon_name = "Arc"
			weapon_damage = 35
		WeaponType.WAND:
			weapon_name = "Baguette"
			weapon_damage = 12
		WeaponType.STAFF:
			weapon_name = "Arc"
			weapon_damage = 35
		_:
			weapon_name = "Rien"
			weapon_damage = 0
			
		
	
	
	
func display_stats():
	var message_to_print: String = "[{2}] {0} fait {1} degats"\
	.format([weapon_name, weapon_damage, weapon_type])
	print(message_to_print)
	
static func create_wizard_weapon() -> Weapon:
	var new_weapon:= Weapon.new(WeaponType.WAND)
	new_weapon.weapon_damage = 10
	return new_weapon
	
static func create_teacher_weapon() -> Weapon:
	var new_weapon:=Weapon.new(WeaponType.WAND)
	new_weapon.weapon_name = "baguette de prof"
	new_weapon.weapon_damage = 50
	new_weapon.weapon_type = WeaponType.WAND
	return new_weapon

static func create_sword_weapon() -> Weapon:
	var new_weapon:= Weapon.new(WeaponType.SWORD)
	new_weapon.weapon_name = "sword"
	new_weapon.weapon_damage = 30
	new_weapon.weapon_type = WeaponType.SWORD
	new_weapon.weapon_type_int = 2
	return new_weapon
