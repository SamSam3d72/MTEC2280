int rectSize = 50;
float rectX, rectY;

void setup() {
  size(500, 500);
  rectX = width/2;
  rectY = height/2;
}

void draw() {
  background(220);

  rect(rectX, rectY, rectSize, rectSize);
  
  if (mousePressed) {
    rectX = random(width - rectSize);
    rectY = random(height - rectSize);
  } else if (mouseX > width/2 && mouseY > height/2) {
    fill(0, 255, 0);
  } else {
    fill(0, 0, 255);
  }
}
