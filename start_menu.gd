extends CenterContainer

@onready var start_game_button = %StartGameButton


# Called when the node enters the scene tree for the first time.
func _ready():
	RenderingServer.set_default_clear_color(Color.BLACK)
	LevelTransition.fade_from_black()
	start_game_button.grab_focus()
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_quit_game_button_pressed():
	get_tree().quit()


func _on_start_game_button_pressed():
	
	get_tree().change_scene_to_file("res://level_one.tscn")
	
