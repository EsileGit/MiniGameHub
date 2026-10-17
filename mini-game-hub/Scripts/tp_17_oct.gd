extends Node2D

var or_joueur: int = 62
var prix_epee: int = 75
var degat: int = 6
var vie: int = 13
var nom: String = "Josette"

# Tableaux
#						    0         1       2
var inv: Array[String] = ["épée", "potion", "clé"]
var inv_joseph = inv.duplicate()
	
	
func _ready() -> void:
	# Joseph gagne un boulier
	inv_joseph.append("bouclier")
	
	# l'inventaire de l'autre joueur perd son épée
	var index_epee: int = inv.find("épée")
	inv.remove_at(index_epee)
	inv.erase("épée")
	
	var size_inv_Joseph: int = inv_joseph.size()
	# ["épée", "potion", "clé", "bouclier"]
	# Quel est le dernier élément ?
	print(inv_joseph[- 1])
	
	
	
	# Est-ce que Joseph possède une clé ?
	if (inv_joseph.has("clé_bleue")):
		print("Il peut ouvrir la porte bleue")
	else:
		print("condamné à rester dans le vestibule")
	
	print("Inventaire Joseph: ", inv_joseph)
	print("Inventaire de l'autre joueur: ", inv)
	
	
	
	
	
	
	
	
func take_damage(current_health: int, damage: int = 10) -> int:
	if (current_health < 0):
		return 0
	if (damage > 1000):
		return 0
		
	print("Santé avant calcul: ", current_health)
	current_health = current_health - damage
	print("Santé après degats: ", current_health)
	
	# Remise de la vie à zero
	if (current_health <= 0):
		current_health = 0
		print("T'es mort")
	else:
		print("On est en vie")
		
	# Je finis l'exécution de ma fonction take_damage() et je renvoie la valeur
	# contenue dans current_health
	return current_health
	
	
	
	
func exo_1() -> void:
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
	
	# Je finis ma fonction exo_1
	return 
	
	
	
