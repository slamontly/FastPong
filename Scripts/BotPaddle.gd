extends StaticBody2D

@onready var timer = $Timer
@onready var ball = $"../Ball"


const speed = 3
var ballpos = 0

var up = false
var down = false

func _on_timer_timeout():
	if ballpos > position.y:
		up = true
		down = false
	elif ballpos < position.y:
		up = false
		down = true

func _process(_delta):
	if up and position.y < 278:
		position.y += speed
	elif down and position.y > -278:
		position.y -= speed
	
	#debugs
	#print(ball.position.y)
	#print("+")
	#print(position.y)
	pass
	
#old code
#get_parent().get_node("BotPaddle").position.y = get_parent().get_node("Ball").position.y
