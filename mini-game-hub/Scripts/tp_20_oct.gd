extends Node

# Paramètres
var save: String = "  ana la brave;120;80  \n"
var ennemis: Array = ["Slime", "Gobelin", "Dragon"]
var wave_size: int = 16
var enemy_hp: int = 30
var group_size: int = 4



func soigner(vie_avant:int) -> int:
	var vie_apres = vie_avant + 20
	print(vie_apres)
	return vie_apres

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var vie: int = 140
	print("avant heal ", vie)
	vie = soigner(vie)
	print("apres heal ", vie)
	
	
func autre():
	
	var harry = Character.new()
	var ron = harry
	ron.char_name = "Ron"
	var snape = Character.new(500)
	snape.char_name = "Snape"
	snape.set_health(400)
	var hermione = Character.new(57, "Hermione", "purse")
	
	harry.print_health()
	ron.print_health()
	snape.print_health()
	
	harry.char_name = "Harry"
	harry.weapon = "Elder wand"
	harry.weapon_damage = 35
	snape.weapon = "Sarcasm"
	snape.weapon_damage = 28
	hermione.weapon_damage = 3
	hermione.take_damage(600)
	
	harry.display_stats()
	snape.display_stats()
	hermione.display_stats()
	
	hermione.heal(50)
	hermione.display_stats()
	hermione.heal(500)
	hermione.display_stats()
	
	
	
func exo_for():
	var total_hp: int = 0
	var tableau: String = ""
	# i = 0 & j = 1 -> 1
	# i = 0 & j = 2 -> 2
	# i = 1 & j = 1 -> 5
	# Ennemis
	for i in range(wave_size / group_size):
		var ligne: String = ""
		
		for j in range(1, group_size + 1):
			var sentence_to_print: String = "Ennemi " + str(i * group_size + j)
			
			# Par défaut, l'ennemi (de base) a enemy_hp points de vie
			var current_enemy_hp: int = enemy_hp
			
			# Est-on un boss ?
			if (j % group_size == 0):
				# Les boss ont 2x plus de PV
				current_enemy_hp = enemy_hp * 2
				sentence_to_print = sentence_to_print + " : BOSS"
				ligne += "B"
			else:
				ligne += "E"
			
			# Mise à jour des PV totaux
			total_hp += current_enemy_hp
			
			print(sentence_to_print)
		tableau += ligne + "\n"
	print("total hp : ", total_hp)
	print(tableau)
	
		
		
	
	
	
func demo_for() -> void:
	for i in range(ennemis.size() - 1, -1, -2):
		# 2 0
		print("index de l'élément: ", i, "\tvaleur de l'élément: ", ennemis[i])
	
	
func exo_string() -> void:
	print(save)
	# Nettoyage
	var save_without_edges = save.strip_edges() + "Test retour à la ligne"
	save = save.strip_edges()
	print(save)
	# Découpage
	var split_save: PackedStringArray = save.split(";")
	print(split_save)
	# Ranger dans des variables
	var player_name: String = split_save[0].capitalize()
	print("name: ", player_name)
	var gold: float = split_save[1].to_float()
	print("gold: ", gold)
	var pv: int = int(split_save[2])
	print("pv: " ,  pv)
	# Enrichissement
	gold += 30
	print(gold)
	# Formattage
	if (player_name.containsn("brave")):
		print("Je suis brave")
	else:
		print("Je suis pas brave")
	var fiche: String = "{0} | Or: {1} | PV: {2}".format(
		[player_name, gold, pv])
	print(fiche)
