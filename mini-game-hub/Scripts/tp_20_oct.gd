extends Node

var save: String = "  ana la brave;120;80  \n"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
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
