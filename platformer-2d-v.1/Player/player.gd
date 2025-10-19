extends CharacterBody2D

const SPEED = 200.0
const JUMP_VELOCITY = -300.0


const FALL_MULT := 1.8          # gravité plus forte en descente
const CUT_MULT := 3.0           # gravité quand on relâche tôt
const MAX_FALL_SPEED := 1400.0  # vitesse de chute max

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	# ---- Amélioration du feeling (3 lignes utiles) ----
	# Descente plus "lourde"
	if velocity.y > 0.0:
		velocity += get_gravity() * (FALL_MULT - 1.0) * delta
	# Petit saut si on relâche tôt
	elif velocity.y < 0.0 and Input.is_action_just_released("jump"):
		velocity += get_gravity() * (CUT_MULT - 1.0) * delta

	# Limite de chute
	if velocity.y > MAX_FALL_SPEED:
		velocity.y = MAX_FALL_SPEED
	
	var direction := Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
	# Game over si on tombe
	if position.y > 500:
		get_tree().change_scene_to_file("res://Game_over/game_over.tscn")
