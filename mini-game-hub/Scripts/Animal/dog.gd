extends Animal
class_name Dog

enum DogBreed {
	MALAMUTE,
	CORGI,
	TERRIER,
	SAMOYED,
	JOSETTE_DOG
}

var breed: DogBreed

func _init(p_name:String, p_age:int, p_breed: DogBreed) -> void:
	super(p_name, p_age)
	breed = p_breed

func yell() -> void:
	print("Woof")
	
func _to_string() -> String:
	var display_string: String = super._to_string()
	return display_string + "\nDogBreed: %s" % get_breed_to_string(breed)


# Petite astuce pour print le name d'une enum. Ici, la fonction est static, car 
# on imagine qu'elle pourrait servir pour une utilisation hors classe, pour tout
# élément qui utilise le DogBreed
static func get_breed_to_string(p_breed:DogBreed) -> String:
	return DogBreed.keys()[p_breed]
