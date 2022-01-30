/*
 * Fade a single channel LED.
 * The fade curve type can be changed by the pushbutton.
 * The fade speed can be changed by the potentiometer.
 * 
 * Fade type 1: simple linear fade.
 * Fade type 2: CIE1931 fade - Produces an LED fade that appears visually linear, using the CIE1931 perceived lightness formula. 
 * Derived from Tom Igoe's example https://github.com/tigoe/LightProjects/blob/main/FadeCurves/CIE1931Fade/CIE1931Fade.ino
 * References:
   - http://hyperphysics.phy-astr.gsu.edu/hbase/vision/cie.html
   - https://jared.geek.nz/2013/feb/linear-led-pwm
   - https://github.com/lawtalker/rotary_dimmer/wiki
*/

const int ledPin = 5;
const int buttonPin = 2;
const int potPin = A0;

// inputs
int buttonState = 0;
int lastButtonState = 0;
int potRead;

// LED parameters
int intensity = 0; // intensity value (0-255) to be calculated
int level = 0; // actual output level
int change = 1;
int delayTime = 10;
int fadeType = 0;
byte cie1931[256];    // pre-calculated PWM levels

// for debounce pushbutton
unsigned long lastDebounceTime = 0; // the last time the output pin was toggled
unsigned long debounceDelay = 0; // the debounce time; increase if the output flickers

void setup() {
  Serial.begin(9600);
  pinMode(ledPin, OUTPUT);
  pinMode(buttonPin, INPUT);
  pinMode(potPin, INPUT);
  analogWrite(ledPin, level);
  // pre-calculate the PWM levels from CIE1931 formulas:
  fillCIETable();
}

void loop() {
  potRead = analogRead(potPin); //0~1023
  // potentiameter changes fade speed by delay time
  delayTime = map(potRead, 0, 1023, 1, 30);
  
  intensity = constrain(intensity, 0, 255);

  // reverse fade direction when the intensity value reaches zero or full
  if (intensity == 255 || intensity == 0){
    change = -change;
  }
  //LED output intensity change over time
  intensity += change;

  if (fadeType == 0){
    level = intensity;
  }
  if (fadeType == 1){
    level = cie1931[intensity];
  }
  Serial.println(fadeType);
  
  analogWrite(ledPin, level);
//  Serial.println(level);
  delay(delayTime);

  checkButtonState();
  
}

void fillCIETable() {
  /*
    For CIE, the following formulas have  Y as luminance, and
    Yn is the luminance of a white reference (basically, max luminance).
    This assumes a perceived lightness value L* between 0 and 100,
    and  a luminance value Y of 0-1.0.
    if L* > 8:  Y = ((L* + 16) / 116)^3 * Yn
    if L* <= 8: Y = L* *903.3 * Yn
  */
  // set the range of values:
  float maxValue = 255;
  // scaling factor to convert from 0-100 to 0-maxValue:
  float scalingFactor = 100 / maxValue;
  // luminance value:
  float Y = 0.0;

  // iterate over the array and calculate the right value for it:
  for (int l = 0; l <= maxValue; l++) {
    // you need to scale L from a 0-255 range to a 0-100 range:
    float lScaled = float(l) * scalingFactor;
    if ( lScaled <= 8 ) {
      Y = (lScaled / 903.3);
    } else {
      float foo = (lScaled + 16) / 116.0;
      Y = pow(foo, 3);
    }
    // multiply to get 0-maxValue, and fill in the table:
    cie1931[l] = Y * maxValue;
  }
}

void checkButtonState(){
  // read the state of the pushbutton value into a local variable
  int reading = digitalRead(buttonPin);
  // check if you just pressed the button
  // and you've waited long enought since the last press to ignore any noise
  
  // if the switch change, due to noise or pressing
  if (reading != lastButtonState){
    // reset the debouncing timer
    lastDebounceTime = millis();
  }
  
  if ((millis() - lastDebounceTime) > debounceDelay){
    // check if whatever the reading is at is longer than the debounce delay
    // so take it as the current state
    
    // if the buttonState has changed
    if (reading != buttonState){
      buttonState = reading;
      
      //if button is pushed, change LED fade type
      if(buttonState == HIGH){
        if (fadeType == 0){
          fadeType = 1;
        } else {
          fadeType = 0;
        }
        Serial.println("button pressed");
      }
    }
  }
  
  // save the reading, next loop it'll be the lastButtonState
  lastButtonState = reading;
}
