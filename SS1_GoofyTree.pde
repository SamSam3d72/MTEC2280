// Goofy Tree by Samden Sherpa

//SS1_GoofyTree

//A canvas size of 1080x720
//At least 3 different types of primitives
//variation in stroke weight and fill color
//a title for the drawing

size(1080,720);
background(200,100,100);

stroke(20);
strokeWeight(5);
fill(200,100,200);
ellipse(400,300,200,400);

stroke(5);
strokeWeight(20);
fill(200,200,200);
quad(700, 200, 900, 200, 600, 600, 100, 600);

stroke(50);
strokeWeight(25);
fill(100,200,100);
triangle(760,20,700,260,800,260);
