extends Node2D

var or_joueur: int = 62
var prix_epee: int = 75
var degat: int = 6
var vie: int = 13

func _ready() -> void:
	# Achat épée
	#bool = booléen => une valeur qui peut être "true" ou "false"
	var peut_acheter: bool = or_joueur >= prix_epee
	print("peut_acheter: ", peut_acheter)
	var or_restant: int = or_joueur - prix_epee
	or_joueur -= prix_epee
	print("or restant: ", or_joueur)
	peut_acheter = or_restant >= 0
	if (peut_acheter):
		print("On peut acheter")
	else:
		print("on est pauvre")
	
	# Critiques
	var deg_critiques:int = degat * 3
	print("deg_critiques = ", deg_critiques)
	
	# Nb de coups sans mourir
	var nb_coups: = vie / degat
	print("nb coups = ", nb_coups)
	
	# Surplus
	var vie_restante: int = vie - (nb_coups * degat)
	var vie_restante_modulo: int = vie % degat
	print("vie_restante / vie_restante_modulo : ", vie_restante, " / ", vie_restante_modulo)
	
	# En danger
	var peu_de_vie: bool = vie < 30
	var bcp_degats: bool = degat > 50
	var en_danger: bool = peu_de_vie or bcp_degats
	
	if (vie < 30 || degat > 50):
		print("je suis en danger")
	else:
		print("tout va bien")
		
	# On s'est pris un critique
	var vie_apres_critique: int = vie - deg_critiques
	if (vie_apres_critique < 0):
		vie_apres_critique = 0
	print("vie_apres_critique = ", vie_apres_critique)
		
	
