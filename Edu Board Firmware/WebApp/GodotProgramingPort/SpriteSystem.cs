using Godot;
using System;
using System.IO.Ports;




public partial class SpriteSystem : Node
{
	SerialPort serialPort;
	// Called when the node enters the scene tree for the first time.
	port = new SerialPort(portName, (Int32)baudRate, Parity.None, 8, StopBits.One);

	public override void _Ready()
	{
		
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
	}
}
