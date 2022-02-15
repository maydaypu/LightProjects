// This sketch fades the leds across the color spectrum

#include <Adafruit_NeoPixel.h>
#define PIN 5 // Arduino Pin In
#define NUMPIXELS 7 // Number of pixels

Adafruit_NeoPixel pixels(NUMPIXELS, PIN, NEO_GRBW + NEO_KHZ800);

#define DELAYVAL 50 // Time (in milliseconds) to pause between pixels

int R, G, B;

void setup() {
  pixels.begin(); // INITIALIZE NeoPixel strip object
  for (int i = 0; i < NUMPIXELS; i++) {
    pixels.setPixelColor(i, pixels.Color(0, 0, 0, 255));  // WHITE as reset signal
  }
  pixels.show();   // Send the updated pixel colors to the hardware.
  R = 255;
  G = 0;
  B = 0;
}

void loop() {

  if (B == 0 && R <= 255 && R > 0) { // fade red ~ yellow ~ green
    R = R - 1;
    G = G + 1;
  }
  if (R == 0 && G <= 255 && G > 0) { // fade green ~ cyan ~ blue
    G = G - 1;
    B = B + 1;
  }
  if (G == 0 && B <= 255 && B > 0) { // fade blue ~ magenta ~ red
    B = B - 1;
    R = R + 1;
  }
  R = constrain(R, 0, 255);
  G = constrain(G, 0, 255);
  B = constrain(B, 0, 255);

  // show a color made of RGB chips
  pixels.clear(); // Set all pixel colors to 'off'
  for (int i = 0; i < NUMPIXELS; i++) {
    pixels.setPixelColor(i, pixels.Color(R, G, B, 0));
  }
  pixels.show();
  delay(DELAYVAL);
}
