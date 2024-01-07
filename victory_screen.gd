extends CenterContainer
@onready var menu_button = %MenuButton


# Called when the node enters the scene tree for the first time.
func _ready():
	LevelTransition.fade_from_black()
	menu_button.grab_focus()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_menu_button_pressed():
	get_tree().change_scene_to_file("res://start_menu.tscn")
