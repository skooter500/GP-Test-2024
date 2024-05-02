class_name  spiral_spawner 
extends Node2D

@export var radius:float=100
@export var count:int=10
@export var ele_scene:PackedScene

func spawn_godots():	
	var theta_inc = PI * 2.0 / float(count)
	for i in range(count):
		var x = sin(theta_inc * i) * radius
		var y = cos(theta_inc * i) * radius
		var p = Vector2(x, y)
		var ele = ele_scene.instantiate()
		ele.position = p
		add_child(ele)		

# Called when the node enters the scene tree for the first time.
func _ready():		
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	spawn_godots()
	pass # Replace with function body.


func _on_h_slider_value_changed(value):
	$"../CanvasLayer/Label2".text = str(value)
	pass # Replace with function body.
