extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var rex := Dog.new("Rex", 4, Dog.DogBreed.CORGI)
	var grosminet := Cat.new("Grosminet", 3)
	var titi := Bird.new("Titi", 1)
	var felix := Cat.new("Felix", 12)
	
	var zoo: Array[Animal] = [rex, grosminet, titi, felix, Penguin.new("Kinder", 5)]
	
	print("---")
	for animal in zoo:
		print(animal)
		animal.yell()
		if (animal is Bird):
			animal.fly()
		print("---")
	
	#exo_1()
	#exo_2()
	#exo_3()
	
func exo_1():
	print("-------- EXO 1 -----------")
	#var rex := Dog.new("Rex", 4)
	var grosminet := Cat.new("Grosminet", 3)
	var titi := Bird.new("Titi", 1)
	
	#print(rex)
	print(grosminet)
	grosminet.manger()
	print(titi)
	
func exo_2():
	print("-------- EXO 2 -----------")
	#var rex := Dog.new("Rex", 4)
	var grosminet := Cat.new("Grosminet", 3)
	var titi := Bird.new("Titi", 1)
	
	#rex.yell()
	grosminet.yell()
	titi.yell()
	

func exo_3():
	print("-------- EXO 3 -----------")
	var rex := Dog.new("Rex", 4, Dog.DogBreed.CORGI)
	var grosminet := Cat.new("Grosminet", 3)
	var titi := Bird.new("Titi", 1)
	
	print(rex)
	rex.decrire()	# On vérifie que les 2 fonctionnent toujours bien
	print(grosminet)
	grosminet.catch(titi)
	print(titi)
	titi.fly()
