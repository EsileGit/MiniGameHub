extends Node

var hp: int = 100

func heal(amount : int) -> int:
	var new_hp = hp + amount
	return new_hp
	
func _ready() -> void:
	print(heal(20))
	print(hp)
	hp = heal(5)
	print(hp)
	#print(new_hp)
