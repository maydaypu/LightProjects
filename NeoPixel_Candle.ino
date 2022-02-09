// Derived from NeoPixel Ring simple sketch (c) 2013 Shae Erisson

#include <Adafruit_NeoPixel.h>
#define PIN 5 // Arduino Pin In
#define NUMPIXELS 7 // Number of pixels

Adafruit_NeoPixel pixels(NUMPIXELS, PIN, NEO_GRBW + NEO_KHZ800);

// CANDLE COLOR
int R = 255;
int G = 55;
int B = 0;
int W = 50;
int delayTime = 500;
bool isBlue = false;
int change = 10; // for changing brightness

void setup() {
  pixels.begin(); // INITIALIZE NeoPixel strip object

  // set a static candle color
  for (int i = 0; i < NUMPIXELS; i++) {
    // pixels.Color() takes RGB values
    pixels.setPixelColor(i, pixels.Color(R, G, B, W));
  }
  pixels.show();   // Send the updated pixel colors to the hardware.
}

void loop() {

  // fluctuate the brightness
  R = R - change * 5.1;
  G = G - change * 1.1;
 // B = B / change;
  W = W - change;
  for (int i = random(0, 3); i < random(3, 7); i++) {
    pixels.setPixelColor(i, pixels.Color(R, G, B, W));
  }
  pixels.show();

  if (R <= 51 || R >= 255){
    change = -change;
  }

  delayTime = random(50, 150);
  delay(delayTime);

}
