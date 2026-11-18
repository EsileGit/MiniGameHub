extends Animal
class_name Cat

func yell() -> void:
	print("Meow")
	
func catch(other_animal: Animal):
	print("Will %s try to catch %s ?" % [display_name, other_animal.display_name])
	
	if (other_animal is Bird):
		print("   I will try to catch this birdy")
	elif (other_animal is Dog):
		print("   Should I stay or should I go ?")
	else:
		print("   I will simply ignore this lesser being.")
