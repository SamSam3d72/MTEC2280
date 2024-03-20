PImage wheel; 
PImage turboSk8; 
boolean imageSwitch = false;
boolean timerActive = false;
int switchTime; 
int switchDelay = 5000;

void setup() {
  size(500, 500);
  
}

void draw() {
  background(255); 

  wheel = loadImage("TurboSk8boardWheel.png"); //initializing image
  turboSk8 = loadImage("TurboSk8board.png"); 

  if (!imageSwitch) {  //conditional statement 
    image(wheel, 100, 100, 250, 250);
  } else {
    image(turboSk8, 150, 150, 200, 200);
    fill(0);
    textSize(32);
    text("Image Switched!", 100, 100); 
  }

  if (timerActive && millis() - switchTime >= switchDelay) { //
    imageSwitch = true; 
    timerActive = false;
  }
}

void mousePressed() {
  timerActive = true;
  switchTime = millis();
}
