#include <Arduino.h>
#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <bitset>


#define SCREEN_WIDTH 128;
#define SCREEN_HEIGHT 32;


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


const int ScreenSCL = 23;
const int ScreenSDA = 24;
const int TotalPixels = 4096;

std::bitset<TotalPixels> VRAM;

Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, -1);

int myFunction(int, int);

void resetDisplay() {
    display.clearDisplay();
    display.setTextColor(WHITE);
    display.setTextSize(1);
    display.setCursor(0, 10);
    display.println("EDU BOARD");
    display.display();
}


void setup() {
  resetDisplay();
  delay(1);
  display.println("EDU BOARD");
  display.println("WELCOME");
}

void loop() {
  for(int i=0; i < TotalPixels; i++){
    int x = i % SCREEN_WIDTH;
    int y = i / SCREEN_WIDTH;
    if (VRAM[i] == 1) {
      display.drawPixel(x,y, WHITE);
    } else{
     display.drawPixel(x,y, BLACK);
    }
  }
  display.display();
}


