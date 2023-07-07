extends ColorRect

@export var colours:PackedColorArray


var _frame := 0
var _index := 0


func _process(_delta: float) -> void:
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		global_position = get_global_mouse_position()

	if colours.size() > 0:
		if _frame % 5 == 0:
			_index = _index % colours.size()
			color = colours[_index]
			_index += 1
		else:
			color = Color.BLACK

		_frame += 1
