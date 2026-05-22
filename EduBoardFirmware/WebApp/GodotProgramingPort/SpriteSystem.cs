using Godot;
using System;
using System.IO.Ports;



public partial class SpriteSystem : Node
{

	SerialPort serialPort;

	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		// Replace with whatever the actual port ends up showing up as.
		serialPort.PortName = "COM3";
		serialPort.BaudRate = 9600;
		serialPort.Open();
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
		
	}


}
