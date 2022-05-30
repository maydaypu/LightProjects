const int LED1 = 8;
const int LED2 = 7;
const int LED3 = 6;
const int LED4 = 5;
int delayTime = 10;
int level = 0;
int fade = 1;
int mode = 1;
bool wasFull = false;

void setup() {
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
}

void loop() {
  if (mode == 1){
    analogWrite(LED1, 200);
    analogWrite(LED2, 0);
    analogWrite(LED3, 0);
    analogWrite(LED4, 0);
  } else if (mode == 2){
    analogWrite(LED1, 200);
    analogWrite(LED2, level);
    analogWrite(LED3, 0);
    analogWrite(LED4, 0);
  } else if (mode == 3){
    analogWrite(LED1, 200);
    analogWrite(LED2, level/2);
    analogWrite(LED3, level/2);
    analogWrite(LED4, 0);
  } else if (mode == 4){
    analogWrite(LED1, 200);
    analogWrite(LED2, level/3);
    analogWrite(LED3, level/3);
    analogWrite(LED4, level/3);
  } else if (mode == 5){
    analogWrite(LED1, 200);
    analogWrite(LED2, level/4);
    analogWrite(LED3, level/4);
    analogWrite(LED4, level/4);
  }
  
  level += fade;
  level = constrain(level, 0, 255);

  if (level >= 200){
    fade = -1;
    wasFull = true;
  }
  if (level <= 0 && wasFull == true){
    fade = 1;
    mode ++;
    wasFull = false;
  }
  if (mode >= 6){
    mode = 1;
  }
  
  delay(delayTime);
}
