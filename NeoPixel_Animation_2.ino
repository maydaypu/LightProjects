// This sketch plays with complementary colors

#include <Adafruit_NeoPixel.h>
#define PIN 5 // Arduino Pin In
#define NUMPIXELS 7 // Number of pixels

Adafruit_NeoPixel pixels(NUMPIXELS, PIN, NEO_GRBW + NEO_KHZ800);

int delayTime = 1000; // Time (in milliseconds) to pause between pixels
float change = 0.8; // delayTime change every loop
int R, G, B;

void setup() {
  Serial.begin(9600);
  pixels.begin(); // INITIALIZE NeoPixel strip object
  for (int i = 0; i < NUMPIXELS; i++) {
    pixels.setPixelColor(i, pixels.Color(0, 0, 0, 255));  // WHITE as reset signal
  }
  pixels.show();   // Send the updated pixel colors to the hardware.
  R = 50;
  G = 255;
  B = 50;
}

void loop() {

  // show a color made of RGB chips
  pixels.clear(); // Set all pixel colors to 'off'
  for (int i = 0; i < NUMPIXELS; i++) {
    pixels.setPixelColor(i, pixels.Color(R, G, B, 0));
  }
  pixels.show();
  delay(delayTime*2);

  // show the complementary color of that color
  pixels.clear();
  for (int i = 0; i < NUMPIXELS; i++) {
    pixels.setPixelColor(i, pixels.Color(255 - R, 255 - G, 255 - B, 0));
  }
  pixels.show();   // Send the updated pixel colors to the hardware.
  delay(delayTime);

  delayTime = delayTime * change;
  if (delayTime < 5 || delayTime >= 1000){
    change = 1/change;
  }
  Serial.println(delayTime);
  
}
