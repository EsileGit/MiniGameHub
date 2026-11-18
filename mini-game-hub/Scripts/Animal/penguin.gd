extends Bird
class_name Penguin

func fly() -> void:
	# ne pas appeler super.fly(), puisqu'on veut remplacer le comportement du 
	# parent, et pas ajouter à celui-ci
	print("I don't fly, I slide on the ice")
