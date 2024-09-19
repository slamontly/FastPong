extends Label

#@onready var global_vars = get_node("/root/Global")

var score = 0

func _process(_delta):
	#self.text = str(global_vars.Score1)
	self.text = str(score)
