const int buttonPin = 2;
const int LED [] = {13,12,11,8,7,4};

void setup (){
  for (int i = 0; i < 6; i++)
  {
    pinMode (LED[i], OUTPUT);
  }
  pinMode (buttonPin, INPUT);
}

  void loop() {
  if (digitalRead(buttonPin) == HIGH) {
    // Setting LEDs to  off 
    for (int i = 0; i < 6; i++) {
      digitalWrite(LED[i], LOW);
    }
    
    int randomLED = random(0, 6); 
    digitalWrite(LED[randomLED], HIGH);

    delay(50); // to blink
  } else {
    for (int i = 0; i < 6; i++) {
      digitalWrite(LED[i], LOW);
    }
  }
}
