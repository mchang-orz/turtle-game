extends Node3D

#placeholder for finger anim
var red = Color.RED
var blue = Color.BLUE
var green = Color.GREEN
var yellow = Color.YELLOW
var purple = Color.PURPLE

#signals
signal change
signal matching
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _input(event: InputEvent) -> void:
	#left hand controls
	if Input.is_action_pressed("pinky_left"):
		$PlayerHand.color_change(red)
	if Input.is_action_pressed("ring_finger_left"):
		$PlayerHand.color_change(blue)
	if Input.is_action_pressed("middle_finger_left"):
		$PlayerHand.color_change(green)
	if Input.is_action_pressed("index_finger_left"):
		$PlayerHand.color_change(yellow)
	if Input.is_action_pressed("thumb_left"):
		$PlayerHand.color_change(purple)
	
		##right hand controls
	#if Input.is_action_pressed("pinky_right"):
		#$PlayerHand2.color_change(red)
	#if Input.is_action_pressed("ring_finger_right"):
		#$PlayerHand2.color_change(blue)
	#if Input.is_action_pressed("middle_finger_right"):
		#$PlayerHand2.color_change(green)
	#if Input.is_action_pressed("index_finger_right"):
		#$PlayerHand2.color_change(yellow)
	#if Input.is_action_pressed("thumb_right"):
		#$PlayerHand2.color_change(purple)
