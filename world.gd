extends Node2D

@export var next_level:PackedScene
@onready var game_over = %GameOver

@onready var level_completed = %LevelCompleted

func go_to_next_level():
	if not next_level is PackedScene: return
	await LevelTransition.fade_to_black()
	get_tree().paused = false
	get_tree().change_scene_to_packed(next_level)
	LevelTransition.fade_from_black()
func retry():
	await  LevelTransition.fade_to_black()
	get_tree().paused =true
	get_tree().change_scene_to_file(scene_file_path)
	

func _ready():
	if not next_level is PackedScene:
		level_completed.next_level_button.text = "Victory Screen"
		next_level = load("res://victory_screen.tscn")
	RenderingServer.set_default_clear_color(Color.BLACK)
	LevelTransition.fade_from_black()
	Events.level_completed.connect(show_level_completed)
	
	get_tree().paused = false
func show_level_completed():
	level_completed.show()
	level_completed.retry_button.grab_focus()
	get_tree().paused = true
	


func _on_level_completed_next_level():
	go_to_next_level()


func _on_level_completed_retry():
	retry()


func _on_player_alert_on_player_death():
	game_over.show()
	game_over.retry_button.grab_focus()
	get_tree().paused = true


func _on_game_over_retry():
	retry()


func _on_game_over_return_to_tilte_screen():
	get_tree().change_scene_to_file("res://start_menu.tscn")
	get_tree().paused =false
	
