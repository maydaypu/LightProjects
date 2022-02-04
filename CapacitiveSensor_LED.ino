#include <CapacitiveSensor.h>

CapacitiveSensor   cs_4_2 = CapacitiveSensor(4,2);        // 10M resistor between pins 4 & 2, pin 2 is sensor pin, add a wire and or foil if desired
const int LEDPin1 = 0;
const int LEDPin2 = 1;
int level1 = 0;
int level2 = 0;
int change1 = 1;
int change2 = 2;

void setup()                    
{
   cs_4_2.set_CS_AutocaL_Millis(0xFFFFFFFF);     // turn off autocalibrate on channel 1 - just as an example
   Serial.begin(9600);
   pinMode(LEDPin1, OUTPUT);
   pinMode(LEDPin2, OUTPUT);
}

void loop()                    
{
    long capReading =  cs_4_2.capacitiveSensor(30);
    Serial.println(capReading);                  // print sensor output 1
    analogWrite(LEDPin1, level1);
    analogWrite(LEDPin2, level2);

    // if capasitive sensors receive input higher than X, LED fades
    if (capReading > 100){
      level1 += change1;
      level2 += change2;
      analogWrite(LEDPin1, level1);
      analogWrite(LEDPin2, level2);
    }

    if (level1 >= 255){
      level1 = 0;
    }
    if (level2 >= 255){
      level2 = 0;
    }
    
    delay(10);                             // arbitrary delay to limit data to serial port 
}
