extends Node2D

#@onready var global = %Global
@onready var score_1 = $Global/Score1
@onready var score_2 = $Global/Score2
@onready var bot_paddle = $BotPaddle
@onready var ballv = $ballv

const BALL = preload("res://Scenes/ball.tscn")

var entered = false

#reset after lose/win
func _on_goal_1_body_entered(body):
	entered = true
	
	var reball = BALL.instantiate()
	call_deferred("add_child",reball)
	
	bot_paddle.ballpos = 0
	
	body.queue_free()
	#global.Score1 += 1
	score_1.score += 1
	print("goal1")
	
func _on_goal_2_body_entered(body):
	entered = true
	
	var reball = BALL.instantiate()
	call_deferred("add_child",reball)
	
	bot_paddle.ballpos = 0
	
	body.queue_free()
	#global.Score2 += 1
	score_2.score += 1
	print("goal2")
	
func _ready():
	ballv.text = "speed: 100"

func _process(_delta):
	if entered == true:
		entered = false
		print("bruh")

func _on_child_exiting_tree(_node):
	ballv.text = "speed: 100"
