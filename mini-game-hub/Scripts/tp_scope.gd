extends Node

# typage static
var score: int = 0

func add_score(points: int = 1) -> void:
	var bonus: int = 5
	score += points + bonus
	
	if (score > 100):
		var message = "Bien joué !"
		print(message)
	
	print("Nouveau score: ", score)
	# Problèmes de scope:	
	#print(message)
	#var bonus: int = 12
	
	
	
func _ready() -> void:
	add_score(10)
	add_score(100)
