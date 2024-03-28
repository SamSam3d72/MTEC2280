ArrayList<PVector> clicks = new ArrayList<PVector>();
ArrayList<Integer> colors = new ArrayList<Integer>();  // Store colors for each click
// This is a declaration of an ArrayList that holds a vector in our 2d space. 'PVector'
// can store 2 - 3 coordiantes(x,y, and optionally z). 

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
  
  // rectangle at the bottom
  fill(252, 215, 162);
  noStroke();
  rect(0, 400, width, 200);
  
  textSize(20);
  
  // Display the click coordinates with their respective colors
  for (int i = 0; i < clicks.size(); i++) {
    PVector click = clicks.get(i);
    int col = colors.get(i);
    fill(col);
    text("X: " + (int) click.x + ", Y: " + (int)click.y, click.x, click.y);
  }
}

void mousePressed() {
  // Add the mouse click position
  clicks.add(new PVector(mouseX, mouseY));
  
  // Add a random color for this click
  colors.add(color(random(255), random(255), random(255)));
}
