extends ColorRect

@onready var retry_button = %RetryButton

signal retry()

signal return_to_tilte_screen()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_retry_button_pressed():
	retry.emit()


func _on_title_screen_button_pressed():
	return_to_tilte_screen.emit()
