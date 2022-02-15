// This sketch makes sunset

#include <Adafruit_NeoPixel.h>
#define PIN 5 // Arduino Pin In
#define NUMPIXELS 7 // Number of pixels

Adafruit_NeoPixel pixels(NUMPIXELS, PIN, NEO_GRBW + NEO_KHZ800);

int delayTime = 1000; // Time (in milliseconds) to pause between pixels

void setup() {
  pixels.begin(); // INITIALIZE NeoPixel strip object
  for(int i=0; i<NUMPIXELS; i++) { // For each pixel...
    // pixels.Color() takes RGB values
    pixels.setPixelColor(i, pixels.Color(10, 10, 200, 10));
  }
  pixels.show();   // Send the updated pixel colors to the hardware.
}

void loop() {
  pixels.clear();
  // step 1
  // all pixels blue
  for(int i=0; i<NUMPIXELS; i++) {
    pixels.setPixelColor(i, pixels.Color(10, 10, 200, 10));
  }
  pixels.show();
  delay(delayTime);

  // step 2
  // top pixels bluer
  for(int i=0; i<NUMPIXELS; i++) {
    pixels.setPixelColor(i, pixels.Color(0, 0, 225, 0));
  }
  // 1 bottom pixel orange
  pixels.setPixelColor(6, pixels.Color(255, 50, 0, 50));
  pixels.show();
  delay(delayTime);

  //step 3
  //top pixels dimmer
  for(int i=0; i<NUMPIXELS; i++) {
    pixels.setPixelColor(i, pixels.Color(10, 10, 255, 10));
  }
  // 3 bottom pixels orange
  pixels.setPixelColor(6, pixels.Color(255/2, 50/2, 0, 50/2));
  pixels.setPixelColor(5, pixels.Color(255/2, 50/2, 0, 50/2));
  pixels.setPixelColor(1, pixels.Color(255/2, 50/2, 0, 50/2));
  pixels.show();
  delay(delayTime);

  // step 4
  // 5 bottom pixels orange
  pixels.setPixelColor(6, pixels.Color(255, 40, 0, 50));
  pixels.setPixelColor(5, pixels.Color(255, 40, 0, 50));
  pixels.setPixelColor(1, pixels.Color(255, 40, 0, 50));
  pixels.setPixelColor(2, pixels.Color(200, 35, 0, 40));
  pixels.setPixelColor(4, pixels.Color(200, 35, 0, 40));
  pixels.show();
  delay(delayTime);

  // step 5
  // all pixels orange
  for(int i=0; i<NUMPIXELS; i++) {
    pixels.setPixelColor(i, pixels.Color(130, 20, 0, 40));
  }
  pixels.show();
  delay(delayTime);

  // step 6
  // all pixels orange, dimmer
  for(int i=0; i<NUMPIXELS; i++) {
    pixels.setPixelColor(i, pixels.Color(130/2, 20/2, 50, 40/2));
  }
  pixels.show();
  delay(delayTime);

}
