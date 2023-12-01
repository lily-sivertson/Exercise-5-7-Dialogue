extends Node

func _unhandled_input(_event):
	if Input.is_action_just_pressed("menu"):
		get_tree().quit()

func shoot():
	var Player=get_node_or_null("/root/Game/Player/AnimationPlayer")
	if Player!=null:
		var tree=get_node_or_null("/root/Game/Player/AnimationTree")
		if tree!= null:
			tree.active=false
			Player.play("Shoot")
	var Zombie=get_node_or_null("/root/Game/Zombie")
	if Zombie!=null:
		Zombie.die()

	
