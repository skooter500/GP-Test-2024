extends RigidBody2D



@onready var explosion=load("res://explosion.tscn")

func _on_body_entered(body):
	if body.name == "ground":
		var e = explosion.instantiate()
		get_tree().get_root().add_child(e)
		e.global_position = self.global_position
		e.emitting = true
		self.queue_free()

	pass # Replace with function body.
