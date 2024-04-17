const int micPin = A0;
const int LED[] = {11, 10, 9, 6, 5, 3};
const int numLED = 6;

int micValue;

// Adjust the baseline closer to your typical quiet reading
const int baseline = 330;  // Adjusted to an approximate ambient noise level

int amplitude;
// Adjust max amplitude based on your maximum expected fluctuations from the baseline
const int max_amplitude = 200;  // Example adjustment, you might need to test and adjust this

void setup() {
  Serial.begin(9600);
  pinMode(micPin, INPUT);
  for (int i = 0; i < numLED; i++) {
    pinMode(LED[i], OUTPUT);
  }
}

void loop() {
  micValue = analogRead(micPin);
  amplitude = abs(micValue - baseline);  // Calculate the deviation from the baseline

  Serial.print("Mic Value: ");
  Serial.print(micValue);
  Serial.print(" | Amplitude: ");
  Serial.print(amplitude);

  // Map amplitude to number of LEDs, correctly limiting the range
  int numLights = map(amplitude, 0, max_amplitude, 0, numLED);
  numLights = min(numLights, numLED);  // Ensure we do not exceed LED count

  Serial.print(" | LEDs on: ");
  Serial.println(numLights);

  for (int i = 0; i < numLED; i++) {
    digitalWrite(LED[i], i < numLights ? HIGH : LOW);
  }

  delay(100);  // Short delay to stabilize readings
}
