extends Node


func _ready() -> void:
	var baguette_sureau: Weapon = Weapon.new(Weapon.WeaponType.WAND)
	baguette_sureau.weapon_damage = 122
	baguette_sureau.weapon_name = "baguette de sureau"
	baguette_sureau.display_stats()
	
	var baguette_nulle: Weapon = Weapon.create_wizard_weapon()
	baguette_nulle.display_stats()
	
	var harry: Character = Character.new("Harry", 60)
	
	var snape: Character = Character.create_teacher("Snape")
	snape.max_health = 500
	snape.weapon = baguette_sureau
	snape.display_stats()
	
	harry.deal_damage_to(snape)
	
	print("echange de baguettes")
	harry.weapon = baguette_sureau
	snape.weapon = baguette_nulle
	harry.display_stats()
	snape.display_stats()
	
func exo_personnages():
	pass
	#var ron: Character = Character.new("Ron", 30, "Balais", 30, 12)
	#ron.display_stats()
	#
	#var hermione: Character = Character.new("Hermione", 120, "livres", 25, 11)
	#hermione.display_stats()

	





func exo_demo():
	# On déclare un character, mais la boite Character est vide
	var toto: Character 
	# On n'a pas encore le droit de faire toto.print_age()
	
	# On crée une instance de Character: on remplit la boite avec les valeurs par défaut d'un character
	toto = Character.new("Harry", 60)
	print("Toto par défaut, vaut: ")
	toto.print_age()
	
	print("On modifie Toto: ")
	toto.char_name = "Toto"
	toto.age = 142
	toto.print_age()
	
	
	
