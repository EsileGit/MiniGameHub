extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#L'ambulance avance
	#buggy.position += Vector2(0.0, 60.0) * delta
	pass
	
	# Le buggy se déplace à vitesse constante de haut vers le bas
