extends Node2D

	
func _ready() -> void:
	var save:String = "  ana la brave;120.3;80  "
	var data: = save.strip_edges().split(";")
	
	var name: String = data[0].capitalize()
	
	var gold: float = data[1].to_float()
	gold += 50
	
	var pv:int = data[2].to_int()
	
	print("%s | Or : %.2f | PV : %d" % [name, gold, pv])
	
	
	
	
	
	

var inv: Array[String] = ["épée", "potion", "clé"]

# Boucle for
var wave_size: int = 8
var enemy_hp: int = 30

func prep_TP():
	print("TP arrays".strip_edges())
	# 1
	print(inv[1], " " , inv[-1], "\n")
	# 2
	inv.append("arc")
	inv.remove_at(0)
	print("taille inventaire = ", inv.size()," contenu des éléments: ", inv[0], inv[1], inv[2])
	# 3
	print("#3")
	print(inv.find("épée"))
	print(inv.has("clé"))
	# 4
	inv[2] = "bouclier"
	#inv[3] = "casque"
	# Boucle for
	print("-----------")
	var total_hp:int = 0
	for enemy_index in range(1, wave_size + 1):
		# un ennemi sur 4 est un boss
		if (enemy_index % 4 == 0):
			print("Ennemi ", enemy_index, " : BOSS")
			total_hp += enemy_hp * 2
		else:
			print("Ennemi ", enemy_index)
			total_hp += enemy_hp
			
	print("HP total: ", total_hp)
			
			
			
			
