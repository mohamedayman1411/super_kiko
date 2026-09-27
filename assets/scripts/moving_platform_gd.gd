extends Node2D

class_name MovingPlatform


@onready var path_follow_2d: PathFollow2D = $Path2D/PathFollow2D


func _ready() -> void:
	move_tween()


func move_tween() -> void:
	var tween: Tween = create_tween()
	tween.set_loops()
	

	tween.tween_property(
		path_follow_2d,
		"progress_ratio",
		1.0,
		1.0
	)

	tween.tween_property(
		path_follow_2d,
		"progress_ratio",
		0.0,
		1.0
	)
