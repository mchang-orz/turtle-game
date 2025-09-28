extends AnimatableBody3D

@onready var mesh_instance = $Hand

var material = StandardMaterial3D.new()
var default_color = Color.WHITE

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	mesh_instance.set_surface_override_material(0, material)
	
func _process(delta: float) -> void:
	#while no more input to change material color, change cube color back to default material
	if Input.is_anything_pressed() == false:
		color_change(default_color)
		
func color_change(color_type):
	material.albedo_color = color_type
	mesh_instance.set_surface_override_material(0, material)


	
