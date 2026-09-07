#pragma once

#include <Arduino.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <bitset>



void editPixel(Vram: std::bitset,x: int, y: int, value: int){
 int i =	y * SCREEN_WIDTH) + x;
	Vram[i] = value;
}