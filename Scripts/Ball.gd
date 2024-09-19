extends RigidBody2D

@onready var ballv = $"../ballv"
@onready var bot_paddle = $"../BotPaddle"

var velocity = Vector2(100,100)

func _ready():
	pass

func _process(delta):
	bot_paddle.ballpos = self.position.y
	
	var collision_info = move_and_collide(velocity * delta)
	if collision_info:
		velocity = velocity.bounce(collision_info.get_normal())
		velocity.x *= 1.1
		print(velocity.x)
		ballv.text = "speed: " + str(int(abs(velocity.x)))
		velocity.y *= 1.1
		print(velocity.y)
