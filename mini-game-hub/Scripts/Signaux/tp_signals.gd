extends Control

var counter: int = 0

@onready var button_clic: Button = %ButtonClic
@onready var label_clic: Label = $NodeClic/LabelClic

@onready var label_button_down: Label = %LabelButtonDown

@onready var h_slider: HSlider = $HSlider
@onready var label_slider: Label = $LabelSlider


@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D
signal play_sound_requested(text_to_display: String)




func _ready() -> void:
	update_clic_label()
	button_clic.pressed.connect(_on_button_clic_pressed)
	
	h_slider.value_changed.connect(_value_changed_slider)
	h_slider.changed.connect(_smth_changed_slider)

	h_slider.min_value = 30
	
	play_sound_requested.connect(_on_play_sound_requested)
	
	

func _unhandled_input(event: InputEvent) -> void:
	print("action pressed")
	if (event.is_action_pressed("PlaySound")):
		play_sound_requested.emit(str(counter))




func _on_button_clic_pressed() -> void:
	counter += 1
	update_clic_label()
	
func update_clic_label():
	# Affiche la valeur du counter dans le label
	label_clic.text = str(counter)




# Le bouton ButtonUpDown émet le signal button_down
func _on_button_up_down_button_down() -> void:
	# Afficher Down
	label_button_down.text = "Down"
	

# Le bouton ButtonUpDown émet le signal button_up
func _on_button_up_down_button_up() -> void:
	# Afficher Up
	label_button_down.text = "Up"
	
	
	
func _value_changed_slider(new_slider_value: float) -> void:
	label_slider.text = str(new_slider_value)
	
func _smth_changed_slider() -> void:
	print("toto")
	

func _on_play_sound_requested(text:String) -> void:
	audio_stream_player_2d.play()
	print(text)
