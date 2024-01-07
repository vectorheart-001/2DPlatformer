extends ColorRect

signal retry()
signal next_level()
@onready var retry_button = %RetryButton
@onready var next_level_button = %NextLevelButton


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_next_level_button_pressed():
	next_level.emit()


func _on_retry_button_pressed():
	retry.emit()
