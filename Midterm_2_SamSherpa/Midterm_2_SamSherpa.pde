ArrayList<PVector> clicks = new ArrayList<PVector>();
ArrayList<Integer> colors = new ArrayList<Integer>();  // Store colors for each click
// This is a declaration of an ArrayList that holds a vector in our 2d space. 'PVector'
// can store 2 - 3 coordiantes(x,y, and optionally z). 

boolean moving = false;

float ellipseX = random(50, 800);
float ellipseY = random(50, 800);
int rectX = 0, rectY = 300;  // Initial position for the rectangle

void setup() {
  fullScreen(P2D);
}

void draw() {
  // Draw the gradient background
  for (int y = 0; y < height; y++) {
    float inter = map(y, 10, height, 0, 1);
    int r = (int)lerp(255, 0, inter);
    int g = (int)lerp(255, 150, inter);
    int b = (int)lerp(255, 150, inter);
    
    stroke(r, g, b);
    line(0, y, width, y);
  }

  
  translate(rectX, rectY); //just trying this out
  strokeWeight(5);
  stroke(50);
  fill(200, 100, 100);
  rect(0, 0, 50, 50);

  if (moving && rectX <= width - 75) {
    rectX += 5;
  }

  // Reset translation
  resetMatrix();
  
  // Draw the ellipse
  noStroke();
  fill(100, 200, 100);  // Green color for the ellipse
  ellipse(ellipseX, ellipseY, 50, 50);

  // Rectangle at the bottom
  fill(252, 215, 162);
  rect(0, height / 2, width, height / 2);

  // Display the click coordinates
  for (int i = 0; i < clicks.size(); i++) {
    PVector click = clicks.get(i);
    int col = colors.get(i);
    fill(col);
    text("X: " + (int) click.x + ", Y: " + (int) click.y, click.x, click.y);
  }
}

void mousePressed() {
  clicks.add(new PVector(mouseX, mouseY));
  colors.add(color(random(255), random(255), random(255)));
}

void keyPressed() {
  if (key == ' ') {
    moving = true;
  }  
}

void keyReleased() {
  if (key == ' ') {
    moving = false;
  }
  if (key == 'a' || key == 'A') {
    rectX = 0;  // Reset the rectangle's X position
    rectY = 300;  // Reset the rectangle's Y position
  }
}
