extends Node
class_name Upgrade

signal applied(cost)

export var display_name := "Upgrade name"
export(String, MULTILINE) var description := "Upgrade description"
export var cost := 100
export var cost_multiplier := 1.2
export var value := 100.0

var weapon: Weapon2D


func apply() -> void:
	_apply()
	cost *= cost_multiplier
	emit_signal("applied", cost)


func _apply() -> void:
	pass
