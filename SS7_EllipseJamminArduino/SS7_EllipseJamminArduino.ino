const int SENSOR = A0;

int val = 0;

void setup() 
{

  Serial.begin(115200);

}

void loop() 
{

  val = analogRead(SENSOR);
  val = val/4;

  delay(50);

  Serial.write(val);


}
