class_name Animal

## Parameters
var display_name: String = ""
var age: int = 0

# DogBreed should not be here because it is not generic, it's specific to dogs

## Member functions
func _init(p_name:String, p_age:int) -> void:
	display_name = p_name
	age = p_age
	
func manger() -> void:
	print(display_name, " mange")

# Tips: on peut redéfinir la fonction "_to_string" (d'un Object) pour avoir un print 
# personnalisé
func _to_string() -> String:
	var year: String = "year" if age < 2 else "years"
	return "%s is %d %s old." % [display_name, age, year]

func decrire() -> void:
	print(_to_string())
	
func yell() -> void:
	print("...")
