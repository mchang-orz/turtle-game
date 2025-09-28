extends CharacterBody3D

#mouse camera movement from chaff games
@export var MouseSensitivity = 0.002
@onready var camera = $Camera3D

var CameraRotation = Vector2(0,0)

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	
	if event is InputEventMouseMotion:
		var MouseEvent = event.relative * MouseSensitivity
		CameraLook(MouseEvent)
		
func CameraLook(movement:Vector2):
	CameraRotation += movement
	CameraRotation.y = clamp(CameraRotation.y, -1.5, 1.2)
	
	transform.basis = Basis()
	camera.transform.basis = Basis()
	
	rotate_object_local(Vector3(0,1,0), -CameraRotation.x) #rotate y first
	camera.rotate_object_local(Vector3(1,0,0),-CameraRotation.y) #second rotate x
	
func _physics_process(delta: float) -> void:
	pass
