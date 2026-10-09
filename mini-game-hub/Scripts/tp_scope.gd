extends Node

# typage static
var score: int = 0

func add_score(points: int = 1) -> void:
	var bonus: int = 5
	score += points + bonus
	
	if (score > 100):
		var message = "Bien joué !"
		print(message)
	elif (score < 20):
		var message = "C'est pas ouf"
		print(message)
	else:
		var message = "Pas mal mais améliorable"
		print(message)
		
	
	print("Nouveau score: ", score)
	# Problèmes de scope:	
	#print(message)
	#var bonus: int = 12
	
	
	
func _ready() -> void:
	add_score(10)
	add_score(100)
	
	exo_operators()
	
func exo_operators():
	print("----------")
	var or_joueur = 62
	var prix_epee = 75
	var degats = 6
	var vie = 13
	
	var or_restant = or_joueur - prix_epee
	var degats_critiques = degats * 3
	var nb_coups = vie / degats
	var surplus_vie = vie % degats
	var peut_acheter = or_joueur >= prix_epee
	var en_danger = vie < 30 or degats > 50
	vie -= degats_critiques
	
	print("or_restant : ", or_restant)
	print("degats_critiques : ", degats_critiques)  
	print("nb_coups : ", nb_coups)                  
	print("surplus_vie : ", surplus_vie)            
	print("peut_acheter : ", peut_acheter)          
	print("en_danger : ", en_danger)                
	print("nouvelle vie : ", vie)                            
	
