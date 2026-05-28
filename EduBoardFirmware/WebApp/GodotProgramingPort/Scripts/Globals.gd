extends Node

var ram = PackedByteArray()
var isRunning: bool
var pc = 0x5000
var isStopped: bool = false
var IsRamInit: bool = false
var isLoaded: bool = false
var wantCleared: bool = true
var spriteData = PackedByteArray()
var MoveID: int = 1
var Start: bool = false
var BlockArray: Array[String] = ["res://Blocks/move.tscn", "res://Blocks/start.tscn"]
