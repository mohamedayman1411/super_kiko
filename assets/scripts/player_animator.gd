extends Node2D

@export var player_controller : PlayerController
@export var player_animator : AnimationPlayer
@export var sprite : Sprite2D

func _process(delta: float) -> void:
# flips character sprite
	if player_controller.direction == 1:
		sprite.flip_h = false
	elif player_controller.direction == -1:
		sprite.flip_h = true
# plays the movement animation
	if player_controller.velocity.x != 0:
		player_animator.play("move")
	else:
		player_animator.play("idle")
# plays the jump animation
			
	if player_controller.velocity.y < 0.0:
		player_animator.play("jump")
	elif player_controller.velocity.y > 0.0:
		player_animator.play("fall")
