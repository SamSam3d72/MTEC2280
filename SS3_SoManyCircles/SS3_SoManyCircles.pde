// Interactive Circle Grid
// Hover over the circles to change their color.


float circleX, circleY;

void setup() {
  size(500, 500);
  noStroke();
}

void draw() {
  background(220);

  for (int i = 0; i < width; i += 50) {
    for (int j = 0; j < height; j += 50) {
      circleX = i + 25 ;
      circleY = j + 25 ;

      // Check if the mouse is over the circle
      if (dist(mouseX, mouseY, circleX, circleY) < 25) {
        fill(255, 0, 0); // Change color to red if mouse is over the circle
      } else {
        fill(0, 0, 255); // Default color is blue
      }

      ellipse(circleX, circleY, 50, 50);

    }
  }
}
