extends CharacterBody2D

#speed of the player movement
const SPEED = 500.0

func _physics_process(_delta):
	var direction = Input.get_axis("ui_up", "ui_down")
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
	
	if position.x != -550:
		position.x = -550
