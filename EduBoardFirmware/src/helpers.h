#pragma once

#include <Arduino.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <bitset>



void editPixel(std::bitset<4096>& vram,x: int, y: int, value: int){
 int i =	y * SCREEN_WIDTH) + x;
	vram[i] = value;
}

void drawPicture(std::bitset<4096>& vram,x: int, y: int, std::bitset<8>& picture){
	///I am not going to lie I have no idea. I think the plan is to make it so
int i =	y * SCREEN_WIDTH) + x;

}