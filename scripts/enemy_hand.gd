extends AnimatableBody3D

@onready var mesh_instance = $Hand
var material = StandardMaterial3D.new()
var default_color = null
var color_set = [Color.RED, Color.BLUE, Color.GREEN,Color.YELLOW,Color.PURPLE]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	mesh_instance.set_surface_override_material(0, material)

func color_change(color_type):
	material.albedo_color = color_type
	mesh_instance.set_surface_override_material(0, material)
