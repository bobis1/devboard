#include <Arduino.h>
#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>


#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 32 // OLED display height, in pixels

const int ScreenSCL = 23;
const int ScreenSDA = 24;

Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, -1);


int myFunction(int, int);

void setup() {
  resetDisplay();
  delay(1);
}

void loop() {
  
}




void resetDisplay() {
    display.clearDisplay();
    display.setTextColor(WHITE);
    display.setTextSize(1);
    display.setCursor(0, 10);
    display.println("EDU BOARD");
    display.display();
}
