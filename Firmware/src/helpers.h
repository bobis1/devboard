#pragma once

#include <Arduino.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <bitset>



void editPixel(std::bitset<4096>& vram,int x, int y, int value){
    int i =	(y * SCREEN_WIDTH) + x;
    vram[i] = value;
}

void drawPicture(std::bitset<4096>& vram,int x, int y, std::bitset<8>& picture){
for(int i=0;i<8;i++){
    int index =	(y * SCREEN_WIDTH) + x;
    vram[i+ index] = picture[index];
}
}

void resetDisplay() {
    display.clearDisplay();
    display.setTextColor(WHITE);
    display.setTextSize(1);
    display.setCursor(0, 10);
    display.println("EDU BOARD");
    display.display();
}