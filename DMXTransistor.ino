/*
  DMX Transtistor

  Set the intensity parameter at full, fade the color parameters up and down one by one.
  
  Circuit: 
   - MAX485
   - Arduino Nano 33 IoT
     - Arduino Serial TX (pin 16) to MAX485 DI (pin 4)
     - Arduino Serial RX (pin 17) to MAX485 RO (pin 1)
     - Arduino A5 to MAX485 RE (pin 2)
     - Arduino A6 to MAX485 DE (pin 3)
     - Arduino Vcc and GND to MAX485 Vcc (pin 8) and GND (pin 5)
     - 120-ohm resistor between MAX485 A and B
   - DMX connector female
     - MAX485 A (pin 6) to DMX connector D+
     - MAX485 B (pin B) to DMX connector D-
     - DMX connector GND to the circuit
     
  created 5 July 2018
  by Sandeep Mistry

  modified March 30 2022
  by Josephine Wang
*/

#include <ArduinoRS485.h> // the ArduinoDMX library depends on ArduinoRS485
#include <ArduinoDMX.h>

const int universeSize = 16;
const int startAddr = 1; // the fixture's start address
const int DMXfootprint = 8; // the fixture's DMX footprint
const int intensParam = 8; // the fixture's intensity parameter

int parameterNum = 1;
int level = 0;
int fade = 1;
bool atFull = false; // record each parameter's status

void setup() {
  //Serial.begin(9600);
  //while (!Serial);

  // initialize the DMX library with the universe size
  if (!DMX.begin(universeSize)) {
    Serial.println("Failed to initialize DMX!");
    while (1); // wait for ever
  }
}

void loop() {
  // set intensity level to 255
  DMX.beginTransmission();
  DMX.write(startAddr + intensParam - 1, 255);
  DMX.endTransmission();

  // fade color parameters 0~255
  // when reach at full, change from fade up to fade down
  if (level >= 255){
    atFull = true;
    fade = -fade;
  }
  int currentAddr = startAddr + parameterNum - 1;
  level += fade;
  level = constrain(level, 0, 255);
  DMX.beginTransmission();
  DMX.write(currentAddr, level);
  DMX.endTransmission();
  
  // if this channel has been at full and faded back to 0, move to next channel
  if (atFull == true && level <= 0){
    parameterNum += 1;
    atFull = false;
    fade = -fade;
  }
  //Serial.println(level);
  
  delay(10);

  // when finish fading the last parameter
  if (parameterNum == DMXfootprint){
    parameterNum = 1;
  }
}
